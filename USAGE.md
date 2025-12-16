
# Usage

This document is a quick guide for how to use this library.  If you've cloned
this repository, you can:

> % nimble docs

... to auto-generate API docs -- unfortunately, with all the C wrappers, there's
a lot and it's hard to know where to start.


## Prior Reading

If you're just starting with Ladybug or graph databases, it's probably a good idea
to familiarize yourself with the [Ladybug Documentation](https://docs.ladybugdb.com/)
and the [Cypher Language](https://docs.ladybugdb.com/tutorials/cypher/).  This
library won't do much for you by itself without a basic understanding of Ladybug usage.


## Checking Compatibility

This is a wrapper (with some additional niceties) for the system-installed Ladybug
shared library.  As such, the version of this library might not match with what
you currently have installed.

Check the [README](README.md), the [History](History.md), and the following
table to ensure you're using the correct version for your Ladybug
installation. I'll make a modest effort for backwards compatibility while Ladybug
is pre 1.0, and in practice, mismatched versions *might* work. Don't count too
heavily on it.  :-)   Once there's a 1.0, this should be less chaotic.

Ladybug was continued from the KuzuDB project, which was hastily abandoned in
October of 2025.  Previous versions used a "Kuzu" namespace.


| Kuzu Library Version | Nim Kuzu Minimum Version |
| -------------------- | ------------------------ |
| v0.8.2               | v0.1.0                   |
| v0.9.0               | v0.2.0                   |
| v0.10.0              | v0.4.0                   |
| v0.11.0              | v0.5.0                   |


| Ladybug Library Version | Nim Ladybug Minimum Version |
| ----------------------- | --------------------------- |
| v0.12.0                 | v0.7.0                      |
| v0.12.2                 | v0.8.0                      |
| v0.13.0                 | v0.8.1                      |


You can use the `lbugVersionCompatible()` function (along with the
`lbugGetVersion()` and the `LBUG_VERSION` constant) to quickly check if things
are looking right.

```nim
import ladybug

echo LBUG_VERSION            #=> "0.7.0"
echo lbugGetVersion()        #=> "0.12.0"
echo lbugVersionCompatible() #=> true
```


## Namespace

The LadybugDB project internals are all prefixed with `lbug`.  This wrapper
follows suit.

An exception to that is the import.  You can import "ladybug" or "lbug", it's
functionally equivalent.


## Connecting to a Database

Just call `newLbugDatabase()`.  Without an argument (or with an empty string),
the database is in-memory.  Any other argument is considered a filesystem path
-- it will create an empty database if the path is currently non-existent, or
open an existing database otherwise.

```nim
# "db" is in-memory and will evaporate when the process ends.
var db = newLbugDatabase()
```

```nim
# "db" is persistent, stored in the file "data.db".
var db = newLbugDatabase("data.db")
```
The database path is retained, and can be recalled via `db.path`.

```nim
db.path #=> "data.db"
```

### Database Configuration

The database is configured with default options by default.  You can see them
via:

```nim
echo $db.config
#=> (buffer_pool_size: 23371415552, max_num_threads: 16, ...

# Is compression enabled?
if db.config.enable_compression:
  echo "Yes!"
```

You can alter configuration options when connecting by passing a `lbugConfig`
object as the second argument to `newLbugDatabase()`:

```nim
# Open a readonly handle.
var db = newLbugDatabase( "data.db", lbugConfig( read_only=true ) )
```

### The Connection

All interaction with the database is performed via a connection object.  There
are limitations to database handles and connection objects -- see the
[Lbug Concurrency](https://docs.ladybugdb.com/concurrency/) docs for details!

Call `connect` on an open database handle to create a new connection:

```nim
var conn = db.connect
```

You can set a maximum query lifetime, and interrupt any running queries (thread
shutdown, ctrl-c, etc):

```nim
# Set a maximum ceiling on how long a query can run, in milliseconds.
conn.queryTimeout( 10 * 1000 ) # 10 seconds

# Cancel a running query.
conn.queryInterrupt()
```

## Performing Queries

You can perform a basic query via the appropriately named `query()` function on
the connection. Via this method, queries are run immediately.  A
`LbugQueryResult` is returned - this is the object you'll be interacting with to
see results.

A `LbugQueryResult` can be turned into a string to quickly see the column
headers and all tuple results:

```nim
var res = conn.query( """RETURN "Hello world", 1234, [1,2,3]""" )

echo $res #=>
# Hello world|1234|LIST_CREATION(1,2,3)
# Hello world|1234|[1,2,3]
```

Additionally, various query metadata is available for introspection:

```nim
var res = conn.query """
RETURN
  "Hello world" AS hi,
  1234 AS pin,
  [1,2,3] AS list
"""

assert res.num_columns == 3
assert res.num_tuples  == 1
echo res.compile_time   #=> 14.028
echo res.execution_time #=> 1.624

# Return the column names as a sequence.
assert res.column_names == @["hi", "pin", "list"]

# Return the column data types as a sequence.
assert res.column_types == @[LBUG_STRING, LBUG_INT64, LBUG_LIST]
```

### Prepared Statements

If you're supplying an argument to a query, or you're running a query
repeatedly, it's safer and faster to create a prepared statement via `prepare()`
on the connection. These statements are only compiled once, and execution is
deferred until you call `execute()`.

```nim
var stmt = conn.prepare """
RETURN
  "Hello world" AS hi,
  1234 AS pin,
  [1,2,3] AS list
"""

# This returns a LbugQueryResult, just like `conn.query()`.
var res = stmt.execute()
```

Arguments are labeled variables (prefixed with `$`) within the query.
Parameters are matched by providing a Nim tuple argument to `execute()` - a
simple round trip example:

```nim
var stmt = conn.prepare """
RETURN
  $message AS message,
  $digits AS digits,
  LIST_CREATION($list) AS list
"""

var res = stmt.execute( (message: "Hello", digits: 1234, list: "1,2,3") )

echo $res #=>
# message|digits|list
# Hello|1234|[1,2,3]
```

#### Type Conversion

When binding variables to a prepared statement, most Nim types are automatically
converted to their respective Ladybug types.

```nim
var stmt = conn.prepare( """RETURN $num AS num""" )
var res  = stmt.execute( (num: 12) )

assert res.column_types[0] == LBUG_INT32
```

This might not necessarily be what you want - sometimes you'd rather be strict
with typing, and you might be inserting into a column that has a different type
than the default.

You can use [integer type suffixes](https://nim-lang.org/docs/manual.html#lexical-analysis-numeric-literals), or casting to be explicit as usual:

```nim
var stmt = conn.prepare( """RETURN $num AS num""" )
var res: LbugQueryResult

res = stmt.execute( (num: 12'u64) )
assert res.column_types[0] == LBUG_UINT64

res = stmt.execute( (num: 12.float) )
assert res.column_types[0] == LBUG_DOUBLE
```

#### Ladybug Specific Types

In the example above, you may have noticed the `LIST_CREATION($list)` in the
prepared query, and that we passed a string `1,2,3` as the `$list` parameter.

This is a useful way to easily use most Ladybug types without needing corresponding
Nim ones -- if you're inserting into a table that is using a custom type, you
can cast it using the query itself during insertion!

This has the additional advantage of letting Ladybug error check the validity of
the content, and it works with the majority of types.

An extended example:

```nim
import std/sequtils
import lbug

var db   = newLbugDatabase()
var conn = db.connect

var res: LbugQueryResult

# Create a node table.
#
res = conn.query """
CREATE NODE TABLE Example (
  id SERIAL,
  num UINT8,
  done BOOL,
  comment STRING,
  karma DOUBLE,
  thing UUID,
  created DATE,
  activity TIMESTAMP,
  PRIMARY KEY(id)
)
"""

# Prepare a statement for adding a node.
#
var stmt = conn.prepare """
CREATE (e:Example {
  num: $num,
  done: $done,
  comment: $comment,
  karma: $karma,
  thing: UUID($thing),
  created: DATE($created),
  activity: TIMESTAMP($activity)
})
"""

# Add a node row that contains specific Ladybug types.
#
res = stmt.execute((
  num: 2,
  done: true,
  comment: "Types!",
  karma: 16.7,
  thing: "e0e7232e-bec9-4625-9822-9d1a31ea6f93",
  created: "2025-03-29",
  activity: "2025-03-29"
))

# Show the current contents.
res = conn.query( """MATCH (e:Example) RETURN e.*""" )
echo $res #=>
# e.id|e.num|e.done|e.comment|e.karma|e.thing|e.created|e.activity
# 0|2|True|Types!|16.700000|e0e7232e-bec9-4625-9822-9d1a31ea6f93|2025-03-29|2025-03-29 00:00:00

# Show column names and their Ladybug types.
for pair in res.column_names.zip( res.column_types ):
  echo pair #=>
  # ("e.id", LBUG_SERIAL)
  # ("e.num", LBUG_UINT8)
  # ("e.done", LBUG_BOOL)
  # ("e.comment", LBUG_STRING)
  # ("e.karma", LBUG_DOUBLE)
  # ("e.thing", LBUG_UUID)
  # ("e.created", LBUG_DATE)
  # ("e.activity", LBUG_TIMESTAMP)
```

## Reading Results

So far we've just been showing values by converting the entire `LbugQueryResult`
to a string.  Convenient for quick examples and debugging, but not much else.

A `LbugQueryResult` is an iterator. You can use regular Nim functions that yield
each `LbugFlatTuple` -- essentially, each row that was returned in a result set.

```nim
var res = conn.query """
  UNWIND [1,2,3] AS items
  UNWIND ["thing"] AS thing
  RETURN items, thing
"""

# LbugFlatTuple can be stringified just like the result set.
for row in res:
  echo row #=>
  # 1|thing
  # 2|thing
  # 3|thing
```

Once iteration has reached the end, it is automatically rewound for reuse.

You can manually get the next `LbugFlatTuple` via `getNext()`.  Calling
`getNext()` after the last row results in an error.  Use `hasNext()` to check
before calling.

```nim
var res = conn.query """
  UNWIND [1,2,3] AS items
  RETURN items
"""

# Get the first row.
if res.hasNext:
  var row = res.getNext
  echo row #=> 1

echo res.getNext #=> 2
echo res.getNext #=> 3
echo res.getNext #=> LbugIterationError exception!
```

Manually rewind the `LbugQueryResult` via `rewind()`.


## Multiple Query Results

A query can potentially return any number of separate statements.  In the case
of more potential `RETURN`s, the query will only contain the first.  Iterate
over linked `LbugQueryResult` objects with the `sets()` iterator to retreive the
remaining:

```nim
import lbug

let db = newLbugDatabase()
let conn = db.connect

let query = conn.query """
  UNWIND [1,2,3] as items
  RETURN items;

  UNWIND [4,5,6] as items
  RETURN items;

  UNWIND [7,8,9] as items
  RETURN items;
"""

for row in query:
  echo row
  # 1
  # 2
  # 3

for set in query.sets:
  for row in set:
    echo row
    # 4
    # 5
    # 6
    # 7
    # 8
    # 9
```


## Working with Values

A `LbugFlatTuple` contains the entire row.  You can index a value at its column
position, returning a `LbugValue`.

```nim
var res = conn.query """
RETURN
  1 AS num,
  true AS done,
  "A comment" AS comment,
  12.84 AS karma,
  UUID("b41deae0-dddf-430b-981d-3fb93823e495") AS thing,
  DATE("2025-03-29") AS created
"""

var row = res.getNext

for idx in ( 0 .. res.num_columns-1 ):
  var value = row[idx]
  echo res.column_names[idx], ": ", value, " (", value.kind, ")" #=>
  # num: 1 (LBUG_INT64)
  # done: True (LBUG_BOOL)
  # comment: A comment (LBUG_STRING)
  # karma: 12.840000 (LBUG_DOUBLE)
  # thing: b41deae0-dddf-430b-981d-3fb93823e495 (LBUG_UUID)
  # created: 2025-03-29 (LBUG_DATE)
```

### Types

A `LbugValue` can always be stringified, irrespective of its Lbug type.  You can
check what type it is via the 'kind' property.

```nim
var res = conn.query """RETURN "hello""""
var value = res.getNext[0]

assert value.kind == LBUG_STRING
```

A `LbugValue` has conversion methods for Nim base types.  You'll likely want to
convert it for regular Nim usage:

```nim
var res = conn.query( "RETURN 2560" )
var value = res.getNext[0]

echo value + 1 #=> Type error!

assert $value == "2560"
assert value.toInt64 + 1 == 2561
```


### Lists

A `LbugValue` of type `LBUG_LIST` can be converted to a Nim sequence of
`LbugValues` with the `toList()` function:

```nim
import std/sequtils
import lbug

var res = conn.query """
RETURN [10, 20, 30]
"""

var value = res.getNext[0]

var list = value.toList
echo list #=> @[10,20,30]

echo list.map( func(v:LbugValue): int = v.toInt64 * 10 ) #=> @[100,200,300]
```


### Struct-like Objects

Various Ladybug types can act like a struct - this includes `LBUG_NODE`,
`LBUG_REL`, and of course an explicit `LBUG_STRUCT` itself, among others.

Convert a `LbugValue` to a `LbugStructValue` with `toStruct()`.  For
convenience, this is also aliased to `toNode()` and `toRel()`.

Once converted, you can access struct values by passing the key name to `[]`:

```nim
var res = conn.query """
RETURN {movie: "The Fifth Element", year: 1997}
"""

var value = res.getNext[0]

var struct = value.toStruct
echo struct["movie"], " was released in ", struct["year"], "." #=>
# "The Fifth Element was released in 1997."
```

Here's a more elaborate example, following a node path:

```nim
import
  std/sequtils,
  std/strformat
import lbug

var db   = newLbugDatabase()
var conn = db.connect

var res = conn.query """
  CREATE NODE TABLE Person (
    id SERIAL,
    name STRING, PRIMARY KEY (id)
  );
  CREATE REL TABLE Knows (
    FROM Person TO Person,
    since INT
  );

  CREATE (p:Person {name: "Bob"});
  CREATE (p:Person {name: "Alice"});
  CREATE (p:Person {name: "Bruce"});
  CREATE (p:Person {name: "Tom"});

  CREATE (a:Person {name: "Bruce"})-[r:Knows {since: 1997}]->(b:Person {name: "Tom"});
  CREATE (a:Person {name: "Bob"})-[r:Knows {since: 2009}]->(b:Person {name: "Alice"});
  CREATE (a:Person {name: "Alice"})-[r:Knows {since: 2010}]->(b:Person {name: "Bob"});
  CREATE (a:Person {name: "Bob"})-[r:Knows {since: 2003}]->(b:Person {name: "Bruce"});
"""

res = conn.query """
  MATCH path = (a:Person)-[r:Knows]->(b:Person)
  WHERE r.since > 2000
  RETURN r.since as Since, nodes(path) as People
  ORDER BY r.since
"""

# Who knows who since when?
#
for row in res:
  var since  = row[0]
  var people = row[1].toList.map( proc(p:LbugValue):LbugStructValue = p.toNode )
  echo &"""{people[0]["name"]} has known {people[1]["name"]} since {since}.""" #=>
  # Bob has known Bruce since 2003.
  # Bob has known Alice since 2009.
  # Alice has known Bob since 2010.
```


### Blobs

Ladybug can store chunks of opaque binary data.  For these BLOB columns, using
`toBlob` will return the raw sequence of bytes.

```nim
var q = conn.query """
CREATE NODE TABLE Doot ( id SERIAL, data BLOB, PRIMARY KEY(id) )
"""

var stmt = conn.prepare( "CREATE (d:Doot {data: encode($str)})" )
q = stmt.execute( (str: "Hello!") )
q = conn.query( "MATCH (d:Doot) RETURN d.data" )

var blob = q.getNext[0].toBlob #=> @[72, 101, 108, 108, 111, 33]
```
