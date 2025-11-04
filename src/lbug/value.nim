# vim: set et sta sw=4 ts=4 :

# NOTE: Constructor in tuples.nim, #[]

proc `=destroy`*( value: LbugValueObj ) =
    ## Graceful cleanup for out of scope values.
    if value.valid:
        when defined( debug ): echo &"Destroying value: {value}"
        lbug_value_destroy( addr value.handle )


func getType( value: LbugValue ) =
    ## Find and set the native Lbug type of this value.
    var logical_type: lbug_logical_type
    lbug_value_get_data_type( addr value.handle, addr logical_type )
    value.kind = lbug_data_type_get_id( addr logical_type )
    lbug_data_type_destroy( addr logical_type )


template checkType( kind: lbug_data_type_id, valid_types: set ) =
    ## Raises a LbugTypeError if the type conversion is incompatible.
    if kind notin valid_types:
        let msg = "Mismatched types: " & $kind & " != " & $valid_types
        raise newException( LbugTypeError, msg )


func `$`*( value: LbugValue ): string =
    ## Stringify a value.
    result = $lbug_value_to_string( addr value.handle )


func toBool*( value: LbugValue ): bool =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_BOOL} )
    assert( lbug_value_get_bool( addr value.handle, addr result ) == LbugSuccess )


func toInt8*( value: LbugValue ): int8 =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_INT8} )
    assert( lbug_value_get_int8( addr value.handle, addr result ) == LbugSuccess )


func toInt16*( value: LbugValue ): int16 =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_INT16} )
    assert( lbug_value_get_int16( addr value.handle, addr result ) == LbugSuccess )


func toInt32*( value: LbugValue ): int32 =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_INT32} )
    assert( lbug_value_get_int32( addr value.handle, addr result ) == LbugSuccess )


func toInt64*( value: LbugValue ): int64 =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_INT64} )
    assert( lbug_value_get_int64( addr value.handle, addr result ) == LbugSuccess )


func toUint8*( value: LbugValue ): uint8 =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_UINT8} )
    assert( lbug_value_get_uint8( addr value.handle, addr result ) == LbugSuccess )


func toUint16*( value: LbugValue ): uint16 =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_UINT16} )
    assert( lbug_value_get_uint16( addr value.handle, addr result ) == LbugSuccess )


func toUint32*( value: LbugValue ): uint32 =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_UINT32} )
    assert( lbug_value_get_uint32( addr value.handle, addr result ) == LbugSuccess )


func toUint64*( value: LbugValue ): uint64 =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_UINT64} )
    assert( lbug_value_get_uint64( addr value.handle, addr result ) == LbugSuccess )


func toDouble*( value: LbugValue ): float =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_DOUBLE} )
    assert( lbug_value_get_double( addr value.handle, addr result ) == LbugSuccess )


func toFloat*( value: LbugValue ): float =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_FLOAT} )
    var rv: cfloat
    assert( lbug_value_get_float( addr value.handle, addr rv ) == LbugSuccess )
    result = rv


func toTimestamp*( value: LbugValue ): int =
    ## Conversion from Lbug type to Nim.
    checkType( value.kind, {LBUG_TIMESTAMP} )
    var rv: lbug_timestamp_t
    assert( lbug_value_get_timestamp( addr value.handle, addr rv ) == LbugSuccess )
    result = rv.value


func toList*( value: LbugValue ): seq[ LbugValue ] =
    ## Return a sequence from LBUG_LIST values.
    checkType( value.kind, {LBUG_LIST} )
    result = @[]
    var size: uint64
    assert( lbug_value_get_list_size( addr value.handle, addr size ) == LbugSuccess )
    if size == 0: return

    for i in ( 0 .. size-1 ):
        var kval = new LbugValue
        assert(
            lbug_value_get_list_element(
                addr value.handle, i.uint64, addr kval.handle
            ) == LbugSuccess )
        kval.getType()
        result.add( kval )

const toSeq* = toList


func toBlob*( value: LbugValue ): seq[ byte ] =
    ## Conversion from Lbug type to Nim - returns a BLOB as a sequence of bytes.
    checkType( value.kind, {LBUG_BLOB} )

    result = @[]
    var data: ptr byte
    assert( lbug_value_get_blob( addr value.handle, addr data ) == LbugSuccess )

    for idx in 0 .. BLOB_MAXSIZE:
        var byte = cast[ptr byte](cast[uint](data) + idx.uint)[]
        if byte == 0: break
        result.add( byte )

    lbug_destroy_blob( data )


func toStruct*( value: LbugValue ): LbugStructValue =
    ## Create a convenience class for struct-like LbugValues.
    checkType( value.kind, {
        LBUG_STRUCT,
        LBUG_NODE,
        LBUG_REL,
        LBUG_RECURSIVE_REL,
        LBUG_UNION
    })
    result = new LbugStructValue
    result.value = value

    discard lbug_value_get_struct_num_fields( addr value.handle, addr result.len )
    if result.len == 0: return

    # Build keys
    for idx in ( 0 .. result.len - 1 ):
        var keyname: cstring
        assert(
            lbug_value_get_struct_field_name(
                addr value.handle, idx.uint64, addr keyname
            ) == LbugSuccess )
        result.keys.add( $keyname )

const toNode* = toStruct
const toRel*  = toStruct


func `[]`*( struct: LbugStructValue, key: string ): LbugValue =
    ## Return a LbugValue for the struct *key*.
    var idx: uint64
    var found = false
    for i in ( 0 .. struct.len-1 ):
        if struct.keys[i] == key:
            found = true
            idx = i
            break
    if not found:
        raise newException( LbugIndexError,
            &"""No such struct key "{key}".""" )

    result = new LbugValue
    assert(
        lbug_value_get_struct_field_value(
            addr struct.value.handle, idx.uint64, addr result.handle
        ) == LbugSuccess )
    result.getType()


func `$`*( struct: LbugStructValue ): string =
    ## Stringify a struct value.
    result = $lbug_value_to_string( addr struct.value.handle )


