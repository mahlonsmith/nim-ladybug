# vim: set et sta sw=4 ts=4 :
#

{.passL:"-llbug".}

when defined( futharkWrap ):
    import futhark, os

    importc:
        outputPath currentSourcePath.parentDir / "lbug" / "0.14.1.nim"
        "lbug.h"
else:
    include "lbug/0.14.1.nim"

import
    std/files,
    std/paths,
    std/strformat,
    std/strutils

# Order very much matters here pre Nim 3.0 multi-pass compiling.
include
    "lbug/constants.nim",
    "lbug/types.nim",
    "lbug/config.nim",
    "lbug/database.nim",
    "lbug/connection.nim",
    "lbug/value.nim",
    "lbug/tuple.nim",
    "lbug/queries.nim"


proc lbugVersionCompatible*(): bool =
    ## Returns true if the system installed LadybugDB library
    ## is the expected version of this library wrapper.
    result = LBUG_EXPECTED_LIBVERSION == $lbugGetVersion()


when isMainModule:
    echo "Nim-Ladybug version: ", LBUG_VERSION,
        ". Expected library version: ", LBUG_EXPECTED_LIBVERSION, "."
    echo "Installed lbug library version ", lbugGetVersion(),
        " (storage version ", lbugGetStorageVersion(), ")"
    if lbugVersionCompatible():
        echo "Versions match!"
    else:
        echo "This library wraps a different version of LadybugDB than what is installed."
        echo "Behavior may be unexpected!"

