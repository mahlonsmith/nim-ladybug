# vim: set et sta sw=4 ts=4 :

# NOTE: Constructor in queries.nim, #getNext

proc `=destroy`*( tpl: LbugFlatTupleObj ) =
    ## Graceful cleanup for out of scope tuples.
    if tpl.valid:
        when defined( debug ): echo &"Destroying tuple: {tpl}"
        lbug_flat_tuple_destroy( addr tpl.handle )


func `$`*( tpl: LbugFlatTuple ): string =
    ## Stringify a tuple.
    result = $lbug_flat_tuple_to_string( addr tpl.handle )
    result.removeSuffix( "\n" )


func `[]`*( tpl: LbugFlatTuple, idx: int|uint64 ): LbugValue =
    ## Returns a LbugValue at the given *idx*.

    result = new LbugValue

    if lbug_flat_tuple_get_value( addr tpl.handle, idx.uint64, addr result.handle ) == LbugSuccess:
        result.valid = true
        result.getType()
    else:
        raise newException( LbugIndexError,
            &"Unable to fetch tuple value at idx {idx}. ({tpl.num_columns} column(s).)" )


