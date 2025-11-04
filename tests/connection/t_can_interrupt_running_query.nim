# vim: set et sta sw=4 ts=4 :

import lbug


let db = newLbugDatabase()
let conn = db.connect

# FIXME: This test should really perform some
# long running query in a thread, and cancel
# it from elsewhere.
conn.queryInterrupt()

