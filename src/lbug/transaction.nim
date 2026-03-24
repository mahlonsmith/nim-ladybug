# vim: set et sta sw=4 ts=4 :

proc `=destroy`*( txn: LbugTransactionObj ) =
    ## Graceful cleanup for out of scope transactions.
    if txn.active:
        try:
            when defined( debug ): echo &"Rolling back abandoned transaction on connection"
            discard txn.conn.query( "ROLLBACK" )
        except:
            discard


func beginTransaction*( conn: LbugConnection, readOnly = false ): LbugTransaction =
    ## Create a new transaction.
    result          = LbugTransaction()
    result.conn     = conn
    result.readOnly = readOnly

    try:
        let stmt = if readOnly: "BEGIN TRANSACTION READ ONLY" else: "BEGIN TRANSACTION"
        discard conn.query( stmt )
    except LbugQueryError as err:
        raise newException( LbugTransactionError, err.msg )

    result.active = true


func commit*( txn: LbugTransaction ) =
    ## Finish an open transaction.
    if txn.active:
        discard txn.conn.query( "COMMIT" )
        txn.active = false
    else:
        raise newException( LbugTransactionError, "Transaction already committed or rolled back." )


func rollback*( txn: LbugTransaction ) =
    ## Cancel an open transaction.
    if txn.active:
        discard txn.conn.query( "ROLLBACK" )
        txn.active = false
    else:
        raise newException( LbugTransactionError, "Transaction already committed or rolled back." )


func isActive*( txn: LbugTransaction ): bool =
    ## Returns true if we're in an open transaction.
    result = txn.active


template withTransaction*(
    conn: LbugConnection,
    readOnly = false, body: untyped
): untyped =
    ## Provide an automatic transaction block that rolls back on
    ## any exception, and otherwise commits when leaving the block.
    block:
        let txn = conn.beginTransaction( readOnly )
        try:
            body
        except:
            txn.rollback()
            raise
        finally:
            if txn.isActive: txn.commit()


