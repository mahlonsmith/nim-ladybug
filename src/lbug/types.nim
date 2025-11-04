# vim: set et sta sw=4 ts=4 :

type
    LbugDBType* = enum
        disk, memory

    LbugDatabaseObj = object
        handle:  lbug_database
        path*:   string
        kind*:   LbugDBType
        config*: lbug_system_config
        valid = false
    LbugDatabase* = ref LbugDatabaseObj

    LbugConnectionObj = object
        handle: lbug_connection
        valid = false
    LbugConnection* = ref LbugConnectionObj

    LbugQueryResultObj = object
        handle:          lbug_query_result
        num_columns*:    uint64 = 0
        num_tuples*:     uint64 = 0
        compile_time*:   cdouble = 0
        execution_time*: cdouble = 0
        column_types*:   seq[ lbug_data_type_id ]
        column_names*:   seq[ string ]
        sets*:           seq[ LbugQueryResult ]
        valid = false
    LbugQueryResult* = ref LbugQueryResultObj

    LbugPreparedStatementObj = object
        handle: lbug_prepared_statement
        conn:   LbugConnection
        valid = false
    LbugPreparedStatement* = ref LbugPreparedStatementObj

    LbugFlatTupleObj = object
        handle:      lbug_flat_tuple
        num_columns: uint64 = 0
        valid = false
    LbugFlatTuple* = ref LbugFlatTupleObj

    LbugValueObj = object
        handle: lbug_value
        valid = false
        kind*: lbug_data_type_id
    LbugValue* = ref LbugValueObj

    LbugStructValueObj = object
        value: LbugValue
        len*: uint64
        keys*: seq[ string ]
    LbugStructValue* = ref LbugStructValueObj

    LbugException*      = object of CatchableError
    LbugQueryError*     = object of LbugException
    LbugIndexError*     = object of LbugException
    LbugIterationError* = object of LbugException
    LbugTypeError*      = object of LbugException

