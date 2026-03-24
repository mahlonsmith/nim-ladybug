# vim: set et sta sw=4 ts=4 :

import
    std/re
import lbug

let db = newLbugDatabase()
let conn = db.connect

let txn = conn.beginTransaction( readOnly = true )
assert txn.isActive == true
assert txn.conn == conn

try:
    discard conn.query("CREATE NODE TABLE Test (id SERIAL, thing STRING, PRIMARY KEY(id))")
except LbugQueryError as err:
    assert err.msg.contains( re"""Can not execute a write query""" )

