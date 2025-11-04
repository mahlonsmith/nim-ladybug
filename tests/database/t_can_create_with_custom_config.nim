# vim: set et sta sw=4 ts=4 :

import
    std/files,
    std/paths

import lbug

const DATABASE_PATH = Path( "tmp/testdb" )
DATABASE_PATH.removeFile()

var db = newLbugDatabase( $DATABASE_PATH, lbugConfig( auto_checkpoint=false ) )
assert db.path == "tmp/testdb"
assert db.config.auto_checkpoint == false

DATABASE_PATH.removeFile()

