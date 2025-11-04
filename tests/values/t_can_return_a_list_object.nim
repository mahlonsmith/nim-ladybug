# vim: set et sta sw=4 ts=4 :

import lbug

let db = newLbugDatabase()
let conn = db.connect

var q = conn.query( "RETURN [1,2,3,4,5] AS list" )
var list = q.getNext[0]
assert list.kind == LBUG_LIST

var items = list.toSeq
assert items.len == 5
assert typeOf( items ) is seq[LbugValue]

for i in items:
    assert( i.kind == LBUG_INT64 )


q = conn.query( """RETURN ["woo", "hoo"] AS list""" )
list = q.getNext[0]
assert list.kind == LBUG_LIST

items = list.toSeq
assert items.len == 2
assert typeOf( items ) is seq[LbugValue]

for i in items:
    assert( i.kind == LBUG_STRING )


q = conn.query( """RETURN [] AS list""" )
list = q.getNext[0]
assert list.kind == LBUG_LIST

items = list.toList
assert items.len == 0
assert typeOf( items ) is seq[LbugValue]

