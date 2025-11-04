# vim: set et sta sw=4 ts=4 :

proc `=destroy`*( conn: LbugConnectionObj ) =
    ## Graceful cleanup for open connection handles.
    if conn.valid:
        when defined( debug ): echo &"Destroying connection: {conn}"
        lbug_connection_destroy( addr conn.handle )


func connect*( db: LbugDatabase ): LbugConnection =
    ## Connect to a database.
    result = new LbugConnection
    if lbug_connection_init( addr db.handle, addr result.handle ) == LbugSuccess:
        result.valid = true
    else:
        raise newException( LbugException, "Unable to connect to the database." )


func queryTimeout*( conn: LbugConnection, timeout: uint64 ) =
    ## Set a maximum time limit (in milliseconds) for query runtime.
    discard lbug_connection_set_query_timeout( addr conn.handle, timeout )


func queryInterrupt*( conn: LbugConnection ) =
    ## Cancel any running queries.
    lbug_connection_interrupt( addr conn.handle )

