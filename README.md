
# Nim Ladybug

home
: https://code.martini.nu/mahlon/nim-ladybug

github_mirror
: https://github.com/mahlonsmith/nim-ladybug


## Description

This is a Nim binding for the [LadybugDB](https://ladybugdb.com) graph database library.

Ladybug is an embedded graph database built for query speed and scalability. It is
optimized for handling complex join-heavy analytical workloads on very large
graphs, with the following core feature set:

- Property Graph data model and Cypher query language
- Embedded (in-process) integration with applications
- Columnar disk-based storage
- Columnar, compressed sparse row-based (CSR) adjacency list/join indices
- Vectorized and factorized query processor
- Novel and very fast join algorithms
- Multi-core query parallelism
- Serializable ACID transactions

For more information about Ladybug itself, see its
[documentation](https://docs.ladybugdb.com/).


## Prerequisites

* A functioning Nim >= 2 installation
- [LadybugDB](https://ladybugdb.com) to be locally installed!


## Installation

    $ nimble install ladybug

The current version of this library is built for Ladybug v0.13.0.


## Usage

See the [Usage documentation](USAGE.md).

You can also find a bunch of working examples in the tests.


## Contributing

You can check out the current development source via Git/Jujutsu at its
[home repo](https://code.martini.nu/mahlon/nim-ladybug), or the
[project mirror](https://github.com/mahlonsmith/nim-ladybug).

After checking out the source, uncomment the development dependencies
from the `ladybug.nimble` file, and run:

    $ nimble setup

This will install dependencies, and do any other necessary setup for
development.



## Authors

- Mahlon E. Smith <mahlon@martini.nu>

A note of thanks to @mantielero on Github, who has a Kuzu binding for an early
KuzuDB (0.4.x) that I found after starting this project (the predecessor to
LadybugDB.)
