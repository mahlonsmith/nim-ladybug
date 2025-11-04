# vim: set et sta sw=4 ts=4 :

import lbug

var db = newLbugDatabase()
assert db.path == "(in-memory)"
assert db.kind == memory

