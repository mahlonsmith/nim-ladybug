# vim: set et sta sw=4 ts=4 :

import lbug

let db = newLbugDatabase()
let conn = db.connect

discard conn.query("CREATE NODE TABLE Test (id SERIAL, thing STRING, PRIMARY KEY(id))")

# Regular open->commit path
conn.withTransaction( readOnly = false ):
    for i in 0..4:
        discard conn.query("""CREATE (t:Test {thing: 'Doot'})""")

var res = conn.query("MATCH (t:Test) RETURN t.thing")
assert res.num_tuples == 5

for row in res:
    assert $row[0] == "Doot"


# Exception from within the block -- rollback!
try:
    conn.withTransaction( readOnly = false ):
        for i in 0..4:
            discard conn.query("""CREATE (t:Test {thing: 'Doot'})""")
        raise newException( ValueError, "kaboom!" )
except:
    discard

res = conn.query("MATCH (t:Test) RETURN t.thing")
assert res.num_tuples == 5

