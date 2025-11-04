# vim: set et sta sw=4 ts=4 :

import lbug


let db = newLbugDatabase()

assert db.path == "(in-memory)"
assert typeOf( db.connect ) is LbugConnection

