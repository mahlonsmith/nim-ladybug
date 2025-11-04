# vim: set et sta sw=4 ts=4 :

import
  std/re
import lbug

let db = newLbugDatabase()
let conn = db.connect

var q = conn.query( "CREATE NODE TABLE Doop ( id SERIAL, thing STRING, PRIMARY KEY(id) )" )

q = conn.query( "CREATE (d:Doop {thing: 'okay!'})" )
q = conn.query( "MATCH (d:Doop) RETURN d" )

var tup = q.getNext
var val = tup[0]
assert val.kind == LBUG_NODE

try:
    discard val.toInt32
except LbugTypeError as err:
    assert err.msg.contains( re"""Mismatched types: LBUG_NODE != {LBUG_INT32}""" )


q = conn.query( "RETURN 1" )
val = q.getNext[0]

try:
    discard val.toStruct
except LbugTypeError as err:
    assert err.msg.contains( re"""Mismatched types: LBUG_INT.* != {LBUG_NODE, LBUG_REL,.*}""" )


