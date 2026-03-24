# vim: set et sta sw=4 ts=4 :

import lbug

let db = newLbugDatabase()
let conn = db.connect

discard conn.query("CREATE NODE TABLE Test (id SERIAL, thing STRING, PRIMARY KEY(id))")

var txn = conn.beginTransaction()
discard conn.query("""CREATE (t:Test {thing: 'Doot'})""")
txn.commit()

assert txn.isActive == false

let res = conn.query("MATCH (t:Test) RETURN t.thing")
assert res.num_tuples == 1

for row in res:
    assert $row[0] == "Doot"

