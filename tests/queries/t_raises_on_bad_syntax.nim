# vim: set et sta sw=4 ts=4 :

import
    std/re
import lbug

let db = newLbugDatabase()
let conn = db.connect

try:
    discard conn.query( "NOPE NOPE NOPE" )
except LbugQueryError as err:
    assert err.msg.contains( re"""Parser exception: extraneous input 'NOPE'""" )

