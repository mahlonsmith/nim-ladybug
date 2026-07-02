
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from std / macros import hint, warning, newLit, getSize

from std / os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_lbug_data_type_id_587203074* {.size: sizeof(cuint).} = enum
    LBUG_ANY = 0, LBUG_NODE = 10, LBUG_REL = 11, LBUG_RECURSIVE_REL = 12,
    LBUG_SERIAL = 13, LBUG_BOOL = 22, LBUG_INT64 = 23, LBUG_INT32 = 24,
    LBUG_INT16 = 25, LBUG_INT8 = 26, LBUG_UINT64 = 27, LBUG_UINT32 = 28,
    LBUG_UINT16 = 29, LBUG_UINT8 = 30, LBUG_INT128 = 31, LBUG_DOUBLE = 32,
    LBUG_FLOAT = 33, LBUG_DATE = 34, LBUG_TIMESTAMP = 35,
    LBUG_TIMESTAMP_SEC = 36, LBUG_TIMESTAMP_MS = 37, LBUG_TIMESTAMP_NS = 38,
    LBUG_TIMESTAMP_TZ = 39, LBUG_INTERVAL = 40, LBUG_DECIMAL = 41,
    LBUG_INTERNAL_ID = 42, LBUG_STRING = 50, LBUG_BLOB = 51, LBUG_LIST = 52,
    LBUG_ARRAY = 53, LBUG_STRUCT = 54, LBUG_MAP = 55, LBUG_UNION = 56,
    LBUG_POINTER = 58, LBUG_UUID = 59
type
  enum_lbug_state_587203078* {.size: sizeof(cuint).} = enum
    LbugSuccess = 0, LbugError = 1
when not declared(LBUG_HELPER_DLL_IMPORT):
  type
    LBUG_HELPER_DLL_IMPORT* = object
else:
  static :
    hint("Declaration of " & "LBUG_HELPER_DLL_IMPORT" &
        " already exists, not redeclaring")
when not declared(LBUG_HELPER_DEPRECATED):
  type
    LBUG_HELPER_DEPRECATED* = object
else:
  static :
    hint("Declaration of " & "LBUG_HELPER_DEPRECATED" &
        " already exists, not redeclaring")
type
  struct_ArrowSchema_587202998 {.pure, inheritable, bycopy.} = object
    format*: cstring         ## Generated based on /usr/include/lbug.h:64:8
    name*: cstring
    metadata*: cstring
    flags*: int64
    n_children*: int64
    children*: ptr ptr struct_ArrowSchema_587202999
    dictionary*: ptr struct_ArrowSchema_587202999
    release*: proc (a0: ptr struct_ArrowSchema_587202999): void {.cdecl.}
    private_data*: pointer
  struct_ArrowArray_587203000 {.pure, inheritable, bycopy.} = object
    length*: int64           ## Generated based on /usr/include/lbug.h:80:8
    null_count*: int64
    offset*: int64
    n_buffers*: int64
    n_children*: int64
    buffers*: ptr pointer
    children*: ptr ptr struct_ArrowArray_587203001
    dictionary*: ptr struct_ArrowArray_587203001
    release*: proc (a0: ptr struct_ArrowArray_587203001): void {.cdecl.}
    private_data*: pointer
  struct_lbug_system_config_587203002 {.pure, inheritable, bycopy.} = object
    buffer_pool_size*: uint64 ## Generated based on /usr/include/lbug.h:112:9
    max_num_threads*: uint64
    enable_compression*: bool
    read_only*: bool
    max_db_size*: uint64
    auto_checkpoint*: bool
    checkpoint_threshold*: uint64
    throw_on_wal_replay_failure*: bool
    enable_checksums*: bool
    enable_multi_writes*: bool
    enable_default_hash_index*: bool
  lbug_system_config_587203004 = struct_lbug_system_config_587203003 ## Generated based on /usr/include/lbug.h:149:3
  struct_lbug_database_587203006 {.pure, inheritable, bycopy.} = object
    internal_database*: pointer ## Generated based on /usr/include/lbug.h:154:9
  lbug_database_587203008 = struct_lbug_database_587203007 ## Generated based on /usr/include/lbug.h:156:3
  struct_lbug_connection_587203010 {.pure, inheritable, bycopy.} = object
    internal_connection*: pointer ## Generated based on /usr/include/lbug.h:163:9
  lbug_connection_587203012 = struct_lbug_connection_587203011 ## Generated based on /usr/include/lbug.h:165:3
  struct_lbug_prepared_statement_587203014 {.pure, inheritable, bycopy.} = object
    internal_prepared_statement*: pointer ## Generated based on /usr/include/lbug.h:171:9
    internal_bound_values*: pointer
  lbug_prepared_statement_587203016 = struct_lbug_prepared_statement_587203015 ## Generated based on /usr/include/lbug.h:174:3
  struct_lbug_query_result_587203018 {.pure, inheritable, bycopy.} = object
    internal_query_result*: pointer ## Generated based on /usr/include/lbug.h:179:9
    internal_is_owned_by_cpp*: bool
  lbug_query_result_587203020 = struct_lbug_query_result_587203019 ## Generated based on /usr/include/lbug.h:182:3
  struct_lbug_flat_tuple_587203022 {.pure, inheritable, bycopy.} = object
    internal_flat_tuple*: pointer ## Generated based on /usr/include/lbug.h:187:9
    internal_is_owned_by_cpp*: bool
  lbug_flat_tuple_587203024 = struct_lbug_flat_tuple_587203023 ## Generated based on /usr/include/lbug.h:190:3
  struct_lbug_logical_type_587203026 {.pure, inheritable, bycopy.} = object
    internal_data_type*: pointer ## Generated based on /usr/include/lbug.h:195:9
  lbug_logical_type_587203028 = struct_lbug_logical_type_587203027 ## Generated based on /usr/include/lbug.h:197:3
  struct_lbug_value_587203030 {.pure, inheritable, bycopy.} = object
    internal_value*: pointer ## Generated based on /usr/include/lbug.h:202:9
    internal_is_owned_by_cpp*: bool
  lbug_value_587203032 = struct_lbug_value_587203031 ## Generated based on /usr/include/lbug.h:205:3
  struct_lbug_internal_id_t_587203034 {.pure, inheritable, bycopy.} = object
    table_id*: uint64        ## Generated based on /usr/include/lbug.h:210:9
    offset*: uint64
  lbug_internal_id_t_587203036 = struct_lbug_internal_id_t_587203035 ## Generated based on /usr/include/lbug.h:213:3
  struct_lbug_date_t_587203038 {.pure, inheritable, bycopy.} = object
    days*: int32             ## Generated based on /usr/include/lbug.h:218:9
  lbug_date_t_587203040 = struct_lbug_date_t_587203039 ## Generated based on /usr/include/lbug.h:221:3
  struct_lbug_timestamp_ns_t_587203042 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/include/lbug.h:227:9
  lbug_timestamp_ns_t_587203044 = struct_lbug_timestamp_ns_t_587203043 ## Generated based on /usr/include/lbug.h:230:3
  struct_lbug_timestamp_ms_t_587203046 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/include/lbug.h:236:9
  lbug_timestamp_ms_t_587203048 = struct_lbug_timestamp_ms_t_587203047 ## Generated based on /usr/include/lbug.h:239:3
  struct_lbug_timestamp_sec_t_587203050 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/include/lbug.h:245:9
  lbug_timestamp_sec_t_587203052 = struct_lbug_timestamp_sec_t_587203051 ## Generated based on /usr/include/lbug.h:248:3
  struct_lbug_timestamp_tz_t_587203054 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/include/lbug.h:254:9
  lbug_timestamp_tz_t_587203056 = struct_lbug_timestamp_tz_t_587203055 ## Generated based on /usr/include/lbug.h:257:3
  struct_lbug_timestamp_t_587203058 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/include/lbug.h:263:9
  lbug_timestamp_t_587203060 = struct_lbug_timestamp_t_587203059 ## Generated based on /usr/include/lbug.h:266:3
  struct_lbug_interval_t_587203062 {.pure, inheritable, bycopy.} = object
    months*: int32           ## Generated based on /usr/include/lbug.h:271:9
    days*: int32
    micros*: int64
  lbug_interval_t_587203064 = struct_lbug_interval_t_587203063 ## Generated based on /usr/include/lbug.h:275:3
  struct_lbug_query_summary_587203066 {.pure, inheritable, bycopy.} = object
    internal_query_summary*: pointer ## Generated based on /usr/include/lbug.h:281:9
  lbug_query_summary_587203068 = struct_lbug_query_summary_587203067 ## Generated based on /usr/include/lbug.h:283:3
  struct_lbug_int128_t_587203070 {.pure, inheritable, bycopy.} = object
    low*: uint64             ## Generated based on /usr/include/lbug.h:285:9
    high*: int64
  lbug_int128_t_587203072 = struct_lbug_int128_t_587203071 ## Generated based on /usr/include/lbug.h:288:3
  lbug_data_type_id_587203076 = enum_lbug_data_type_id_587203075 ## Generated based on /usr/include/lbug.h:333:3
  lbug_state_587203080 = enum_lbug_state_587203079 ## Generated based on /usr/include/lbug.h:338:49
  struct_tm_587203082 {.pure, inheritable, bycopy.} = object
    tm_sec*: cint            ## Generated based on /usr/include/bits/types/struct_tm.h:7:8
    tm_min*: cint
    tm_hour*: cint
    tm_mday*: cint
    tm_mon*: cint
    tm_year*: cint
    tm_wday*: cint
    tm_yday*: cint
    tm_isdst*: cint
    tm_gmtoff*: clong
    tm_zone*: cstring
  lbug_database_587203009 = (when declared(lbug_database):
    when ownSizeof(lbug_database) != ownSizeof(lbug_database_587203008):
      static :
        warning("Declaration of " & "lbug_database" &
            " exists but with different size")
    lbug_database
  else:
    lbug_database_587203008)
  lbug_timestamp_t_587203061 = (when declared(lbug_timestamp_t):
    when ownSizeof(lbug_timestamp_t) != ownSizeof(lbug_timestamp_t_587203060):
      static :
        warning("Declaration of " & "lbug_timestamp_t" &
            " exists but with different size")
    lbug_timestamp_t
  else:
    lbug_timestamp_t_587203060)
  struct_lbug_flat_tuple_587203023 = (when declared(struct_lbug_flat_tuple):
    when ownSizeof(struct_lbug_flat_tuple) != ownSizeof(struct_lbug_flat_tuple_587203022):
      static :
        warning("Declaration of " & "struct_lbug_flat_tuple" &
            " exists but with different size")
    struct_lbug_flat_tuple
  else:
    struct_lbug_flat_tuple_587203022)
  lbug_value_587203033 = (when declared(lbug_value):
    when ownSizeof(lbug_value) != ownSizeof(lbug_value_587203032):
      static :
        warning("Declaration of " & "lbug_value" &
            " exists but with different size")
    lbug_value
  else:
    lbug_value_587203032)
  lbug_query_summary_587203069 = (when declared(lbug_query_summary):
    when ownSizeof(lbug_query_summary) != ownSizeof(lbug_query_summary_587203068):
      static :
        warning("Declaration of " & "lbug_query_summary" &
            " exists but with different size")
    lbug_query_summary
  else:
    lbug_query_summary_587203068)
  enum_lbug_state_587203079 = (when declared(enum_lbug_state):
    when ownSizeof(enum_lbug_state) != ownSizeof(enum_lbug_state_587203078):
      static :
        warning("Declaration of " & "enum_lbug_state" &
            " exists but with different size")
    enum_lbug_state
  else:
    enum_lbug_state_587203078)
  lbug_timestamp_sec_t_587203053 = (when declared(lbug_timestamp_sec_t):
    when ownSizeof(lbug_timestamp_sec_t) != ownSizeof(lbug_timestamp_sec_t_587203052):
      static :
        warning("Declaration of " & "lbug_timestamp_sec_t" &
            " exists but with different size")
    lbug_timestamp_sec_t
  else:
    lbug_timestamp_sec_t_587203052)
  struct_lbug_system_config_587203003 = (when declared(struct_lbug_system_config):
    when ownSizeof(struct_lbug_system_config) !=
        ownSizeof(struct_lbug_system_config_587203002):
      static :
        warning("Declaration of " & "struct_lbug_system_config" &
            " exists but with different size")
    struct_lbug_system_config
  else:
    struct_lbug_system_config_587203002)
  lbug_state_587203081 = (when declared(lbug_state):
    when ownSizeof(lbug_state) != ownSizeof(lbug_state_587203080):
      static :
        warning("Declaration of " & "lbug_state" &
            " exists but with different size")
    lbug_state
  else:
    lbug_state_587203080)
  lbug_system_config_587203005 = (when declared(lbug_system_config):
    when ownSizeof(lbug_system_config) != ownSizeof(lbug_system_config_587203004):
      static :
        warning("Declaration of " & "lbug_system_config" &
            " exists but with different size")
    lbug_system_config
  else:
    lbug_system_config_587203004)
  struct_lbug_connection_587203011 = (when declared(struct_lbug_connection):
    when ownSizeof(struct_lbug_connection) != ownSizeof(struct_lbug_connection_587203010):
      static :
        warning("Declaration of " & "struct_lbug_connection" &
            " exists but with different size")
    struct_lbug_connection
  else:
    struct_lbug_connection_587203010)
  lbug_timestamp_ns_t_587203045 = (when declared(lbug_timestamp_ns_t):
    when ownSizeof(lbug_timestamp_ns_t) != ownSizeof(lbug_timestamp_ns_t_587203044):
      static :
        warning("Declaration of " & "lbug_timestamp_ns_t" &
            " exists but with different size")
    lbug_timestamp_ns_t
  else:
    lbug_timestamp_ns_t_587203044)
  lbug_query_result_587203021 = (when declared(lbug_query_result):
    when ownSizeof(lbug_query_result) != ownSizeof(lbug_query_result_587203020):
      static :
        warning("Declaration of " & "lbug_query_result" &
            " exists but with different size")
    lbug_query_result
  else:
    lbug_query_result_587203020)
  struct_lbug_internal_id_t_587203035 = (when declared(struct_lbug_internal_id_t):
    when ownSizeof(struct_lbug_internal_id_t) !=
        ownSizeof(struct_lbug_internal_id_t_587203034):
      static :
        warning("Declaration of " & "struct_lbug_internal_id_t" &
            " exists but with different size")
    struct_lbug_internal_id_t
  else:
    struct_lbug_internal_id_t_587203034)
  lbug_internal_id_t_587203037 = (when declared(lbug_internal_id_t):
    when ownSizeof(lbug_internal_id_t) != ownSizeof(lbug_internal_id_t_587203036):
      static :
        warning("Declaration of " & "lbug_internal_id_t" &
            " exists but with different size")
    lbug_internal_id_t
  else:
    lbug_internal_id_t_587203036)
  struct_lbug_logical_type_587203027 = (when declared(struct_lbug_logical_type):
    when ownSizeof(struct_lbug_logical_type) !=
        ownSizeof(struct_lbug_logical_type_587203026):
      static :
        warning("Declaration of " & "struct_lbug_logical_type" &
            " exists but with different size")
    struct_lbug_logical_type
  else:
    struct_lbug_logical_type_587203026)
  struct_lbug_timestamp_sec_t_587203051 = (when declared(
      struct_lbug_timestamp_sec_t):
    when ownSizeof(struct_lbug_timestamp_sec_t) !=
        ownSizeof(struct_lbug_timestamp_sec_t_587203050):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_sec_t" &
            " exists but with different size")
    struct_lbug_timestamp_sec_t
  else:
    struct_lbug_timestamp_sec_t_587203050)
  struct_ArrowSchema_587202999 = (when declared(struct_ArrowSchema):
    when ownSizeof(struct_ArrowSchema) != ownSizeof(struct_ArrowSchema_587202998):
      static :
        warning("Declaration of " & "struct_ArrowSchema" &
            " exists but with different size")
    struct_ArrowSchema
  else:
    struct_ArrowSchema_587202998)
  struct_lbug_query_result_587203019 = (when declared(struct_lbug_query_result):
    when ownSizeof(struct_lbug_query_result) !=
        ownSizeof(struct_lbug_query_result_587203018):
      static :
        warning("Declaration of " & "struct_lbug_query_result" &
            " exists but with different size")
    struct_lbug_query_result
  else:
    struct_lbug_query_result_587203018)
  struct_lbug_timestamp_ns_t_587203043 = (when declared(
      struct_lbug_timestamp_ns_t):
    when ownSizeof(struct_lbug_timestamp_ns_t) !=
        ownSizeof(struct_lbug_timestamp_ns_t_587203042):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_ns_t" &
            " exists but with different size")
    struct_lbug_timestamp_ns_t
  else:
    struct_lbug_timestamp_ns_t_587203042)
  lbug_timestamp_tz_t_587203057 = (when declared(lbug_timestamp_tz_t):
    when ownSizeof(lbug_timestamp_tz_t) != ownSizeof(lbug_timestamp_tz_t_587203056):
      static :
        warning("Declaration of " & "lbug_timestamp_tz_t" &
            " exists but with different size")
    lbug_timestamp_tz_t
  else:
    lbug_timestamp_tz_t_587203056)
  struct_lbug_timestamp_t_587203059 = (when declared(struct_lbug_timestamp_t):
    when ownSizeof(struct_lbug_timestamp_t) !=
        ownSizeof(struct_lbug_timestamp_t_587203058):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_t" &
            " exists but with different size")
    struct_lbug_timestamp_t
  else:
    struct_lbug_timestamp_t_587203058)
  lbug_prepared_statement_587203017 = (when declared(lbug_prepared_statement):
    when ownSizeof(lbug_prepared_statement) !=
        ownSizeof(lbug_prepared_statement_587203016):
      static :
        warning("Declaration of " & "lbug_prepared_statement" &
            " exists but with different size")
    lbug_prepared_statement
  else:
    lbug_prepared_statement_587203016)
  struct_lbug_query_summary_587203067 = (when declared(struct_lbug_query_summary):
    when ownSizeof(struct_lbug_query_summary) !=
        ownSizeof(struct_lbug_query_summary_587203066):
      static :
        warning("Declaration of " & "struct_lbug_query_summary" &
            " exists but with different size")
    struct_lbug_query_summary
  else:
    struct_lbug_query_summary_587203066)
  struct_lbug_database_587203007 = (when declared(struct_lbug_database):
    when ownSizeof(struct_lbug_database) != ownSizeof(struct_lbug_database_587203006):
      static :
        warning("Declaration of " & "struct_lbug_database" &
            " exists but with different size")
    struct_lbug_database
  else:
    struct_lbug_database_587203006)
  struct_lbug_prepared_statement_587203015 = (when declared(
      struct_lbug_prepared_statement):
    when ownSizeof(struct_lbug_prepared_statement) !=
        ownSizeof(struct_lbug_prepared_statement_587203014):
      static :
        warning("Declaration of " & "struct_lbug_prepared_statement" &
            " exists but with different size")
    struct_lbug_prepared_statement
  else:
    struct_lbug_prepared_statement_587203014)
  lbug_logical_type_587203029 = (when declared(lbug_logical_type):
    when ownSizeof(lbug_logical_type) != ownSizeof(lbug_logical_type_587203028):
      static :
        warning("Declaration of " & "lbug_logical_type" &
            " exists but with different size")
    lbug_logical_type
  else:
    lbug_logical_type_587203028)
  lbug_date_t_587203041 = (when declared(lbug_date_t):
    when ownSizeof(lbug_date_t) != ownSizeof(lbug_date_t_587203040):
      static :
        warning("Declaration of " & "lbug_date_t" &
            " exists but with different size")
    lbug_date_t
  else:
    lbug_date_t_587203040)
  struct_lbug_timestamp_ms_t_587203047 = (when declared(
      struct_lbug_timestamp_ms_t):
    when ownSizeof(struct_lbug_timestamp_ms_t) !=
        ownSizeof(struct_lbug_timestamp_ms_t_587203046):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_ms_t" &
            " exists but with different size")
    struct_lbug_timestamp_ms_t
  else:
    struct_lbug_timestamp_ms_t_587203046)
  lbug_connection_587203013 = (when declared(lbug_connection):
    when ownSizeof(lbug_connection) != ownSizeof(lbug_connection_587203012):
      static :
        warning("Declaration of " & "lbug_connection" &
            " exists but with different size")
    lbug_connection
  else:
    lbug_connection_587203012)
  struct_lbug_value_587203031 = (when declared(struct_lbug_value):
    when ownSizeof(struct_lbug_value) != ownSizeof(struct_lbug_value_587203030):
      static :
        warning("Declaration of " & "struct_lbug_value" &
            " exists but with different size")
    struct_lbug_value
  else:
    struct_lbug_value_587203030)
  struct_lbug_interval_t_587203063 = (when declared(struct_lbug_interval_t):
    when ownSizeof(struct_lbug_interval_t) != ownSizeof(struct_lbug_interval_t_587203062):
      static :
        warning("Declaration of " & "struct_lbug_interval_t" &
            " exists but with different size")
    struct_lbug_interval_t
  else:
    struct_lbug_interval_t_587203062)
  struct_ArrowArray_587203001 = (when declared(struct_ArrowArray):
    when ownSizeof(struct_ArrowArray) != ownSizeof(struct_ArrowArray_587203000):
      static :
        warning("Declaration of " & "struct_ArrowArray" &
            " exists but with different size")
    struct_ArrowArray
  else:
    struct_ArrowArray_587203000)
  lbug_flat_tuple_587203025 = (when declared(lbug_flat_tuple):
    when ownSizeof(lbug_flat_tuple) != ownSizeof(lbug_flat_tuple_587203024):
      static :
        warning("Declaration of " & "lbug_flat_tuple" &
            " exists but with different size")
    lbug_flat_tuple
  else:
    lbug_flat_tuple_587203024)
  lbug_timestamp_ms_t_587203049 = (when declared(lbug_timestamp_ms_t):
    when ownSizeof(lbug_timestamp_ms_t) != ownSizeof(lbug_timestamp_ms_t_587203048):
      static :
        warning("Declaration of " & "lbug_timestamp_ms_t" &
            " exists but with different size")
    lbug_timestamp_ms_t
  else:
    lbug_timestamp_ms_t_587203048)
  lbug_interval_t_587203065 = (when declared(lbug_interval_t):
    when ownSizeof(lbug_interval_t) != ownSizeof(lbug_interval_t_587203064):
      static :
        warning("Declaration of " & "lbug_interval_t" &
            " exists but with different size")
    lbug_interval_t
  else:
    lbug_interval_t_587203064)
  struct_lbug_int128_t_587203071 = (when declared(struct_lbug_int128_t):
    when ownSizeof(struct_lbug_int128_t) != ownSizeof(struct_lbug_int128_t_587203070):
      static :
        warning("Declaration of " & "struct_lbug_int128_t" &
            " exists but with different size")
    struct_lbug_int128_t
  else:
    struct_lbug_int128_t_587203070)
  lbug_data_type_id_587203077 = (when declared(lbug_data_type_id):
    when ownSizeof(lbug_data_type_id) != ownSizeof(lbug_data_type_id_587203076):
      static :
        warning("Declaration of " & "lbug_data_type_id" &
            " exists but with different size")
    lbug_data_type_id
  else:
    lbug_data_type_id_587203076)
  struct_tm_587203083 = (when declared(struct_tm):
    when ownSizeof(struct_tm) != ownSizeof(struct_tm_587203082):
      static :
        warning("Declaration of " & "struct_tm" &
            " exists but with different size")
    struct_tm
  else:
    struct_tm_587203082)
  lbug_int128_t_587203073 = (when declared(lbug_int128_t):
    when ownSizeof(lbug_int128_t) != ownSizeof(lbug_int128_t_587203072):
      static :
        warning("Declaration of " & "lbug_int128_t" &
            " exists but with different size")
    lbug_int128_t
  else:
    lbug_int128_t_587203072)
  enum_lbug_data_type_id_587203075 = (when declared(enum_lbug_data_type_id):
    when ownSizeof(enum_lbug_data_type_id) != ownSizeof(enum_lbug_data_type_id_587203074):
      static :
        warning("Declaration of " & "enum_lbug_data_type_id" &
            " exists but with different size")
    enum_lbug_data_type_id
  else:
    enum_lbug_data_type_id_587203074)
  struct_lbug_date_t_587203039 = (when declared(struct_lbug_date_t):
    when ownSizeof(struct_lbug_date_t) != ownSizeof(struct_lbug_date_t_587203038):
      static :
        warning("Declaration of " & "struct_lbug_date_t" &
            " exists but with different size")
    struct_lbug_date_t
  else:
    struct_lbug_date_t_587203038)
  struct_lbug_timestamp_tz_t_587203055 = (when declared(
      struct_lbug_timestamp_tz_t):
    when ownSizeof(struct_lbug_timestamp_tz_t) !=
        ownSizeof(struct_lbug_timestamp_tz_t_587203054):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_tz_t" &
            " exists but with different size")
    struct_lbug_timestamp_tz_t
  else:
    struct_lbug_timestamp_tz_t_587203054)
when not declared(lbug_database):
  type
    lbug_database* = lbug_database_587203008
else:
  static :
    hint("Declaration of " & "lbug_database" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_t):
  type
    lbug_timestamp_t* = lbug_timestamp_t_587203060
else:
  static :
    hint("Declaration of " & "lbug_timestamp_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_flat_tuple):
  type
    struct_lbug_flat_tuple* = struct_lbug_flat_tuple_587203022
else:
  static :
    hint("Declaration of " & "struct_lbug_flat_tuple" &
        " already exists, not redeclaring")
when not declared(lbug_value):
  type
    lbug_value* = lbug_value_587203032
else:
  static :
    hint("Declaration of " & "lbug_value" & " already exists, not redeclaring")
when not declared(lbug_query_summary):
  type
    lbug_query_summary* = lbug_query_summary_587203068
else:
  static :
    hint("Declaration of " & "lbug_query_summary" &
        " already exists, not redeclaring")
when not declared(enum_lbug_state):
  type
    enum_lbug_state* = enum_lbug_state_587203078
else:
  static :
    hint("Declaration of " & "enum_lbug_state" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_sec_t):
  type
    lbug_timestamp_sec_t* = lbug_timestamp_sec_t_587203052
else:
  static :
    hint("Declaration of " & "lbug_timestamp_sec_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_system_config):
  type
    struct_lbug_system_config* = struct_lbug_system_config_587203002
else:
  static :
    hint("Declaration of " & "struct_lbug_system_config" &
        " already exists, not redeclaring")
when not declared(lbug_state):
  type
    lbug_state* = lbug_state_587203080
else:
  static :
    hint("Declaration of " & "lbug_state" & " already exists, not redeclaring")
when not declared(lbug_system_config):
  type
    lbug_system_config* = lbug_system_config_587203004
else:
  static :
    hint("Declaration of " & "lbug_system_config" &
        " already exists, not redeclaring")
when not declared(struct_lbug_connection):
  type
    struct_lbug_connection* = struct_lbug_connection_587203010
else:
  static :
    hint("Declaration of " & "struct_lbug_connection" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ns_t):
  type
    lbug_timestamp_ns_t* = lbug_timestamp_ns_t_587203044
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ns_t" &
        " already exists, not redeclaring")
when not declared(lbug_query_result):
  type
    lbug_query_result* = lbug_query_result_587203020
else:
  static :
    hint("Declaration of " & "lbug_query_result" &
        " already exists, not redeclaring")
when not declared(struct_lbug_internal_id_t):
  type
    struct_lbug_internal_id_t* = struct_lbug_internal_id_t_587203034
else:
  static :
    hint("Declaration of " & "struct_lbug_internal_id_t" &
        " already exists, not redeclaring")
when not declared(lbug_internal_id_t):
  type
    lbug_internal_id_t* = lbug_internal_id_t_587203036
else:
  static :
    hint("Declaration of " & "lbug_internal_id_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_logical_type):
  type
    struct_lbug_logical_type* = struct_lbug_logical_type_587203026
else:
  static :
    hint("Declaration of " & "struct_lbug_logical_type" &
        " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_sec_t):
  type
    struct_lbug_timestamp_sec_t* = struct_lbug_timestamp_sec_t_587203050
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_sec_t" &
        " already exists, not redeclaring")
when not declared(struct_ArrowSchema):
  type
    struct_ArrowSchema* = struct_ArrowSchema_587202998
else:
  static :
    hint("Declaration of " & "struct_ArrowSchema" &
        " already exists, not redeclaring")
when not declared(struct_lbug_query_result):
  type
    struct_lbug_query_result* = struct_lbug_query_result_587203018
else:
  static :
    hint("Declaration of " & "struct_lbug_query_result" &
        " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_ns_t):
  type
    struct_lbug_timestamp_ns_t* = struct_lbug_timestamp_ns_t_587203042
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_ns_t" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_tz_t):
  type
    lbug_timestamp_tz_t* = lbug_timestamp_tz_t_587203056
else:
  static :
    hint("Declaration of " & "lbug_timestamp_tz_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_t):
  type
    struct_lbug_timestamp_t* = struct_lbug_timestamp_t_587203058
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_t" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement):
  type
    lbug_prepared_statement* = lbug_prepared_statement_587203016
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement" &
        " already exists, not redeclaring")
when not declared(struct_lbug_query_summary):
  type
    struct_lbug_query_summary* = struct_lbug_query_summary_587203066
else:
  static :
    hint("Declaration of " & "struct_lbug_query_summary" &
        " already exists, not redeclaring")
when not declared(struct_lbug_database):
  type
    struct_lbug_database* = struct_lbug_database_587203006
else:
  static :
    hint("Declaration of " & "struct_lbug_database" &
        " already exists, not redeclaring")
when not declared(struct_lbug_prepared_statement):
  type
    struct_lbug_prepared_statement* = struct_lbug_prepared_statement_587203014
else:
  static :
    hint("Declaration of " & "struct_lbug_prepared_statement" &
        " already exists, not redeclaring")
when not declared(lbug_logical_type):
  type
    lbug_logical_type* = lbug_logical_type_587203028
else:
  static :
    hint("Declaration of " & "lbug_logical_type" &
        " already exists, not redeclaring")
when not declared(lbug_date_t):
  type
    lbug_date_t* = lbug_date_t_587203040
else:
  static :
    hint("Declaration of " & "lbug_date_t" & " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_ms_t):
  type
    struct_lbug_timestamp_ms_t* = struct_lbug_timestamp_ms_t_587203046
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_ms_t" &
        " already exists, not redeclaring")
when not declared(lbug_connection):
  type
    lbug_connection* = lbug_connection_587203012
else:
  static :
    hint("Declaration of " & "lbug_connection" &
        " already exists, not redeclaring")
when not declared(struct_lbug_value):
  type
    struct_lbug_value* = struct_lbug_value_587203030
else:
  static :
    hint("Declaration of " & "struct_lbug_value" &
        " already exists, not redeclaring")
when not declared(struct_lbug_interval_t):
  type
    struct_lbug_interval_t* = struct_lbug_interval_t_587203062
else:
  static :
    hint("Declaration of " & "struct_lbug_interval_t" &
        " already exists, not redeclaring")
when not declared(struct_ArrowArray):
  type
    struct_ArrowArray* = struct_ArrowArray_587203000
else:
  static :
    hint("Declaration of " & "struct_ArrowArray" &
        " already exists, not redeclaring")
when not declared(lbug_flat_tuple):
  type
    lbug_flat_tuple* = lbug_flat_tuple_587203024
else:
  static :
    hint("Declaration of " & "lbug_flat_tuple" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ms_t):
  type
    lbug_timestamp_ms_t* = lbug_timestamp_ms_t_587203048
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ms_t" &
        " already exists, not redeclaring")
when not declared(lbug_interval_t):
  type
    lbug_interval_t* = lbug_interval_t_587203064
else:
  static :
    hint("Declaration of " & "lbug_interval_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_int128_t):
  type
    struct_lbug_int128_t* = struct_lbug_int128_t_587203070
else:
  static :
    hint("Declaration of " & "struct_lbug_int128_t" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_id):
  type
    lbug_data_type_id* = lbug_data_type_id_587203076
else:
  static :
    hint("Declaration of " & "lbug_data_type_id" &
        " already exists, not redeclaring")
when not declared(struct_tm):
  type
    struct_tm* = struct_tm_587203082
else:
  static :
    hint("Declaration of " & "struct_tm" & " already exists, not redeclaring")
when not declared(lbug_int128_t):
  type
    lbug_int128_t* = lbug_int128_t_587203072
else:
  static :
    hint("Declaration of " & "lbug_int128_t" &
        " already exists, not redeclaring")
when not declared(enum_lbug_data_type_id):
  type
    enum_lbug_data_type_id* = enum_lbug_data_type_id_587203074
else:
  static :
    hint("Declaration of " & "enum_lbug_data_type_id" &
        " already exists, not redeclaring")
when not declared(struct_lbug_date_t):
  type
    struct_lbug_date_t* = struct_lbug_date_t_587203038
else:
  static :
    hint("Declaration of " & "struct_lbug_date_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_tz_t):
  type
    struct_lbug_timestamp_tz_t* = struct_lbug_timestamp_tz_t_587203054
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_tz_t" &
        " already exists, not redeclaring")
when not declared(LBUG_API):
  when LBUG_HELPER_DLL_IMPORT is typedesc:
    type
      LBUG_API* = LBUG_HELPER_DLL_IMPORT ## Generated based on /usr/include/lbug.h:33:9
  else:
    when LBUG_HELPER_DLL_IMPORT is static:
      const
        LBUG_API* = LBUG_HELPER_DLL_IMPORT ## Generated based on /usr/include/lbug.h:33:9
    else:
      let LBUG_API* = LBUG_HELPER_DLL_IMPORT ## Generated based on /usr/include/lbug.h:33:9
else:
  static :
    hint("Declaration of " & "LBUG_API" & " already exists, not redeclaring")
when not declared(LBUG_DEPRECATED):
  when LBUG_HELPER_DEPRECATED is typedesc:
    type
      LBUG_DEPRECATED* = LBUG_HELPER_DEPRECATED ## Generated based on /usr/include/lbug.h:40:9
  else:
    when LBUG_HELPER_DEPRECATED is static:
      const
        LBUG_DEPRECATED* = LBUG_HELPER_DEPRECATED ## Generated based on /usr/include/lbug.h:40:9
    else:
      let LBUG_DEPRECATED* = LBUG_HELPER_DEPRECATED ## Generated based on /usr/include/lbug.h:40:9
else:
  static :
    hint("Declaration of " & "LBUG_DEPRECATED" &
        " already exists, not redeclaring")
when not declared(ARROW_FLAG_DICTIONARY_ORDERED):
  when 1 is static:
    const
      ARROW_FLAG_DICTIONARY_ORDERED* = 1 ## Generated based on /usr/include/lbug.h:60:9
  else:
    let ARROW_FLAG_DICTIONARY_ORDERED* = 1 ## Generated based on /usr/include/lbug.h:60:9
else:
  static :
    hint("Declaration of " & "ARROW_FLAG_DICTIONARY_ORDERED" &
        " already exists, not redeclaring")
when not declared(ARROW_FLAG_NULLABLE):
  when 2 is static:
    const
      ARROW_FLAG_NULLABLE* = 2 ## Generated based on /usr/include/lbug.h:61:9
  else:
    let ARROW_FLAG_NULLABLE* = 2 ## Generated based on /usr/include/lbug.h:61:9
else:
  static :
    hint("Declaration of " & "ARROW_FLAG_NULLABLE" &
        " already exists, not redeclaring")
when not declared(ARROW_FLAG_MAP_KEYS_SORTED):
  when 4 is static:
    const
      ARROW_FLAG_MAP_KEYS_SORTED* = 4 ## Generated based on /usr/include/lbug.h:62:9
  else:
    let ARROW_FLAG_MAP_KEYS_SORTED* = 4 ## Generated based on /usr/include/lbug.h:62:9
else:
  static :
    hint("Declaration of " & "ARROW_FLAG_MAP_KEYS_SORTED" &
        " already exists, not redeclaring")
when not declared(lbug_database_init):
  proc lbug_database_init*(database_path: cstring;
                           system_config: lbug_system_config_587203005;
                           out_database: ptr lbug_database_587203009): lbug_state_587203081 {.
      cdecl, importc: "lbug_database_init".}
else:
  static :
    hint("Declaration of " & "lbug_database_init" &
        " already exists, not redeclaring")
when not declared(lbug_database_destroy):
  proc lbug_database_destroy*(database: ptr lbug_database_587203009): void {.
      cdecl, importc: "lbug_database_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_database_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_default_system_config):
  proc lbug_default_system_config*(): lbug_system_config_587203005 {.cdecl,
      importc: "lbug_default_system_config".}
else:
  static :
    hint("Declaration of " & "lbug_default_system_config" &
        " already exists, not redeclaring")
when not declared(lbug_connection_init):
  proc lbug_connection_init*(database: ptr lbug_database_587203009;
                             out_connection: ptr lbug_connection_587203013): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_init".}
else:
  static :
    hint("Declaration of " & "lbug_connection_init" &
        " already exists, not redeclaring")
when not declared(lbug_connection_destroy):
  proc lbug_connection_destroy*(connection: ptr lbug_connection_587203013): void {.
      cdecl, importc: "lbug_connection_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_connection_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_connection_set_max_num_thread_for_exec):
  proc lbug_connection_set_max_num_thread_for_exec*(
      connection: ptr lbug_connection_587203013; num_threads: uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_set_max_num_thread_for_exec".}
else:
  static :
    hint("Declaration of " & "lbug_connection_set_max_num_thread_for_exec" &
        " already exists, not redeclaring")
when not declared(lbug_connection_get_max_num_thread_for_exec):
  proc lbug_connection_get_max_num_thread_for_exec*(
      connection: ptr lbug_connection_587203013; out_result: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_get_max_num_thread_for_exec".}
else:
  static :
    hint("Declaration of " & "lbug_connection_get_max_num_thread_for_exec" &
        " already exists, not redeclaring")
when not declared(lbug_connection_query):
  proc lbug_connection_query*(connection: ptr lbug_connection_587203013;
                              query: cstring;
                              out_query_result: ptr lbug_query_result_587203021): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_query".}
else:
  static :
    hint("Declaration of " & "lbug_connection_query" &
        " already exists, not redeclaring")
when not declared(lbug_connection_prepare):
  proc lbug_connection_prepare*(connection: ptr lbug_connection_587203013;
                                query: cstring; out_prepared_statement: ptr lbug_prepared_statement_587203017): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_prepare".}
else:
  static :
    hint("Declaration of " & "lbug_connection_prepare" &
        " already exists, not redeclaring")
when not declared(lbug_connection_execute):
  proc lbug_connection_execute*(connection: ptr lbug_connection_587203013;
      prepared_statement: ptr lbug_prepared_statement_587203017;
                                out_query_result: ptr lbug_query_result_587203021): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_execute".}
else:
  static :
    hint("Declaration of " & "lbug_connection_execute" &
        " already exists, not redeclaring")
when not declared(lbug_connection_create_arrow_table):
  proc lbug_connection_create_arrow_table*(connection: ptr lbug_connection_587203013;
      table_name: cstring; schema: ptr struct_ArrowSchema_587202999;
      arrays: ptr struct_ArrowArray_587203001; num_arrays: uint64;
      out_query_result: ptr lbug_query_result_587203021): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_create_arrow_table".}
else:
  static :
    hint("Declaration of " & "lbug_connection_create_arrow_table" &
        " already exists, not redeclaring")
when not declared(lbug_connection_create_arrow_rel_table):
  proc lbug_connection_create_arrow_rel_table*(connection: ptr lbug_connection_587203013;
      table_name: cstring; src_table_name: cstring; dst_table_name: cstring;
      schema: ptr struct_ArrowSchema_587202999; arrays: ptr struct_ArrowArray_587203001;
      num_arrays: uint64; out_query_result: ptr lbug_query_result_587203021): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_create_arrow_rel_table".}
else:
  static :
    hint("Declaration of " & "lbug_connection_create_arrow_rel_table" &
        " already exists, not redeclaring")
when not declared(lbug_connection_create_arrow_rel_table_csr):
  proc lbug_connection_create_arrow_rel_table_csr*(
      connection: ptr lbug_connection_587203013; table_name: cstring;
      src_table_name: cstring; dst_table_name: cstring;
      indices_schema: ptr struct_ArrowSchema_587202999;
      indices_arrays: ptr struct_ArrowArray_587203001;
      num_indices_arrays: uint64; indptr_schema: ptr struct_ArrowSchema_587202999;
      indptr_arrays: ptr struct_ArrowArray_587203001; num_indptr_arrays: uint64;
      dst_col_name: cstring; out_query_result: ptr lbug_query_result_587203021): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_create_arrow_rel_table_csr".}
else:
  static :
    hint("Declaration of " & "lbug_connection_create_arrow_rel_table_csr" &
        " already exists, not redeclaring")
when not declared(lbug_connection_drop_arrow_table):
  proc lbug_connection_drop_arrow_table*(connection: ptr lbug_connection_587203013;
      table_name: cstring; out_query_result: ptr lbug_query_result_587203021): lbug_state_587203081 {.
      cdecl, importc: "lbug_connection_drop_arrow_table".}
else:
  static :
    hint("Declaration of " & "lbug_connection_drop_arrow_table" &
        " already exists, not redeclaring")
when not declared(lbug_connection_interrupt):
  proc lbug_connection_interrupt*(connection: ptr lbug_connection_587203013): void {.
      cdecl, importc: "lbug_connection_interrupt".}
else:
  static :
    hint("Declaration of " & "lbug_connection_interrupt" &
        " already exists, not redeclaring")
when not declared(lbug_connection_set_query_timeout):
  proc lbug_connection_set_query_timeout*(connection: ptr lbug_connection_587203013;
      timeout_in_ms: uint64): lbug_state_587203081 {.cdecl,
      importc: "lbug_connection_set_query_timeout".}
else:
  static :
    hint("Declaration of " & "lbug_connection_set_query_timeout" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_destroy):
  proc lbug_prepared_statement_destroy*(prepared_statement: ptr lbug_prepared_statement_587203017): void {.
      cdecl, importc: "lbug_prepared_statement_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_is_success):
  proc lbug_prepared_statement_is_success*(
      prepared_statement: ptr lbug_prepared_statement_587203017): bool {.cdecl,
      importc: "lbug_prepared_statement_is_success".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_is_success" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_is_read_only):
  proc lbug_prepared_statement_is_read_only*(
      prepared_statement: ptr lbug_prepared_statement_587203017): bool {.cdecl,
      importc: "lbug_prepared_statement_is_read_only".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_is_read_only" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_get_error_message):
  proc lbug_prepared_statement_get_error_message*(
      prepared_statement: ptr lbug_prepared_statement_587203017): cstring {.
      cdecl, importc: "lbug_prepared_statement_get_error_message".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_get_error_message" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_bool):
  proc lbug_prepared_statement_bind_bool*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: bool): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_bool".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_bool" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_int64):
  proc lbug_prepared_statement_bind_int64*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: int64): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_int64".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_int64" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_int32):
  proc lbug_prepared_statement_bind_int32*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: int32): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_int32".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_int32" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_int16):
  proc lbug_prepared_statement_bind_int16*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: int16): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_int16".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_int16" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_int8):
  proc lbug_prepared_statement_bind_int8*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: int8): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_int8".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_int8" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_uint64):
  proc lbug_prepared_statement_bind_uint64*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: uint64): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_uint64".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_uint64" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_uint32):
  proc lbug_prepared_statement_bind_uint32*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: uint32): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_uint32".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_uint32" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_uint16):
  proc lbug_prepared_statement_bind_uint16*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: uint16): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_uint16".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_uint16" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_uint8):
  proc lbug_prepared_statement_bind_uint8*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: uint8): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_uint8".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_uint8" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_double):
  proc lbug_prepared_statement_bind_double*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: cdouble): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_double".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_double" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_float):
  proc lbug_prepared_statement_bind_float*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: cfloat): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_float".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_float" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_date):
  proc lbug_prepared_statement_bind_date*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: lbug_date_t_587203041): lbug_state_587203081 {.
      cdecl, importc: "lbug_prepared_statement_bind_date".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_date" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp_ns):
  proc lbug_prepared_statement_bind_timestamp_ns*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: lbug_timestamp_ns_t_587203045): lbug_state_587203081 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp_ns" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp_sec):
  proc lbug_prepared_statement_bind_timestamp_sec*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: lbug_timestamp_sec_t_587203053): lbug_state_587203081 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp_sec" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp_tz):
  proc lbug_prepared_statement_bind_timestamp_tz*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: lbug_timestamp_tz_t_587203057): lbug_state_587203081 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp_tz" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp_ms):
  proc lbug_prepared_statement_bind_timestamp_ms*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: lbug_timestamp_ms_t_587203049): lbug_state_587203081 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp_ms" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp):
  proc lbug_prepared_statement_bind_timestamp*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: lbug_timestamp_t_587203061): lbug_state_587203081 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_interval):
  proc lbug_prepared_statement_bind_interval*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: lbug_interval_t_587203065): lbug_state_587203081 {.
      cdecl, importc: "lbug_prepared_statement_bind_interval".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_interval" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_string):
  proc lbug_prepared_statement_bind_string*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: cstring): lbug_state_587203081 {.cdecl,
      importc: "lbug_prepared_statement_bind_string".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_string" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_value):
  proc lbug_prepared_statement_bind_value*(
      prepared_statement: ptr lbug_prepared_statement_587203017;
      param_name: cstring; value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_prepared_statement_bind_value".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_value" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_destroy):
  proc lbug_query_result_destroy*(query_result: ptr lbug_query_result_587203021): void {.
      cdecl, importc: "lbug_query_result_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_is_success):
  proc lbug_query_result_is_success*(query_result: ptr lbug_query_result_587203021): bool {.
      cdecl, importc: "lbug_query_result_is_success".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_is_success" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_error_message):
  proc lbug_query_result_get_error_message*(query_result: ptr lbug_query_result_587203021): cstring {.
      cdecl, importc: "lbug_query_result_get_error_message".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_error_message" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_num_columns):
  proc lbug_query_result_get_num_columns*(query_result: ptr lbug_query_result_587203021): uint64 {.
      cdecl, importc: "lbug_query_result_get_num_columns".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_num_columns" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_column_name):
  proc lbug_query_result_get_column_name*(query_result: ptr lbug_query_result_587203021;
      index: uint64; out_column_name: ptr cstring): lbug_state_587203081 {.
      cdecl, importc: "lbug_query_result_get_column_name".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_column_name" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_column_data_type):
  proc lbug_query_result_get_column_data_type*(
      query_result: ptr lbug_query_result_587203021; index: uint64;
      out_column_data_type: ptr lbug_logical_type_587203029): lbug_state_587203081 {.
      cdecl, importc: "lbug_query_result_get_column_data_type".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_column_data_type" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_num_tuples):
  proc lbug_query_result_get_num_tuples*(query_result: ptr lbug_query_result_587203021): uint64 {.
      cdecl, importc: "lbug_query_result_get_num_tuples".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_num_tuples" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_query_summary):
  proc lbug_query_result_get_query_summary*(query_result: ptr lbug_query_result_587203021;
      out_query_summary: ptr lbug_query_summary_587203069): lbug_state_587203081 {.
      cdecl, importc: "lbug_query_result_get_query_summary".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_query_summary" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_has_next):
  proc lbug_query_result_has_next*(query_result: ptr lbug_query_result_587203021): bool {.
      cdecl, importc: "lbug_query_result_has_next".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_has_next" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_next):
  proc lbug_query_result_get_next*(query_result: ptr lbug_query_result_587203021;
                                   out_flat_tuple: ptr lbug_flat_tuple_587203025): lbug_state_587203081 {.
      cdecl, importc: "lbug_query_result_get_next".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_next" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_has_next_query_result):
  proc lbug_query_result_has_next_query_result*(
      query_result: ptr lbug_query_result_587203021): bool {.cdecl,
      importc: "lbug_query_result_has_next_query_result".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_has_next_query_result" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_next_query_result):
  proc lbug_query_result_get_next_query_result*(
      query_result: ptr lbug_query_result_587203021;
      out_next_query_result: ptr lbug_query_result_587203021): lbug_state_587203081 {.
      cdecl, importc: "lbug_query_result_get_next_query_result".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_next_query_result" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_to_string):
  proc lbug_query_result_to_string*(query_result: ptr lbug_query_result_587203021): cstring {.
      cdecl, importc: "lbug_query_result_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_reset_iterator):
  proc lbug_query_result_reset_iterator*(query_result: ptr lbug_query_result_587203021): void {.
      cdecl, importc: "lbug_query_result_reset_iterator".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_reset_iterator" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_arrow_schema):
  proc lbug_query_result_get_arrow_schema*(query_result: ptr lbug_query_result_587203021;
      out_schema: ptr struct_ArrowSchema_587202999): lbug_state_587203081 {.
      cdecl, importc: "lbug_query_result_get_arrow_schema".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_arrow_schema" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_next_arrow_chunk):
  proc lbug_query_result_get_next_arrow_chunk*(
      query_result: ptr lbug_query_result_587203021; chunk_size: int64;
      out_arrow_array: ptr struct_ArrowArray_587203001): lbug_state_587203081 {.
      cdecl, importc: "lbug_query_result_get_next_arrow_chunk".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_next_arrow_chunk" &
        " already exists, not redeclaring")
when not declared(lbug_flat_tuple_destroy):
  proc lbug_flat_tuple_destroy*(flat_tuple: ptr lbug_flat_tuple_587203025): void {.
      cdecl, importc: "lbug_flat_tuple_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_flat_tuple_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_flat_tuple_get_value):
  proc lbug_flat_tuple_get_value*(flat_tuple: ptr lbug_flat_tuple_587203025;
                                  index: uint64; out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_flat_tuple_get_value".}
else:
  static :
    hint("Declaration of " & "lbug_flat_tuple_get_value" &
        " already exists, not redeclaring")
when not declared(lbug_flat_tuple_to_string):
  proc lbug_flat_tuple_to_string*(flat_tuple: ptr lbug_flat_tuple_587203025): cstring {.
      cdecl, importc: "lbug_flat_tuple_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_flat_tuple_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_create):
  proc lbug_data_type_create*(id: lbug_data_type_id_587203077;
                              child_type: ptr lbug_logical_type_587203029;
                              num_elements_in_array: uint64;
                              out_type: ptr lbug_logical_type_587203029): void {.
      cdecl, importc: "lbug_data_type_create".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_create" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_clone):
  proc lbug_data_type_clone*(data_type: ptr lbug_logical_type_587203029;
                             out_type: ptr lbug_logical_type_587203029): void {.
      cdecl, importc: "lbug_data_type_clone".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_clone" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_destroy):
  proc lbug_data_type_destroy*(data_type: ptr lbug_logical_type_587203029): void {.
      cdecl, importc: "lbug_data_type_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_equals):
  proc lbug_data_type_equals*(data_type1: ptr lbug_logical_type_587203029;
                              data_type2: ptr lbug_logical_type_587203029): bool {.
      cdecl, importc: "lbug_data_type_equals".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_equals" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_get_id):
  proc lbug_data_type_get_id*(data_type: ptr lbug_logical_type_587203029): lbug_data_type_id_587203077 {.
      cdecl, importc: "lbug_data_type_get_id".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_get_id" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_get_child_type):
  proc lbug_data_type_get_child_type*(data_type: ptr lbug_logical_type_587203029;
                                      out_result: ptr lbug_logical_type_587203029): lbug_state_587203081 {.
      cdecl, importc: "lbug_data_type_get_child_type".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_get_child_type" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_get_num_elements_in_array):
  proc lbug_data_type_get_num_elements_in_array*(
      data_type: ptr lbug_logical_type_587203029; out_result: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_data_type_get_num_elements_in_array".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_get_num_elements_in_array" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_null):
  proc lbug_value_create_null*(): ptr lbug_value_587203033 {.cdecl,
      importc: "lbug_value_create_null".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_null" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_null_with_data_type):
  proc lbug_value_create_null_with_data_type*(data_type: ptr lbug_logical_type_587203029): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_null_with_data_type".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_null_with_data_type" &
        " already exists, not redeclaring")
when not declared(lbug_value_is_null):
  proc lbug_value_is_null*(value: ptr lbug_value_587203033): bool {.cdecl,
      importc: "lbug_value_is_null".}
else:
  static :
    hint("Declaration of " & "lbug_value_is_null" &
        " already exists, not redeclaring")
when not declared(lbug_value_set_null):
  proc lbug_value_set_null*(value: ptr lbug_value_587203033; is_null: bool): void {.
      cdecl, importc: "lbug_value_set_null".}
else:
  static :
    hint("Declaration of " & "lbug_value_set_null" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_default):
  proc lbug_value_create_default*(data_type: ptr lbug_logical_type_587203029): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_default".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_default" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_bool):
  proc lbug_value_create_bool*(val_private: bool): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_bool".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_bool" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int8):
  proc lbug_value_create_int8*(val_private: int8): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_int8".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int8" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int16):
  proc lbug_value_create_int16*(val_private: int16): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_int16".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int16" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int32):
  proc lbug_value_create_int32*(val_private: int32): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_int32".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int32" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int64):
  proc lbug_value_create_int64*(val_private: int64): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_int64".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int64" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uint8):
  proc lbug_value_create_uint8*(val_private: uint8): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_uint8".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uint8" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uint16):
  proc lbug_value_create_uint16*(val_private: uint16): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_uint16".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uint16" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uint32):
  proc lbug_value_create_uint32*(val_private: uint32): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_uint32".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uint32" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uint64):
  proc lbug_value_create_uint64*(val_private: uint64): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_uint64".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uint64" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int128):
  proc lbug_value_create_int128*(val_private: lbug_int128_t_587203073): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_int128".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int128" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_float):
  proc lbug_value_create_float*(val_private: cfloat): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_float".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_float" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_double):
  proc lbug_value_create_double*(val_private: cdouble): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_double".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_double" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_decimal):
  proc lbug_value_create_decimal*(val_private: cstring; precision: uint32;
                                  scale: uint32): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_decimal".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_decimal" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_internal_id):
  proc lbug_value_create_internal_id*(val_private: lbug_internal_id_t_587203037): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_internal_id".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_internal_id" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_date):
  proc lbug_value_create_date*(val_private: lbug_date_t_587203041): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_date".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_date" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp_ns):
  proc lbug_value_create_timestamp_ns*(val_private: lbug_timestamp_ns_t_587203045): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp_ns" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp_ms):
  proc lbug_value_create_timestamp_ms*(val_private: lbug_timestamp_ms_t_587203049): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp_ms" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp_sec):
  proc lbug_value_create_timestamp_sec*(val_private: lbug_timestamp_sec_t_587203053): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp_sec" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp_tz):
  proc lbug_value_create_timestamp_tz*(val_private: lbug_timestamp_tz_t_587203057): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp_tz" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp):
  proc lbug_value_create_timestamp*(val_private: lbug_timestamp_t_587203061): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_timestamp".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_interval):
  proc lbug_value_create_interval*(val_private: lbug_interval_t_587203065): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_interval".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_interval" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_string):
  proc lbug_value_create_string*(val_private: cstring): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_string".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_string" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_json):
  proc lbug_value_create_json*(val_private: cstring): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_json".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_json" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uuid):
  proc lbug_value_create_uuid*(val_private: cstring): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_create_uuid".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uuid" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_list):
  proc lbug_value_create_list*(num_elements: uint64;
                               elements: ptr ptr lbug_value_587203033;
                               out_value: ptr ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_create_list".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_list" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_struct):
  proc lbug_value_create_struct*(num_fields: uint64; field_names: ptr cstring;
                                 field_values: ptr ptr lbug_value_587203033;
                                 out_value: ptr ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_create_struct".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_struct" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_map):
  proc lbug_value_create_map*(num_fields: uint64; keys: ptr ptr lbug_value_587203033;
                              values: ptr ptr lbug_value_587203033;
                              out_value: ptr ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_create_map".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_map" &
        " already exists, not redeclaring")
when not declared(lbug_value_clone):
  proc lbug_value_clone*(value: ptr lbug_value_587203033): ptr lbug_value_587203033 {.
      cdecl, importc: "lbug_value_clone".}
else:
  static :
    hint("Declaration of " & "lbug_value_clone" &
        " already exists, not redeclaring")
when not declared(lbug_value_copy):
  proc lbug_value_copy*(value: ptr lbug_value_587203033; other: ptr lbug_value_587203033): void {.
      cdecl, importc: "lbug_value_copy".}
else:
  static :
    hint("Declaration of " & "lbug_value_copy" &
        " already exists, not redeclaring")
when not declared(lbug_value_destroy):
  proc lbug_value_destroy*(value: ptr lbug_value_587203033): void {.cdecl,
      importc: "lbug_value_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_value_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_list_size):
  proc lbug_value_get_list_size*(value: ptr lbug_value_587203033;
                                 out_result: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_list_size".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_list_size" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_list_element):
  proc lbug_value_get_list_element*(value: ptr lbug_value_587203033;
                                    index: uint64; out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_list_element".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_list_element" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_struct_num_fields):
  proc lbug_value_get_struct_num_fields*(value: ptr lbug_value_587203033;
      out_result: ptr uint64): lbug_state_587203081 {.cdecl,
      importc: "lbug_value_get_struct_num_fields".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_struct_num_fields" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_struct_field_name):
  proc lbug_value_get_struct_field_name*(value: ptr lbug_value_587203033;
      index: uint64; out_result: ptr cstring): lbug_state_587203081 {.cdecl,
      importc: "lbug_value_get_struct_field_name".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_struct_field_name" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_struct_field_index):
  proc lbug_value_get_struct_field_index*(value: ptr lbug_value_587203033;
      field_name: cstring; out_result: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_struct_field_index".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_struct_field_index" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_struct_field_value):
  proc lbug_value_get_struct_field_value*(value: ptr lbug_value_587203033;
      index: uint64; out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_struct_field_value".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_struct_field_value" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_map_size):
  proc lbug_value_get_map_size*(value: ptr lbug_value_587203033;
                                out_result: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_map_size".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_map_size" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_map_key):
  proc lbug_value_get_map_key*(value: ptr lbug_value_587203033; index: uint64;
                               out_key: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_map_key".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_map_key" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_map_value):
  proc lbug_value_get_map_value*(value: ptr lbug_value_587203033; index: uint64;
                                 out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_map_value".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_map_value" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_recursive_rel_node_list):
  proc lbug_value_get_recursive_rel_node_list*(value: ptr lbug_value_587203033;
      out_value: ptr lbug_value_587203033): lbug_state_587203081 {.cdecl,
      importc: "lbug_value_get_recursive_rel_node_list".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_recursive_rel_node_list" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_recursive_rel_rel_list):
  proc lbug_value_get_recursive_rel_rel_list*(value: ptr lbug_value_587203033;
      out_value: ptr lbug_value_587203033): lbug_state_587203081 {.cdecl,
      importc: "lbug_value_get_recursive_rel_rel_list".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_recursive_rel_rel_list" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_data_type):
  proc lbug_value_get_data_type*(value: ptr lbug_value_587203033;
                                 out_type: ptr lbug_logical_type_587203029): void {.
      cdecl, importc: "lbug_value_get_data_type".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_data_type" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_bool):
  proc lbug_value_get_bool*(value: ptr lbug_value_587203033;
                            out_result: ptr bool): lbug_state_587203081 {.cdecl,
      importc: "lbug_value_get_bool".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_bool" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int8):
  proc lbug_value_get_int8*(value: ptr lbug_value_587203033;
                            out_result: ptr int8): lbug_state_587203081 {.cdecl,
      importc: "lbug_value_get_int8".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int8" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int16):
  proc lbug_value_get_int16*(value: ptr lbug_value_587203033;
                             out_result: ptr int16): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_int16".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int16" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int32):
  proc lbug_value_get_int32*(value: ptr lbug_value_587203033;
                             out_result: ptr int32): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_int32".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int32" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int64):
  proc lbug_value_get_int64*(value: ptr lbug_value_587203033;
                             out_result: ptr int64): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_int64".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int64" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uint8):
  proc lbug_value_get_uint8*(value: ptr lbug_value_587203033;
                             out_result: ptr uint8): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_uint8".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uint8" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uint16):
  proc lbug_value_get_uint16*(value: ptr lbug_value_587203033;
                              out_result: ptr uint16): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_uint16".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uint16" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uint32):
  proc lbug_value_get_uint32*(value: ptr lbug_value_587203033;
                              out_result: ptr uint32): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_uint32".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uint32" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uint64):
  proc lbug_value_get_uint64*(value: ptr lbug_value_587203033;
                              out_result: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_uint64".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uint64" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int128):
  proc lbug_value_get_int128*(value: ptr lbug_value_587203033;
                              out_result: ptr lbug_int128_t_587203073): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_int128".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int128" &
        " already exists, not redeclaring")
when not declared(lbug_int128_t_from_string):
  proc lbug_int128_t_from_string*(str: cstring; out_result: ptr lbug_int128_t_587203073): lbug_state_587203081 {.
      cdecl, importc: "lbug_int128_t_from_string".}
else:
  static :
    hint("Declaration of " & "lbug_int128_t_from_string" &
        " already exists, not redeclaring")
when not declared(lbug_int128_t_to_string):
  proc lbug_int128_t_to_string*(val: lbug_int128_t_587203073;
                                out_result: ptr cstring): lbug_state_587203081 {.
      cdecl, importc: "lbug_int128_t_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_int128_t_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_float):
  proc lbug_value_get_float*(value: ptr lbug_value_587203033;
                             out_result: ptr cfloat): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_float".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_float" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_double):
  proc lbug_value_get_double*(value: ptr lbug_value_587203033;
                              out_result: ptr cdouble): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_double".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_double" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_internal_id):
  proc lbug_value_get_internal_id*(value: ptr lbug_value_587203033;
                                   out_result: ptr lbug_internal_id_t_587203037): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_internal_id".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_internal_id" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_date):
  proc lbug_value_get_date*(value: ptr lbug_value_587203033;
                            out_result: ptr lbug_date_t_587203041): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_date".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_date" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp):
  proc lbug_value_get_timestamp*(value: ptr lbug_value_587203033;
                                 out_result: ptr lbug_timestamp_t_587203061): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_timestamp".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp_ns):
  proc lbug_value_get_timestamp_ns*(value: ptr lbug_value_587203033;
                                    out_result: ptr lbug_timestamp_ns_t_587203045): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp_ns" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp_ms):
  proc lbug_value_get_timestamp_ms*(value: ptr lbug_value_587203033;
                                    out_result: ptr lbug_timestamp_ms_t_587203049): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp_ms" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp_sec):
  proc lbug_value_get_timestamp_sec*(value: ptr lbug_value_587203033;
                                     out_result: ptr lbug_timestamp_sec_t_587203053): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp_sec" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp_tz):
  proc lbug_value_get_timestamp_tz*(value: ptr lbug_value_587203033;
                                    out_result: ptr lbug_timestamp_tz_t_587203057): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp_tz" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_interval):
  proc lbug_value_get_interval*(value: ptr lbug_value_587203033;
                                out_result: ptr lbug_interval_t_587203065): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_interval".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_interval" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_decimal_as_string):
  proc lbug_value_get_decimal_as_string*(value: ptr lbug_value_587203033;
      out_result: ptr cstring): lbug_state_587203081 {.cdecl,
      importc: "lbug_value_get_decimal_as_string".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_decimal_as_string" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_string):
  proc lbug_value_get_string*(value: ptr lbug_value_587203033;
                              out_result: ptr cstring): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_string".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_string" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_blob):
  proc lbug_value_get_blob*(value: ptr lbug_value_587203033;
                            out_result: ptr ptr uint8; out_length: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_blob".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_blob" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uuid):
  proc lbug_value_get_uuid*(value: ptr lbug_value_587203033;
                            out_result: ptr cstring): lbug_state_587203081 {.
      cdecl, importc: "lbug_value_get_uuid".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uuid" &
        " already exists, not redeclaring")
when not declared(lbug_value_to_string):
  proc lbug_value_to_string*(value: ptr lbug_value_587203033): cstring {.cdecl,
      importc: "lbug_value_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_value_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_id_val):
  proc lbug_node_val_get_id_val*(node_val: ptr lbug_value_587203033;
                                 out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_node_val_get_id_val".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_id_val" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_label_val):
  proc lbug_node_val_get_label_val*(node_val: ptr lbug_value_587203033;
                                    out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_node_val_get_label_val".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_label_val" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_property_size):
  proc lbug_node_val_get_property_size*(node_val: ptr lbug_value_587203033;
                                        out_value: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_node_val_get_property_size".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_property_size" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_property_name_at):
  proc lbug_node_val_get_property_name_at*(node_val: ptr lbug_value_587203033;
      index: uint64; out_result: ptr cstring): lbug_state_587203081 {.cdecl,
      importc: "lbug_node_val_get_property_name_at".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_property_name_at" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_property_value_at):
  proc lbug_node_val_get_property_value_at*(node_val: ptr lbug_value_587203033;
      index: uint64; out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_node_val_get_property_value_at".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_property_value_at" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_to_string):
  proc lbug_node_val_to_string*(node_val: ptr lbug_value_587203033;
                                out_result: ptr cstring): lbug_state_587203081 {.
      cdecl, importc: "lbug_node_val_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_id_val):
  proc lbug_rel_val_get_id_val*(rel_val: ptr lbug_value_587203033;
                                out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_rel_val_get_id_val".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_id_val" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_src_id_val):
  proc lbug_rel_val_get_src_id_val*(rel_val: ptr lbug_value_587203033;
                                    out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_rel_val_get_src_id_val".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_src_id_val" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_dst_id_val):
  proc lbug_rel_val_get_dst_id_val*(rel_val: ptr lbug_value_587203033;
                                    out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_rel_val_get_dst_id_val".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_dst_id_val" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_label_val):
  proc lbug_rel_val_get_label_val*(rel_val: ptr lbug_value_587203033;
                                   out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_rel_val_get_label_val".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_label_val" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_property_size):
  proc lbug_rel_val_get_property_size*(rel_val: ptr lbug_value_587203033;
                                       out_value: ptr uint64): lbug_state_587203081 {.
      cdecl, importc: "lbug_rel_val_get_property_size".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_property_size" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_property_name_at):
  proc lbug_rel_val_get_property_name_at*(rel_val: ptr lbug_value_587203033;
      index: uint64; out_result: ptr cstring): lbug_state_587203081 {.cdecl,
      importc: "lbug_rel_val_get_property_name_at".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_property_name_at" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_property_value_at):
  proc lbug_rel_val_get_property_value_at*(rel_val: ptr lbug_value_587203033;
      index: uint64; out_value: ptr lbug_value_587203033): lbug_state_587203081 {.
      cdecl, importc: "lbug_rel_val_get_property_value_at".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_property_value_at" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_to_string):
  proc lbug_rel_val_to_string*(rel_val: ptr lbug_value_587203033;
                               out_result: ptr cstring): lbug_state_587203081 {.
      cdecl, importc: "lbug_rel_val_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_destroy_string):
  proc lbug_destroy_string*(str: cstring): void {.cdecl,
      importc: "lbug_destroy_string".}
else:
  static :
    hint("Declaration of " & "lbug_destroy_string" &
        " already exists, not redeclaring")
when not declared(lbug_destroy_blob):
  proc lbug_destroy_blob*(blob: ptr uint8): void {.cdecl,
      importc: "lbug_destroy_blob".}
else:
  static :
    hint("Declaration of " & "lbug_destroy_blob" &
        " already exists, not redeclaring")
when not declared(lbug_query_summary_destroy):
  proc lbug_query_summary_destroy*(query_summary: ptr lbug_query_summary_587203069): void {.
      cdecl, importc: "lbug_query_summary_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_query_summary_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_query_summary_get_compiling_time):
  proc lbug_query_summary_get_compiling_time*(
      query_summary: ptr lbug_query_summary_587203069): cdouble {.cdecl,
      importc: "lbug_query_summary_get_compiling_time".}
else:
  static :
    hint("Declaration of " & "lbug_query_summary_get_compiling_time" &
        " already exists, not redeclaring")
when not declared(lbug_query_summary_get_execution_time):
  proc lbug_query_summary_get_execution_time*(
      query_summary: ptr lbug_query_summary_587203069): cdouble {.cdecl,
      importc: "lbug_query_summary_get_execution_time".}
else:
  static :
    hint("Declaration of " & "lbug_query_summary_get_execution_time" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ns_to_tm):
  proc lbug_timestamp_ns_to_tm*(timestamp: lbug_timestamp_ns_t_587203045;
                                out_result: ptr struct_tm_587203083): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_ns_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ns_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ms_to_tm):
  proc lbug_timestamp_ms_to_tm*(timestamp: lbug_timestamp_ms_t_587203049;
                                out_result: ptr struct_tm_587203083): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_ms_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ms_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_sec_to_tm):
  proc lbug_timestamp_sec_to_tm*(timestamp: lbug_timestamp_sec_t_587203053;
                                 out_result: ptr struct_tm_587203083): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_sec_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_sec_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_tz_to_tm):
  proc lbug_timestamp_tz_to_tm*(timestamp: lbug_timestamp_tz_t_587203057;
                                out_result: ptr struct_tm_587203083): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_tz_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_tz_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_to_tm):
  proc lbug_timestamp_to_tm*(timestamp: lbug_timestamp_t_587203061;
                             out_result: ptr struct_tm_587203083): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ns_from_tm):
  proc lbug_timestamp_ns_from_tm*(tm: struct_tm_587203083;
                                  out_result: ptr lbug_timestamp_ns_t_587203045): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_ns_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ns_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ms_from_tm):
  proc lbug_timestamp_ms_from_tm*(tm: struct_tm_587203083;
                                  out_result: ptr lbug_timestamp_ms_t_587203049): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_ms_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ms_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_sec_from_tm):
  proc lbug_timestamp_sec_from_tm*(tm: struct_tm_587203083;
                                   out_result: ptr lbug_timestamp_sec_t_587203053): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_sec_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_sec_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_tz_from_tm):
  proc lbug_timestamp_tz_from_tm*(tm: struct_tm_587203083;
                                  out_result: ptr lbug_timestamp_tz_t_587203057): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_tz_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_tz_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_from_tm):
  proc lbug_timestamp_from_tm*(tm: struct_tm_587203083;
                               out_result: ptr lbug_timestamp_t_587203061): lbug_state_587203081 {.
      cdecl, importc: "lbug_timestamp_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_date_to_string):
  proc lbug_date_to_string*(date: lbug_date_t_587203041; out_result: ptr cstring): lbug_state_587203081 {.
      cdecl, importc: "lbug_date_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_date_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_date_from_string):
  proc lbug_date_from_string*(str: cstring; out_result: ptr lbug_date_t_587203041): lbug_state_587203081 {.
      cdecl, importc: "lbug_date_from_string".}
else:
  static :
    hint("Declaration of " & "lbug_date_from_string" &
        " already exists, not redeclaring")
when not declared(lbug_date_to_tm):
  proc lbug_date_to_tm*(date: lbug_date_t_587203041; out_result: ptr struct_tm_587203083): lbug_state_587203081 {.
      cdecl, importc: "lbug_date_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_date_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_date_from_tm):
  proc lbug_date_from_tm*(tm: struct_tm_587203083; out_result: ptr lbug_date_t_587203041): lbug_state_587203081 {.
      cdecl, importc: "lbug_date_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_date_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_interval_to_difftime):
  proc lbug_interval_to_difftime*(interval: lbug_interval_t_587203065;
                                  out_result: ptr cdouble): void {.cdecl,
      importc: "lbug_interval_to_difftime".}
else:
  static :
    hint("Declaration of " & "lbug_interval_to_difftime" &
        " already exists, not redeclaring")
when not declared(lbug_interval_from_difftime):
  proc lbug_interval_from_difftime*(difftime: cdouble;
                                    out_result: ptr lbug_interval_t_587203065): void {.
      cdecl, importc: "lbug_interval_from_difftime".}
else:
  static :
    hint("Declaration of " & "lbug_interval_from_difftime" &
        " already exists, not redeclaring")
when not declared(lbug_get_version):
  proc lbug_get_version*(): cstring {.cdecl, importc: "lbug_get_version".}
else:
  static :
    hint("Declaration of " & "lbug_get_version" &
        " already exists, not redeclaring")
when not declared(lbug_get_storage_version):
  proc lbug_get_storage_version*(): uint64 {.cdecl,
      importc: "lbug_get_storage_version".}
else:
  static :
    hint("Declaration of " & "lbug_get_storage_version" &
        " already exists, not redeclaring")
when not declared(lbug_get_last_error):
  proc lbug_get_last_error*(): cstring {.cdecl, importc: "lbug_get_last_error".}
else:
  static :
    hint("Declaration of " & "lbug_get_last_error" &
        " already exists, not redeclaring")