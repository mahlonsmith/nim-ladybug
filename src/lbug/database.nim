# vim: set et sta sw=4 ts=4 :

proc `=destroy`*( db: LbugDatabaseObj ) =
    ## Graceful cleanup for an open DB handle when it goes out of scope.
    if db.valid:
        when defined( debug ): echo &"Destroying database: {db}"
        lbug_database_destroy( addr db.handle )


proc validateDatabase( db: LbugDatabase ): void =
    ## Perform basic validity checks against an existing on disk database
    ## for better error messaging.

    if not Path( db.path ).fileExists: return

    var buf = newSeq[char]( 5 )
    let f = open( db.path )
    discard f.readChars( buf )
    f.close

    let magic = buf[0..3].join
    let storage_version = buf[4].uint

    if magic != "LBUG":
        raise newException( LbugException, "Unable to open database: " &
            &""""{db.path}" Doesn't appear to be a LadybugDB file.""" )

    if storageVersion != lbugGetStorageVersion():
        raise newException( LbugException, "Unable to open database: " &
            &" mismatched storage versions - file is {storageVersion}, expected {lbugGetStorageVersion()}." )


proc newlbugDatabase*( path="", config=lbugConfig() ): LbugDatabase =
    ## Create a new Lbug database handle.  Creates an in-memory
    ## database by default, but writes to disk if a +path+ is supplied.

    result        = new LbugDatabase
    result.config = config

    if path != "" and path != ":memory:":
        result.path = path
        result.kind = disk
    else:
        result.path = "(in-memory)"
        result.kind = memory

    result.handle = lbug_database()

    if result.kind == disk:
        result.validateDatabase()

    if lbug_database_init( path, config, addr result.handle ) == LbugSuccess:
        result.valid = true
    else:
        raise newException( LbugException, "Unable to open database." )

