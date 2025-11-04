# vim: set et sta sw=4 ts=4 :

import lbug

let db = newLbugDatabase()
let conn = db.connect

var q = conn.query( "CREATE NODE TABLE Doop ( id SERIAL, thing STRING, PRIMARY KEY(id) )" )

q = conn.query( "CREATE (d:Doop {thing: 'okay!'})" )
q = conn.query( "MATCH (d:Doop) RETURN d.id, d.thing, d" )

var row   = q.getNext
var id    = row[0]
var thing = row[1]
var node = row[2]

assert id.kind    == LBUG_INT64
assert thing.kind == LBUG_STRING
assert node.kind  == LBUG_NODE

