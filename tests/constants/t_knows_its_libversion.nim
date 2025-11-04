# vim: set et sta sw=4 ts=4 :

import re
import lbug

let version = $lbugGetVersion()
assert version.contains( re"^\d+\.\d+\.\d+(?:\.\d+)?$" )

