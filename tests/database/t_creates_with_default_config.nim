# vim: set et sta sw=4 ts=4 :

import
    std/files,
    std/paths

import lbug

const DATABASE_PATH = Path( "tmp/testdb" )

DATABASE_PATH.removeFile()
var db = newLbugDatabase( $DATABASE_PATH )

assert db.path == $DATABASE_PATH
assert db.kind == disk
assert db.config == lbugConfig()
assert db.config.read_only == false

DATABASE_PATH.removeFile()

