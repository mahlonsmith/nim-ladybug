# vim: set et sta sw=4 ts=4 :

import
    std/re
import lbug

let db = newLbugDatabase()
let conn = db.connect


try:
    let txn  = conn.beginTransaction( readOnly = true )
    let txn2 = conn.beginTransaction( readOnly = true )
except LbugTransactionError as err:
    assert err.msg.contains( re"""Connection already has an active transaction.""" )

