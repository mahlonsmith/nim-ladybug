# vim: set et sta sw=4 ts=4 :

import
  std/files,
  std/paths,
  std/re

import lbug

const NOT_A_DATABASE_PATH = Path( "tmp/not-a-db" )

NOT_A_DATABASE_PATH.removeFile()
var fh = NOT_A_DATABASE_PATH.string.open( fmWrite )
fh.write( "Hi." )
fh.close

try:
    discard newLbugDatabase( $NOT_A_DATABASE_PATH )
except LbugException as err:
    assert err.msg.contains( re"""Unable to open database: "tmp/not-a-db" Doesn't appear to be a LadybugDB file""" )

NOT_A_DATABASE_PATH.removeFile()

