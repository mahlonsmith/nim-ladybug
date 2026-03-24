# vim: set et sta sw=4 ts=4 :

import
    std/re
import lbug

let db = newLbugDatabase()
let conn = db.connect


let txn = conn.beginTransaction()
txn.commit()

try:
    txn.commit()
except LbugTransactionError as err:
    assert err.msg.contains( re"""Transaction already committed or rolled back""" )

