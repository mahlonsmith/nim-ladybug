# vim: set et sta sw=4 ts=4 :

proc `=destroy`*( query: LbugQueryResultObj ) =
    ## Graceful cleanup for out of scope query objects.
    if query.valid:
        when defined( debug ): echo &"Destroying query: {query}"
        lbug_query_result_destroy( addr query.handle )


# Forward declarations.
func hasNextSet( query: LbugQueryResult ): bool
func getNextSet( query: LbugQueryResult ): LbugQueryResult


func getQueryMetadata( query: LbugQueryResult, getAllQueryResults=false ) =
    ## Find and retain additional data for the query.
    query.num_columns = lbug_query_result_get_num_columns( addr query.handle )
    query.num_tuples  = lbug_query_result_get_num_tuples( addr query.handle )

    # Summary information.
    var summary: lbug_query_summary
    discard lbug_query_result_get_query_summary( addr query.handle, addr summary )
    query.compile_time   = lbug_query_summary_get_compiling_time( addr summary )
    query.execution_time = lbug_query_summary_get_execution_time( addr summary )
    lbug_query_summary_destroy( addr summary )

    # Pull any additional query results.
    query.sets = @[]
    if getAllQueryResults:
        while query.hasNextSet:
            query.sets.add( query.getNextSet )

    # Column information.
    query.column_types = @[]
    query.column_names = @[]
    if query.num_columns == 0: return
    for idx in ( 0 .. query.num_columns-1 ):

        # types
        #
        var logical_type: lbug_logical_type
        discard lbug_query_result_get_column_data_type(
            addr query.handle,
            idx,
            addr logical_type
        )
        query.column_types.add( lbug_data_type_get_id( addr logical_type ))
        lbug_data_type_destroy( addr logical_type )

        # names
        #
        var name: cstring
        discard lbug_query_result_get_column_name(
            addr query.handle,
            idx,
            addr name
        )
        query.column_names.add( $name )
        lbug_destroy_string( name )


func hasNextSet( query: LbugQueryResult ): bool =
    ## Returns +true+ if there are more result sets to be consumed.
    result = lbug_query_result_has_next_query_result( addr query.handle )


func getNextSet( query: LbugQueryResult ): LbugQueryResult =
    ## Consume and return the next query set result, or raise a LbugIterationError
    ## if at the end of sets.
    result = new LbugQueryResult
    if lbug_query_result_get_next_query_result( addr query.handle, addr result.handle ) == LbugSuccess:
        result.valid = true
        result.getQueryMetadata()
    else:
        raise newException( LbugIterationError, &"Query iteration past end of set." )


func query*( conn: LbugConnection, query: string ): LbugQueryResult =
    ## Perform a database +query+ and return the result.
    result = new LbugQueryResult

    if lbug_connection_query( addr conn.handle, query, addr result.handle ) == LbugSuccess:
        result.valid = true
        result.getQueryMetadata( getAllQueryResults=true )
    else:
        var err = lbug_query_result_get_error_message( addr result.handle )
        raise newException( LbugQueryError, &"Error running query: {err}" )


proc `=destroy`*( prepared: LbugPreparedStatementObj ) =
    ## Graceful cleanup for out of scope prepared objects.
    if prepared.valid:
        when defined( debug ): echo &"Destroying prepared statement: {prepared}"
        lbug_prepared_statement_destroy( addr prepared.handle )


func prepare*( conn: LbugConnection, query: string ): LbugPreparedStatement =
    ## Return a prepared statement that can avoid planning for repeat calls,
    ## with optional variable binding via #execute.
    result = new LbugPreparedStatement
    if lbug_connection_prepare( addr conn.handle, query, addr result.handle ) == LbugSuccess:
        result.conn  = conn
        result.valid = true
    else:
        var err = lbug_prepared_statement_get_error_message( addr result.handle )
        raise newException( LbugQueryError, &"Error preparing statement: {err}" )


func bindValue[T](
    stmtHandle: lbug_prepared_statement,
    key: cstring,
    val: T
) =
    ## Bind a key/value to a prepared statement handle.
    when typeOf( val ) is bool:
        assert( lbug_prepared_statement_bind_bool( addr stmtHandle, key, val ) == LbugSuccess )
    elif typeOf( val ) is int8:
        assert( lbug_prepared_statement_bind_int8( addr stmtHandle, key, val ) == LbugSuccess )
    elif typeOf( val ) is int16:
        assert( lbug_prepared_statement_bind_int16( addr stmtHandle, key, val ) == LbugSuccess )
    elif typeOf( val ) is int64:
        assert( lbug_prepared_statement_bind_int64( addr stmtHandle, key, val ) == LbugSuccess )
    elif typeOf( val ) is int or typeOf( val ) is int32:
        assert( lbug_prepared_statement_bind_int32( addr stmtHandle, key, val.int32 ) == LbugSuccess )
    elif typeOf( val ) is uint8:
        assert( lbug_prepared_statement_bind_uint8( addr stmtHandle, key, val ) == LbugSuccess )
    elif typeOf( val ) is uint16:
        assert( lbug_prepared_statement_bind_uint16( addr stmtHandle, key, val ) == LbugSuccess )
    elif typeOf( val ) is uint64:
        assert( lbug_prepared_statement_bind_uint64( addr stmtHandle, key, val ) == LbugSuccess )
    elif typeOf( val ) is uint or typeOf( val ) is uint32:
        assert( lbug_prepared_statement_bind_uint32( addr stmtHandle, key, val.uint32 ) == LbugSuccess )
    elif typeOf( val ) is float:
        assert( lbug_prepared_statement_bind_double( addr stmtHandle, key, val ) == LbugSuccess )
    elif typeOf( val ) is string:
        # Fallback to string.  For custom types, just cast in the cypher query.
        assert( lbug_prepared_statement_bind_string( addr stmtHandle, key, val.cstring ) == LbugSuccess )
    else:
        raise newException( LbugTypeError, &"""Unsupported type {$typeOf(val)} for prepared statement.""" )


proc execute*(
    prepared: LbugPreparedStatement,
    params: tuple = ()
): LbugQueryResult =
    ## Bind variables in *params* to the statement, and return
    ## a LbugQueryResult.

    result = new LbugQueryResult

    for key, val in params.fieldPairs:
        prepared.handle.bindValue( key, val )

    if lbug_connection_execute(
        addr prepared.conn.handle,
        addr prepared.handle,
        addr result.handle
    ) == LbugSuccess:
        result.valid = false
        result.getQueryMetadata()
    else:
        var err = lbug_query_result_get_error_message( addr result.handle )
        raise newException( LbugQueryError, &"Error executing prepared statement: {err}" )


func `$`*( query: LbugQueryResult ): string =
    ## Return the entire result set as a string.
    result = $lbug_query_result_to_string( addr query.handle )


func hasNext*( query: LbugQueryResult ): bool =
    ## Returns +true+ if there are more tuples to be consumed.
    result = lbug_query_result_has_next( addr query.handle )


func getNext*( query: LbugQueryResult ): LbugFlatTuple =
    ## Consume and return the next tuple result, or raise a LbugIterationError
    ## if at the end of the result tuples.
    result = new LbugFlatTuple
    if lbug_query_result_get_next( addr query.handle, addr result.handle ) == LbugSuccess:
        result.valid = true
        result.num_columns = query.num_columns
    else:
        raise newException( LbugIterationError, &"Query iteration past end of tuples." )


func rewind*( query: LbugQueryResult ) =
    ## Reset query iteration back to the beginning.
    lbug_query_result_reset_iterator( addr query.handle )


iterator items*( query: LbugQueryResult ): LbugFlatTuple =
    ## Iterate available tuples, yielding to the block.
    while query.hasNext:
        yield query.getNext
    query.rewind

