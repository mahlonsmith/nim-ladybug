# vim: set et sta sw=4 ts=4 :

import
    std/re
import lbug

let db = newLbugDatabase()
let conn = db.connect

var q = conn.query( "CREATE NODE TABLE Doop ( id SERIAL, created DATE, PRIMARY KEY(id) )" )
assert typeOf( q ) is LbugQueryResult

var p = conn.prepare( "CREATE (d:Doop {created: $created})" )
assert typeOf( p ) is LbugPreparedStatement

# Typecast binding failure
#
try:
    discard p.execute( (created: "1111-1111") )
except LbugQueryError as err:
    assert err.msg.contains( re"""Conversion exception: Error occurred during parsing date.""" )

# Invalid value for typecast
#
p = conn.prepare( "CREATE (d:Doop {created: DATE($created)})" )
try:
    discard p.execute( (created: "1111-1111") )
except LbugQueryError as err:
    assert err.msg.contains( re"""Given: "1111-1111". Expected format: \(YYYY-MM-DD\)""" )


