
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_lbug_data_type_id_570425857* {.size: sizeof(cuint).} = enum
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
  enum_lbug_state_570425861* {.size: sizeof(cuint).} = enum
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
  struct_ArrowSchema_570425781 {.pure, inheritable, bycopy.} = object
    format*: cstring         ## Generated based on /usr/local/include/lbug.h:64:8
    name*: cstring
    metadata*: cstring
    flags*: int64
    n_children*: int64
    children*: ptr ptr struct_ArrowSchema_570425782
    dictionary*: ptr struct_ArrowSchema_570425782
    release*: proc (a0: ptr struct_ArrowSchema_570425782): void {.cdecl.}
    private_data*: pointer
  struct_ArrowArray_570425783 {.pure, inheritable, bycopy.} = object
    length*: int64           ## Generated based on /usr/local/include/lbug.h:80:8
    null_count*: int64
    offset*: int64
    n_buffers*: int64
    n_children*: int64
    buffers*: ptr pointer
    children*: ptr ptr struct_ArrowArray_570425784
    dictionary*: ptr struct_ArrowArray_570425784
    release*: proc (a0: ptr struct_ArrowArray_570425784): void {.cdecl.}
    private_data*: pointer
  struct_lbug_system_config_570425785 {.pure, inheritable, bycopy.} = object
    buffer_pool_size*: uint64 ## Generated based on /usr/local/include/lbug.h:112:9
    max_num_threads*: uint64
    enable_compression*: bool
    read_only*: bool
    max_db_size*: uint64
    auto_checkpoint*: bool
    checkpoint_threshold*: uint64
  lbug_system_config_570425787 = struct_lbug_system_config_570425786 ## Generated based on /usr/local/include/lbug.h:141:3
  struct_lbug_database_570425789 {.pure, inheritable, bycopy.} = object
    internal_database*: pointer ## Generated based on /usr/local/include/lbug.h:146:9
  lbug_database_570425791 = struct_lbug_database_570425790 ## Generated based on /usr/local/include/lbug.h:148:3
  struct_lbug_connection_570425793 {.pure, inheritable, bycopy.} = object
    internal_connection*: pointer ## Generated based on /usr/local/include/lbug.h:155:9
  lbug_connection_570425795 = struct_lbug_connection_570425794 ## Generated based on /usr/local/include/lbug.h:157:3
  struct_lbug_prepared_statement_570425797 {.pure, inheritable, bycopy.} = object
    internal_prepared_statement*: pointer ## Generated based on /usr/local/include/lbug.h:163:9
    internal_bound_values*: pointer
  lbug_prepared_statement_570425799 = struct_lbug_prepared_statement_570425798 ## Generated based on /usr/local/include/lbug.h:166:3
  struct_lbug_query_result_570425801 {.pure, inheritable, bycopy.} = object
    internal_query_result*: pointer ## Generated based on /usr/local/include/lbug.h:171:9
    internal_is_owned_by_cpp*: bool
  lbug_query_result_570425803 = struct_lbug_query_result_570425802 ## Generated based on /usr/local/include/lbug.h:174:3
  struct_lbug_flat_tuple_570425805 {.pure, inheritable, bycopy.} = object
    internal_flat_tuple*: pointer ## Generated based on /usr/local/include/lbug.h:179:9
    internal_is_owned_by_cpp*: bool
  lbug_flat_tuple_570425807 = struct_lbug_flat_tuple_570425806 ## Generated based on /usr/local/include/lbug.h:182:3
  struct_lbug_logical_type_570425809 {.pure, inheritable, bycopy.} = object
    internal_data_type*: pointer ## Generated based on /usr/local/include/lbug.h:187:9
  lbug_logical_type_570425811 = struct_lbug_logical_type_570425810 ## Generated based on /usr/local/include/lbug.h:189:3
  struct_lbug_value_570425813 {.pure, inheritable, bycopy.} = object
    internal_value*: pointer ## Generated based on /usr/local/include/lbug.h:194:9
    internal_is_owned_by_cpp*: bool
  lbug_value_570425815 = struct_lbug_value_570425814 ## Generated based on /usr/local/include/lbug.h:197:3
  struct_lbug_internal_id_t_570425817 {.pure, inheritable, bycopy.} = object
    table_id*: uint64        ## Generated based on /usr/local/include/lbug.h:202:9
    offset*: uint64
  lbug_internal_id_t_570425819 = struct_lbug_internal_id_t_570425818 ## Generated based on /usr/local/include/lbug.h:205:3
  struct_lbug_date_t_570425821 {.pure, inheritable, bycopy.} = object
    days*: int32             ## Generated based on /usr/local/include/lbug.h:210:9
  lbug_date_t_570425823 = struct_lbug_date_t_570425822 ## Generated based on /usr/local/include/lbug.h:213:3
  struct_lbug_timestamp_ns_t_570425825 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/local/include/lbug.h:219:9
  lbug_timestamp_ns_t_570425827 = struct_lbug_timestamp_ns_t_570425826 ## Generated based on /usr/local/include/lbug.h:222:3
  struct_lbug_timestamp_ms_t_570425829 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/local/include/lbug.h:228:9
  lbug_timestamp_ms_t_570425831 = struct_lbug_timestamp_ms_t_570425830 ## Generated based on /usr/local/include/lbug.h:231:3
  struct_lbug_timestamp_sec_t_570425833 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/local/include/lbug.h:237:9
  lbug_timestamp_sec_t_570425835 = struct_lbug_timestamp_sec_t_570425834 ## Generated based on /usr/local/include/lbug.h:240:3
  struct_lbug_timestamp_tz_t_570425837 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/local/include/lbug.h:246:9
  lbug_timestamp_tz_t_570425839 = struct_lbug_timestamp_tz_t_570425838 ## Generated based on /usr/local/include/lbug.h:249:3
  struct_lbug_timestamp_t_570425841 {.pure, inheritable, bycopy.} = object
    value*: int64            ## Generated based on /usr/local/include/lbug.h:255:9
  lbug_timestamp_t_570425843 = struct_lbug_timestamp_t_570425842 ## Generated based on /usr/local/include/lbug.h:258:3
  struct_lbug_interval_t_570425845 {.pure, inheritable, bycopy.} = object
    months*: int32           ## Generated based on /usr/local/include/lbug.h:263:9
    days*: int32
    micros*: int64
  lbug_interval_t_570425847 = struct_lbug_interval_t_570425846 ## Generated based on /usr/local/include/lbug.h:267:3
  struct_lbug_query_summary_570425849 {.pure, inheritable, bycopy.} = object
    internal_query_summary*: pointer ## Generated based on /usr/local/include/lbug.h:273:9
  lbug_query_summary_570425851 = struct_lbug_query_summary_570425850 ## Generated based on /usr/local/include/lbug.h:275:3
  struct_lbug_int128_t_570425853 {.pure, inheritable, bycopy.} = object
    low*: uint64             ## Generated based on /usr/local/include/lbug.h:277:9
    high*: int64
  lbug_int128_t_570425855 = struct_lbug_int128_t_570425854 ## Generated based on /usr/local/include/lbug.h:280:3
  lbug_data_type_id_570425859 = enum_lbug_data_type_id_570425858 ## Generated based on /usr/local/include/lbug.h:325:3
  lbug_state_570425863 = enum_lbug_state_570425862 ## Generated based on /usr/local/include/lbug.h:330:49
  struct_tm_570425865 {.pure, inheritable, bycopy.} = object
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
  lbug_database_570425792 = (when declared(lbug_database):
    when ownSizeof(lbug_database) != ownSizeof(lbug_database_570425791):
      static :
        warning("Declaration of " & "lbug_database" &
            " exists but with different size")
    lbug_database
  else:
    lbug_database_570425791)
  lbug_timestamp_t_570425844 = (when declared(lbug_timestamp_t):
    when ownSizeof(lbug_timestamp_t) != ownSizeof(lbug_timestamp_t_570425843):
      static :
        warning("Declaration of " & "lbug_timestamp_t" &
            " exists but with different size")
    lbug_timestamp_t
  else:
    lbug_timestamp_t_570425843)
  struct_lbug_flat_tuple_570425806 = (when declared(struct_lbug_flat_tuple):
    when ownSizeof(struct_lbug_flat_tuple) != ownSizeof(struct_lbug_flat_tuple_570425805):
      static :
        warning("Declaration of " & "struct_lbug_flat_tuple" &
            " exists but with different size")
    struct_lbug_flat_tuple
  else:
    struct_lbug_flat_tuple_570425805)
  lbug_value_570425816 = (when declared(lbug_value):
    when ownSizeof(lbug_value) != ownSizeof(lbug_value_570425815):
      static :
        warning("Declaration of " & "lbug_value" &
            " exists but with different size")
    lbug_value
  else:
    lbug_value_570425815)
  lbug_query_summary_570425852 = (when declared(lbug_query_summary):
    when ownSizeof(lbug_query_summary) != ownSizeof(lbug_query_summary_570425851):
      static :
        warning("Declaration of " & "lbug_query_summary" &
            " exists but with different size")
    lbug_query_summary
  else:
    lbug_query_summary_570425851)
  enum_lbug_state_570425862 = (when declared(enum_lbug_state):
    when ownSizeof(enum_lbug_state) != ownSizeof(enum_lbug_state_570425861):
      static :
        warning("Declaration of " & "enum_lbug_state" &
            " exists but with different size")
    enum_lbug_state
  else:
    enum_lbug_state_570425861)
  lbug_timestamp_sec_t_570425836 = (when declared(lbug_timestamp_sec_t):
    when ownSizeof(lbug_timestamp_sec_t) != ownSizeof(lbug_timestamp_sec_t_570425835):
      static :
        warning("Declaration of " & "lbug_timestamp_sec_t" &
            " exists but with different size")
    lbug_timestamp_sec_t
  else:
    lbug_timestamp_sec_t_570425835)
  struct_lbug_system_config_570425786 = (when declared(struct_lbug_system_config):
    when ownSizeof(struct_lbug_system_config) !=
        ownSizeof(struct_lbug_system_config_570425785):
      static :
        warning("Declaration of " & "struct_lbug_system_config" &
            " exists but with different size")
    struct_lbug_system_config
  else:
    struct_lbug_system_config_570425785)
  lbug_state_570425864 = (when declared(lbug_state):
    when ownSizeof(lbug_state) != ownSizeof(lbug_state_570425863):
      static :
        warning("Declaration of " & "lbug_state" &
            " exists but with different size")
    lbug_state
  else:
    lbug_state_570425863)
  lbug_system_config_570425788 = (when declared(lbug_system_config):
    when ownSizeof(lbug_system_config) != ownSizeof(lbug_system_config_570425787):
      static :
        warning("Declaration of " & "lbug_system_config" &
            " exists but with different size")
    lbug_system_config
  else:
    lbug_system_config_570425787)
  struct_lbug_connection_570425794 = (when declared(struct_lbug_connection):
    when ownSizeof(struct_lbug_connection) != ownSizeof(struct_lbug_connection_570425793):
      static :
        warning("Declaration of " & "struct_lbug_connection" &
            " exists but with different size")
    struct_lbug_connection
  else:
    struct_lbug_connection_570425793)
  lbug_timestamp_ns_t_570425828 = (when declared(lbug_timestamp_ns_t):
    when ownSizeof(lbug_timestamp_ns_t) != ownSizeof(lbug_timestamp_ns_t_570425827):
      static :
        warning("Declaration of " & "lbug_timestamp_ns_t" &
            " exists but with different size")
    lbug_timestamp_ns_t
  else:
    lbug_timestamp_ns_t_570425827)
  lbug_query_result_570425804 = (when declared(lbug_query_result):
    when ownSizeof(lbug_query_result) != ownSizeof(lbug_query_result_570425803):
      static :
        warning("Declaration of " & "lbug_query_result" &
            " exists but with different size")
    lbug_query_result
  else:
    lbug_query_result_570425803)
  struct_lbug_internal_id_t_570425818 = (when declared(struct_lbug_internal_id_t):
    when ownSizeof(struct_lbug_internal_id_t) !=
        ownSizeof(struct_lbug_internal_id_t_570425817):
      static :
        warning("Declaration of " & "struct_lbug_internal_id_t" &
            " exists but with different size")
    struct_lbug_internal_id_t
  else:
    struct_lbug_internal_id_t_570425817)
  lbug_internal_id_t_570425820 = (when declared(lbug_internal_id_t):
    when ownSizeof(lbug_internal_id_t) != ownSizeof(lbug_internal_id_t_570425819):
      static :
        warning("Declaration of " & "lbug_internal_id_t" &
            " exists but with different size")
    lbug_internal_id_t
  else:
    lbug_internal_id_t_570425819)
  struct_lbug_logical_type_570425810 = (when declared(struct_lbug_logical_type):
    when ownSizeof(struct_lbug_logical_type) !=
        ownSizeof(struct_lbug_logical_type_570425809):
      static :
        warning("Declaration of " & "struct_lbug_logical_type" &
            " exists but with different size")
    struct_lbug_logical_type
  else:
    struct_lbug_logical_type_570425809)
  struct_lbug_timestamp_sec_t_570425834 = (when declared(
      struct_lbug_timestamp_sec_t):
    when ownSizeof(struct_lbug_timestamp_sec_t) !=
        ownSizeof(struct_lbug_timestamp_sec_t_570425833):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_sec_t" &
            " exists but with different size")
    struct_lbug_timestamp_sec_t
  else:
    struct_lbug_timestamp_sec_t_570425833)
  struct_ArrowSchema_570425782 = (when declared(struct_ArrowSchema):
    when ownSizeof(struct_ArrowSchema) != ownSizeof(struct_ArrowSchema_570425781):
      static :
        warning("Declaration of " & "struct_ArrowSchema" &
            " exists but with different size")
    struct_ArrowSchema
  else:
    struct_ArrowSchema_570425781)
  struct_lbug_query_result_570425802 = (when declared(struct_lbug_query_result):
    when ownSizeof(struct_lbug_query_result) !=
        ownSizeof(struct_lbug_query_result_570425801):
      static :
        warning("Declaration of " & "struct_lbug_query_result" &
            " exists but with different size")
    struct_lbug_query_result
  else:
    struct_lbug_query_result_570425801)
  struct_lbug_timestamp_ns_t_570425826 = (when declared(
      struct_lbug_timestamp_ns_t):
    when ownSizeof(struct_lbug_timestamp_ns_t) !=
        ownSizeof(struct_lbug_timestamp_ns_t_570425825):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_ns_t" &
            " exists but with different size")
    struct_lbug_timestamp_ns_t
  else:
    struct_lbug_timestamp_ns_t_570425825)
  lbug_timestamp_tz_t_570425840 = (when declared(lbug_timestamp_tz_t):
    when ownSizeof(lbug_timestamp_tz_t) != ownSizeof(lbug_timestamp_tz_t_570425839):
      static :
        warning("Declaration of " & "lbug_timestamp_tz_t" &
            " exists but with different size")
    lbug_timestamp_tz_t
  else:
    lbug_timestamp_tz_t_570425839)
  struct_lbug_timestamp_t_570425842 = (when declared(struct_lbug_timestamp_t):
    when ownSizeof(struct_lbug_timestamp_t) !=
        ownSizeof(struct_lbug_timestamp_t_570425841):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_t" &
            " exists but with different size")
    struct_lbug_timestamp_t
  else:
    struct_lbug_timestamp_t_570425841)
  lbug_prepared_statement_570425800 = (when declared(lbug_prepared_statement):
    when ownSizeof(lbug_prepared_statement) !=
        ownSizeof(lbug_prepared_statement_570425799):
      static :
        warning("Declaration of " & "lbug_prepared_statement" &
            " exists but with different size")
    lbug_prepared_statement
  else:
    lbug_prepared_statement_570425799)
  struct_lbug_query_summary_570425850 = (when declared(struct_lbug_query_summary):
    when ownSizeof(struct_lbug_query_summary) !=
        ownSizeof(struct_lbug_query_summary_570425849):
      static :
        warning("Declaration of " & "struct_lbug_query_summary" &
            " exists but with different size")
    struct_lbug_query_summary
  else:
    struct_lbug_query_summary_570425849)
  struct_lbug_database_570425790 = (when declared(struct_lbug_database):
    when ownSizeof(struct_lbug_database) != ownSizeof(struct_lbug_database_570425789):
      static :
        warning("Declaration of " & "struct_lbug_database" &
            " exists but with different size")
    struct_lbug_database
  else:
    struct_lbug_database_570425789)
  struct_lbug_prepared_statement_570425798 = (when declared(
      struct_lbug_prepared_statement):
    when ownSizeof(struct_lbug_prepared_statement) !=
        ownSizeof(struct_lbug_prepared_statement_570425797):
      static :
        warning("Declaration of " & "struct_lbug_prepared_statement" &
            " exists but with different size")
    struct_lbug_prepared_statement
  else:
    struct_lbug_prepared_statement_570425797)
  lbug_logical_type_570425812 = (when declared(lbug_logical_type):
    when ownSizeof(lbug_logical_type) != ownSizeof(lbug_logical_type_570425811):
      static :
        warning("Declaration of " & "lbug_logical_type" &
            " exists but with different size")
    lbug_logical_type
  else:
    lbug_logical_type_570425811)
  lbug_date_t_570425824 = (when declared(lbug_date_t):
    when ownSizeof(lbug_date_t) != ownSizeof(lbug_date_t_570425823):
      static :
        warning("Declaration of " & "lbug_date_t" &
            " exists but with different size")
    lbug_date_t
  else:
    lbug_date_t_570425823)
  struct_lbug_timestamp_ms_t_570425830 = (when declared(
      struct_lbug_timestamp_ms_t):
    when ownSizeof(struct_lbug_timestamp_ms_t) !=
        ownSizeof(struct_lbug_timestamp_ms_t_570425829):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_ms_t" &
            " exists but with different size")
    struct_lbug_timestamp_ms_t
  else:
    struct_lbug_timestamp_ms_t_570425829)
  lbug_connection_570425796 = (when declared(lbug_connection):
    when ownSizeof(lbug_connection) != ownSizeof(lbug_connection_570425795):
      static :
        warning("Declaration of " & "lbug_connection" &
            " exists but with different size")
    lbug_connection
  else:
    lbug_connection_570425795)
  struct_lbug_value_570425814 = (when declared(struct_lbug_value):
    when ownSizeof(struct_lbug_value) != ownSizeof(struct_lbug_value_570425813):
      static :
        warning("Declaration of " & "struct_lbug_value" &
            " exists but with different size")
    struct_lbug_value
  else:
    struct_lbug_value_570425813)
  struct_lbug_interval_t_570425846 = (when declared(struct_lbug_interval_t):
    when ownSizeof(struct_lbug_interval_t) != ownSizeof(struct_lbug_interval_t_570425845):
      static :
        warning("Declaration of " & "struct_lbug_interval_t" &
            " exists but with different size")
    struct_lbug_interval_t
  else:
    struct_lbug_interval_t_570425845)
  struct_ArrowArray_570425784 = (when declared(struct_ArrowArray):
    when ownSizeof(struct_ArrowArray) != ownSizeof(struct_ArrowArray_570425783):
      static :
        warning("Declaration of " & "struct_ArrowArray" &
            " exists but with different size")
    struct_ArrowArray
  else:
    struct_ArrowArray_570425783)
  lbug_flat_tuple_570425808 = (when declared(lbug_flat_tuple):
    when ownSizeof(lbug_flat_tuple) != ownSizeof(lbug_flat_tuple_570425807):
      static :
        warning("Declaration of " & "lbug_flat_tuple" &
            " exists but with different size")
    lbug_flat_tuple
  else:
    lbug_flat_tuple_570425807)
  lbug_timestamp_ms_t_570425832 = (when declared(lbug_timestamp_ms_t):
    when ownSizeof(lbug_timestamp_ms_t) != ownSizeof(lbug_timestamp_ms_t_570425831):
      static :
        warning("Declaration of " & "lbug_timestamp_ms_t" &
            " exists but with different size")
    lbug_timestamp_ms_t
  else:
    lbug_timestamp_ms_t_570425831)
  lbug_interval_t_570425848 = (when declared(lbug_interval_t):
    when ownSizeof(lbug_interval_t) != ownSizeof(lbug_interval_t_570425847):
      static :
        warning("Declaration of " & "lbug_interval_t" &
            " exists but with different size")
    lbug_interval_t
  else:
    lbug_interval_t_570425847)
  struct_lbug_int128_t_570425854 = (when declared(struct_lbug_int128_t):
    when ownSizeof(struct_lbug_int128_t) != ownSizeof(struct_lbug_int128_t_570425853):
      static :
        warning("Declaration of " & "struct_lbug_int128_t" &
            " exists but with different size")
    struct_lbug_int128_t
  else:
    struct_lbug_int128_t_570425853)
  lbug_data_type_id_570425860 = (when declared(lbug_data_type_id):
    when ownSizeof(lbug_data_type_id) != ownSizeof(lbug_data_type_id_570425859):
      static :
        warning("Declaration of " & "lbug_data_type_id" &
            " exists but with different size")
    lbug_data_type_id
  else:
    lbug_data_type_id_570425859)
  struct_tm_570425866 = (when declared(struct_tm):
    when ownSizeof(struct_tm) != ownSizeof(struct_tm_570425865):
      static :
        warning("Declaration of " & "struct_tm" &
            " exists but with different size")
    struct_tm
  else:
    struct_tm_570425865)
  lbug_int128_t_570425856 = (when declared(lbug_int128_t):
    when ownSizeof(lbug_int128_t) != ownSizeof(lbug_int128_t_570425855):
      static :
        warning("Declaration of " & "lbug_int128_t" &
            " exists but with different size")
    lbug_int128_t
  else:
    lbug_int128_t_570425855)
  enum_lbug_data_type_id_570425858 = (when declared(enum_lbug_data_type_id):
    when ownSizeof(enum_lbug_data_type_id) != ownSizeof(enum_lbug_data_type_id_570425857):
      static :
        warning("Declaration of " & "enum_lbug_data_type_id" &
            " exists but with different size")
    enum_lbug_data_type_id
  else:
    enum_lbug_data_type_id_570425857)
  struct_lbug_date_t_570425822 = (when declared(struct_lbug_date_t):
    when ownSizeof(struct_lbug_date_t) != ownSizeof(struct_lbug_date_t_570425821):
      static :
        warning("Declaration of " & "struct_lbug_date_t" &
            " exists but with different size")
    struct_lbug_date_t
  else:
    struct_lbug_date_t_570425821)
  struct_lbug_timestamp_tz_t_570425838 = (when declared(
      struct_lbug_timestamp_tz_t):
    when ownSizeof(struct_lbug_timestamp_tz_t) !=
        ownSizeof(struct_lbug_timestamp_tz_t_570425837):
      static :
        warning("Declaration of " & "struct_lbug_timestamp_tz_t" &
            " exists but with different size")
    struct_lbug_timestamp_tz_t
  else:
    struct_lbug_timestamp_tz_t_570425837)
when not declared(lbug_database):
  type
    lbug_database* = lbug_database_570425791
else:
  static :
    hint("Declaration of " & "lbug_database" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_t):
  type
    lbug_timestamp_t* = lbug_timestamp_t_570425843
else:
  static :
    hint("Declaration of " & "lbug_timestamp_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_flat_tuple):
  type
    struct_lbug_flat_tuple* = struct_lbug_flat_tuple_570425805
else:
  static :
    hint("Declaration of " & "struct_lbug_flat_tuple" &
        " already exists, not redeclaring")
when not declared(lbug_value):
  type
    lbug_value* = lbug_value_570425815
else:
  static :
    hint("Declaration of " & "lbug_value" & " already exists, not redeclaring")
when not declared(lbug_query_summary):
  type
    lbug_query_summary* = lbug_query_summary_570425851
else:
  static :
    hint("Declaration of " & "lbug_query_summary" &
        " already exists, not redeclaring")
when not declared(enum_lbug_state):
  type
    enum_lbug_state* = enum_lbug_state_570425861
else:
  static :
    hint("Declaration of " & "enum_lbug_state" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_sec_t):
  type
    lbug_timestamp_sec_t* = lbug_timestamp_sec_t_570425835
else:
  static :
    hint("Declaration of " & "lbug_timestamp_sec_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_system_config):
  type
    struct_lbug_system_config* = struct_lbug_system_config_570425785
else:
  static :
    hint("Declaration of " & "struct_lbug_system_config" &
        " already exists, not redeclaring")
when not declared(lbug_state):
  type
    lbug_state* = lbug_state_570425863
else:
  static :
    hint("Declaration of " & "lbug_state" & " already exists, not redeclaring")
when not declared(lbug_system_config):
  type
    lbug_system_config* = lbug_system_config_570425787
else:
  static :
    hint("Declaration of " & "lbug_system_config" &
        " already exists, not redeclaring")
when not declared(struct_lbug_connection):
  type
    struct_lbug_connection* = struct_lbug_connection_570425793
else:
  static :
    hint("Declaration of " & "struct_lbug_connection" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ns_t):
  type
    lbug_timestamp_ns_t* = lbug_timestamp_ns_t_570425827
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ns_t" &
        " already exists, not redeclaring")
when not declared(lbug_query_result):
  type
    lbug_query_result* = lbug_query_result_570425803
else:
  static :
    hint("Declaration of " & "lbug_query_result" &
        " already exists, not redeclaring")
when not declared(struct_lbug_internal_id_t):
  type
    struct_lbug_internal_id_t* = struct_lbug_internal_id_t_570425817
else:
  static :
    hint("Declaration of " & "struct_lbug_internal_id_t" &
        " already exists, not redeclaring")
when not declared(lbug_internal_id_t):
  type
    lbug_internal_id_t* = lbug_internal_id_t_570425819
else:
  static :
    hint("Declaration of " & "lbug_internal_id_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_logical_type):
  type
    struct_lbug_logical_type* = struct_lbug_logical_type_570425809
else:
  static :
    hint("Declaration of " & "struct_lbug_logical_type" &
        " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_sec_t):
  type
    struct_lbug_timestamp_sec_t* = struct_lbug_timestamp_sec_t_570425833
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_sec_t" &
        " already exists, not redeclaring")
when not declared(struct_ArrowSchema):
  type
    struct_ArrowSchema* = struct_ArrowSchema_570425781
else:
  static :
    hint("Declaration of " & "struct_ArrowSchema" &
        " already exists, not redeclaring")
when not declared(struct_lbug_query_result):
  type
    struct_lbug_query_result* = struct_lbug_query_result_570425801
else:
  static :
    hint("Declaration of " & "struct_lbug_query_result" &
        " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_ns_t):
  type
    struct_lbug_timestamp_ns_t* = struct_lbug_timestamp_ns_t_570425825
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_ns_t" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_tz_t):
  type
    lbug_timestamp_tz_t* = lbug_timestamp_tz_t_570425839
else:
  static :
    hint("Declaration of " & "lbug_timestamp_tz_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_t):
  type
    struct_lbug_timestamp_t* = struct_lbug_timestamp_t_570425841
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_t" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement):
  type
    lbug_prepared_statement* = lbug_prepared_statement_570425799
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement" &
        " already exists, not redeclaring")
when not declared(struct_lbug_query_summary):
  type
    struct_lbug_query_summary* = struct_lbug_query_summary_570425849
else:
  static :
    hint("Declaration of " & "struct_lbug_query_summary" &
        " already exists, not redeclaring")
when not declared(struct_lbug_database):
  type
    struct_lbug_database* = struct_lbug_database_570425789
else:
  static :
    hint("Declaration of " & "struct_lbug_database" &
        " already exists, not redeclaring")
when not declared(struct_lbug_prepared_statement):
  type
    struct_lbug_prepared_statement* = struct_lbug_prepared_statement_570425797
else:
  static :
    hint("Declaration of " & "struct_lbug_prepared_statement" &
        " already exists, not redeclaring")
when not declared(lbug_logical_type):
  type
    lbug_logical_type* = lbug_logical_type_570425811
else:
  static :
    hint("Declaration of " & "lbug_logical_type" &
        " already exists, not redeclaring")
when not declared(lbug_date_t):
  type
    lbug_date_t* = lbug_date_t_570425823
else:
  static :
    hint("Declaration of " & "lbug_date_t" & " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_ms_t):
  type
    struct_lbug_timestamp_ms_t* = struct_lbug_timestamp_ms_t_570425829
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_ms_t" &
        " already exists, not redeclaring")
when not declared(lbug_connection):
  type
    lbug_connection* = lbug_connection_570425795
else:
  static :
    hint("Declaration of " & "lbug_connection" &
        " already exists, not redeclaring")
when not declared(struct_lbug_value):
  type
    struct_lbug_value* = struct_lbug_value_570425813
else:
  static :
    hint("Declaration of " & "struct_lbug_value" &
        " already exists, not redeclaring")
when not declared(struct_lbug_interval_t):
  type
    struct_lbug_interval_t* = struct_lbug_interval_t_570425845
else:
  static :
    hint("Declaration of " & "struct_lbug_interval_t" &
        " already exists, not redeclaring")
when not declared(struct_ArrowArray):
  type
    struct_ArrowArray* = struct_ArrowArray_570425783
else:
  static :
    hint("Declaration of " & "struct_ArrowArray" &
        " already exists, not redeclaring")
when not declared(lbug_flat_tuple):
  type
    lbug_flat_tuple* = lbug_flat_tuple_570425807
else:
  static :
    hint("Declaration of " & "lbug_flat_tuple" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ms_t):
  type
    lbug_timestamp_ms_t* = lbug_timestamp_ms_t_570425831
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ms_t" &
        " already exists, not redeclaring")
when not declared(lbug_interval_t):
  type
    lbug_interval_t* = lbug_interval_t_570425847
else:
  static :
    hint("Declaration of " & "lbug_interval_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_int128_t):
  type
    struct_lbug_int128_t* = struct_lbug_int128_t_570425853
else:
  static :
    hint("Declaration of " & "struct_lbug_int128_t" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_id):
  type
    lbug_data_type_id* = lbug_data_type_id_570425859
else:
  static :
    hint("Declaration of " & "lbug_data_type_id" &
        " already exists, not redeclaring")
when not declared(struct_tm):
  type
    struct_tm* = struct_tm_570425865
else:
  static :
    hint("Declaration of " & "struct_tm" & " already exists, not redeclaring")
when not declared(lbug_int128_t):
  type
    lbug_int128_t* = lbug_int128_t_570425855
else:
  static :
    hint("Declaration of " & "lbug_int128_t" &
        " already exists, not redeclaring")
when not declared(enum_lbug_data_type_id):
  type
    enum_lbug_data_type_id* = enum_lbug_data_type_id_570425857
else:
  static :
    hint("Declaration of " & "enum_lbug_data_type_id" &
        " already exists, not redeclaring")
when not declared(struct_lbug_date_t):
  type
    struct_lbug_date_t* = struct_lbug_date_t_570425821
else:
  static :
    hint("Declaration of " & "struct_lbug_date_t" &
        " already exists, not redeclaring")
when not declared(struct_lbug_timestamp_tz_t):
  type
    struct_lbug_timestamp_tz_t* = struct_lbug_timestamp_tz_t_570425837
else:
  static :
    hint("Declaration of " & "struct_lbug_timestamp_tz_t" &
        " already exists, not redeclaring")
when not declared(LBUG_API):
  when LBUG_HELPER_DLL_IMPORT is typedesc:
    type
      LBUG_API* = LBUG_HELPER_DLL_IMPORT ## Generated based on /usr/local/include/lbug.h:33:9
  else:
    when LBUG_HELPER_DLL_IMPORT is static:
      const
        LBUG_API* = LBUG_HELPER_DLL_IMPORT ## Generated based on /usr/local/include/lbug.h:33:9
    else:
      let LBUG_API* = LBUG_HELPER_DLL_IMPORT ## Generated based on /usr/local/include/lbug.h:33:9
else:
  static :
    hint("Declaration of " & "LBUG_API" & " already exists, not redeclaring")
when not declared(LBUG_DEPRECATED):
  when LBUG_HELPER_DEPRECATED is typedesc:
    type
      LBUG_DEPRECATED* = LBUG_HELPER_DEPRECATED ## Generated based on /usr/local/include/lbug.h:40:9
  else:
    when LBUG_HELPER_DEPRECATED is static:
      const
        LBUG_DEPRECATED* = LBUG_HELPER_DEPRECATED ## Generated based on /usr/local/include/lbug.h:40:9
    else:
      let LBUG_DEPRECATED* = LBUG_HELPER_DEPRECATED ## Generated based on /usr/local/include/lbug.h:40:9
else:
  static :
    hint("Declaration of " & "LBUG_DEPRECATED" &
        " already exists, not redeclaring")
when not declared(ARROW_FLAG_DICTIONARY_ORDERED):
  when 1 is static:
    const
      ARROW_FLAG_DICTIONARY_ORDERED* = 1 ## Generated based on /usr/local/include/lbug.h:60:9
  else:
    let ARROW_FLAG_DICTIONARY_ORDERED* = 1 ## Generated based on /usr/local/include/lbug.h:60:9
else:
  static :
    hint("Declaration of " & "ARROW_FLAG_DICTIONARY_ORDERED" &
        " already exists, not redeclaring")
when not declared(ARROW_FLAG_NULLABLE):
  when 2 is static:
    const
      ARROW_FLAG_NULLABLE* = 2 ## Generated based on /usr/local/include/lbug.h:61:9
  else:
    let ARROW_FLAG_NULLABLE* = 2 ## Generated based on /usr/local/include/lbug.h:61:9
else:
  static :
    hint("Declaration of " & "ARROW_FLAG_NULLABLE" &
        " already exists, not redeclaring")
when not declared(ARROW_FLAG_MAP_KEYS_SORTED):
  when 4 is static:
    const
      ARROW_FLAG_MAP_KEYS_SORTED* = 4 ## Generated based on /usr/local/include/lbug.h:62:9
  else:
    let ARROW_FLAG_MAP_KEYS_SORTED* = 4 ## Generated based on /usr/local/include/lbug.h:62:9
else:
  static :
    hint("Declaration of " & "ARROW_FLAG_MAP_KEYS_SORTED" &
        " already exists, not redeclaring")
when not declared(lbug_database_init):
  proc lbug_database_init*(database_path: cstring;
                           system_config: lbug_system_config_570425788;
                           out_database: ptr lbug_database_570425792): lbug_state_570425864 {.
      cdecl, importc: "lbug_database_init".}
else:
  static :
    hint("Declaration of " & "lbug_database_init" &
        " already exists, not redeclaring")
when not declared(lbug_database_destroy):
  proc lbug_database_destroy*(database: ptr lbug_database_570425792): void {.
      cdecl, importc: "lbug_database_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_database_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_default_system_config):
  proc lbug_default_system_config*(): lbug_system_config_570425788 {.cdecl,
      importc: "lbug_default_system_config".}
else:
  static :
    hint("Declaration of " & "lbug_default_system_config" &
        " already exists, not redeclaring")
when not declared(lbug_connection_init):
  proc lbug_connection_init*(database: ptr lbug_database_570425792;
                             out_connection: ptr lbug_connection_570425796): lbug_state_570425864 {.
      cdecl, importc: "lbug_connection_init".}
else:
  static :
    hint("Declaration of " & "lbug_connection_init" &
        " already exists, not redeclaring")
when not declared(lbug_connection_destroy):
  proc lbug_connection_destroy*(connection: ptr lbug_connection_570425796): void {.
      cdecl, importc: "lbug_connection_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_connection_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_connection_set_max_num_thread_for_exec):
  proc lbug_connection_set_max_num_thread_for_exec*(
      connection: ptr lbug_connection_570425796; num_threads: uint64): lbug_state_570425864 {.
      cdecl, importc: "lbug_connection_set_max_num_thread_for_exec".}
else:
  static :
    hint("Declaration of " & "lbug_connection_set_max_num_thread_for_exec" &
        " already exists, not redeclaring")
when not declared(lbug_connection_get_max_num_thread_for_exec):
  proc lbug_connection_get_max_num_thread_for_exec*(
      connection: ptr lbug_connection_570425796; out_result: ptr uint64): lbug_state_570425864 {.
      cdecl, importc: "lbug_connection_get_max_num_thread_for_exec".}
else:
  static :
    hint("Declaration of " & "lbug_connection_get_max_num_thread_for_exec" &
        " already exists, not redeclaring")
when not declared(lbug_connection_query):
  proc lbug_connection_query*(connection: ptr lbug_connection_570425796;
                              query: cstring;
                              out_query_result: ptr lbug_query_result_570425804): lbug_state_570425864 {.
      cdecl, importc: "lbug_connection_query".}
else:
  static :
    hint("Declaration of " & "lbug_connection_query" &
        " already exists, not redeclaring")
when not declared(lbug_connection_prepare):
  proc lbug_connection_prepare*(connection: ptr lbug_connection_570425796;
                                query: cstring; out_prepared_statement: ptr lbug_prepared_statement_570425800): lbug_state_570425864 {.
      cdecl, importc: "lbug_connection_prepare".}
else:
  static :
    hint("Declaration of " & "lbug_connection_prepare" &
        " already exists, not redeclaring")
when not declared(lbug_connection_execute):
  proc lbug_connection_execute*(connection: ptr lbug_connection_570425796;
      prepared_statement: ptr lbug_prepared_statement_570425800;
                                out_query_result: ptr lbug_query_result_570425804): lbug_state_570425864 {.
      cdecl, importc: "lbug_connection_execute".}
else:
  static :
    hint("Declaration of " & "lbug_connection_execute" &
        " already exists, not redeclaring")
when not declared(lbug_connection_interrupt):
  proc lbug_connection_interrupt*(connection: ptr lbug_connection_570425796): void {.
      cdecl, importc: "lbug_connection_interrupt".}
else:
  static :
    hint("Declaration of " & "lbug_connection_interrupt" &
        " already exists, not redeclaring")
when not declared(lbug_connection_set_query_timeout):
  proc lbug_connection_set_query_timeout*(connection: ptr lbug_connection_570425796;
      timeout_in_ms: uint64): lbug_state_570425864 {.cdecl,
      importc: "lbug_connection_set_query_timeout".}
else:
  static :
    hint("Declaration of " & "lbug_connection_set_query_timeout" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_destroy):
  proc lbug_prepared_statement_destroy*(prepared_statement: ptr lbug_prepared_statement_570425800): void {.
      cdecl, importc: "lbug_prepared_statement_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_is_success):
  proc lbug_prepared_statement_is_success*(
      prepared_statement: ptr lbug_prepared_statement_570425800): bool {.cdecl,
      importc: "lbug_prepared_statement_is_success".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_is_success" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_get_error_message):
  proc lbug_prepared_statement_get_error_message*(
      prepared_statement: ptr lbug_prepared_statement_570425800): cstring {.
      cdecl, importc: "lbug_prepared_statement_get_error_message".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_get_error_message" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_bool):
  proc lbug_prepared_statement_bind_bool*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: bool): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_bool".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_bool" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_int64):
  proc lbug_prepared_statement_bind_int64*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: int64): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_int64".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_int64" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_int32):
  proc lbug_prepared_statement_bind_int32*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: int32): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_int32".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_int32" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_int16):
  proc lbug_prepared_statement_bind_int16*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: int16): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_int16".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_int16" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_int8):
  proc lbug_prepared_statement_bind_int8*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: int8): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_int8".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_int8" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_uint64):
  proc lbug_prepared_statement_bind_uint64*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: uint64): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_uint64".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_uint64" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_uint32):
  proc lbug_prepared_statement_bind_uint32*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: uint32): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_uint32".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_uint32" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_uint16):
  proc lbug_prepared_statement_bind_uint16*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: uint16): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_uint16".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_uint16" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_uint8):
  proc lbug_prepared_statement_bind_uint8*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: uint8): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_uint8".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_uint8" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_double):
  proc lbug_prepared_statement_bind_double*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: cdouble): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_double".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_double" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_float):
  proc lbug_prepared_statement_bind_float*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: cfloat): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_float".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_float" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_date):
  proc lbug_prepared_statement_bind_date*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: lbug_date_t_570425824): lbug_state_570425864 {.
      cdecl, importc: "lbug_prepared_statement_bind_date".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_date" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp_ns):
  proc lbug_prepared_statement_bind_timestamp_ns*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: lbug_timestamp_ns_t_570425828): lbug_state_570425864 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp_ns" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp_sec):
  proc lbug_prepared_statement_bind_timestamp_sec*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: lbug_timestamp_sec_t_570425836): lbug_state_570425864 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp_sec" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp_tz):
  proc lbug_prepared_statement_bind_timestamp_tz*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: lbug_timestamp_tz_t_570425840): lbug_state_570425864 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp_tz" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp_ms):
  proc lbug_prepared_statement_bind_timestamp_ms*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: lbug_timestamp_ms_t_570425832): lbug_state_570425864 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp_ms" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_timestamp):
  proc lbug_prepared_statement_bind_timestamp*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: lbug_timestamp_t_570425844): lbug_state_570425864 {.
      cdecl, importc: "lbug_prepared_statement_bind_timestamp".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_timestamp" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_interval):
  proc lbug_prepared_statement_bind_interval*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: lbug_interval_t_570425848): lbug_state_570425864 {.
      cdecl, importc: "lbug_prepared_statement_bind_interval".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_interval" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_string):
  proc lbug_prepared_statement_bind_string*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: cstring): lbug_state_570425864 {.cdecl,
      importc: "lbug_prepared_statement_bind_string".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_string" &
        " already exists, not redeclaring")
when not declared(lbug_prepared_statement_bind_value):
  proc lbug_prepared_statement_bind_value*(
      prepared_statement: ptr lbug_prepared_statement_570425800;
      param_name: cstring; value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_prepared_statement_bind_value".}
else:
  static :
    hint("Declaration of " & "lbug_prepared_statement_bind_value" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_destroy):
  proc lbug_query_result_destroy*(query_result: ptr lbug_query_result_570425804): void {.
      cdecl, importc: "lbug_query_result_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_is_success):
  proc lbug_query_result_is_success*(query_result: ptr lbug_query_result_570425804): bool {.
      cdecl, importc: "lbug_query_result_is_success".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_is_success" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_error_message):
  proc lbug_query_result_get_error_message*(query_result: ptr lbug_query_result_570425804): cstring {.
      cdecl, importc: "lbug_query_result_get_error_message".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_error_message" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_num_columns):
  proc lbug_query_result_get_num_columns*(query_result: ptr lbug_query_result_570425804): uint64 {.
      cdecl, importc: "lbug_query_result_get_num_columns".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_num_columns" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_column_name):
  proc lbug_query_result_get_column_name*(query_result: ptr lbug_query_result_570425804;
      index: uint64; out_column_name: ptr cstring): lbug_state_570425864 {.
      cdecl, importc: "lbug_query_result_get_column_name".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_column_name" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_column_data_type):
  proc lbug_query_result_get_column_data_type*(
      query_result: ptr lbug_query_result_570425804; index: uint64;
      out_column_data_type: ptr lbug_logical_type_570425812): lbug_state_570425864 {.
      cdecl, importc: "lbug_query_result_get_column_data_type".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_column_data_type" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_num_tuples):
  proc lbug_query_result_get_num_tuples*(query_result: ptr lbug_query_result_570425804): uint64 {.
      cdecl, importc: "lbug_query_result_get_num_tuples".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_num_tuples" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_query_summary):
  proc lbug_query_result_get_query_summary*(query_result: ptr lbug_query_result_570425804;
      out_query_summary: ptr lbug_query_summary_570425852): lbug_state_570425864 {.
      cdecl, importc: "lbug_query_result_get_query_summary".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_query_summary" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_has_next):
  proc lbug_query_result_has_next*(query_result: ptr lbug_query_result_570425804): bool {.
      cdecl, importc: "lbug_query_result_has_next".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_has_next" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_next):
  proc lbug_query_result_get_next*(query_result: ptr lbug_query_result_570425804;
                                   out_flat_tuple: ptr lbug_flat_tuple_570425808): lbug_state_570425864 {.
      cdecl, importc: "lbug_query_result_get_next".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_next" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_has_next_query_result):
  proc lbug_query_result_has_next_query_result*(
      query_result: ptr lbug_query_result_570425804): bool {.cdecl,
      importc: "lbug_query_result_has_next_query_result".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_has_next_query_result" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_next_query_result):
  proc lbug_query_result_get_next_query_result*(
      query_result: ptr lbug_query_result_570425804;
      out_next_query_result: ptr lbug_query_result_570425804): lbug_state_570425864 {.
      cdecl, importc: "lbug_query_result_get_next_query_result".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_next_query_result" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_to_string):
  proc lbug_query_result_to_string*(query_result: ptr lbug_query_result_570425804): cstring {.
      cdecl, importc: "lbug_query_result_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_reset_iterator):
  proc lbug_query_result_reset_iterator*(query_result: ptr lbug_query_result_570425804): void {.
      cdecl, importc: "lbug_query_result_reset_iterator".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_reset_iterator" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_arrow_schema):
  proc lbug_query_result_get_arrow_schema*(query_result: ptr lbug_query_result_570425804;
      out_schema: ptr struct_ArrowSchema_570425782): lbug_state_570425864 {.
      cdecl, importc: "lbug_query_result_get_arrow_schema".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_arrow_schema" &
        " already exists, not redeclaring")
when not declared(lbug_query_result_get_next_arrow_chunk):
  proc lbug_query_result_get_next_arrow_chunk*(
      query_result: ptr lbug_query_result_570425804; chunk_size: int64;
      out_arrow_array: ptr struct_ArrowArray_570425784): lbug_state_570425864 {.
      cdecl, importc: "lbug_query_result_get_next_arrow_chunk".}
else:
  static :
    hint("Declaration of " & "lbug_query_result_get_next_arrow_chunk" &
        " already exists, not redeclaring")
when not declared(lbug_flat_tuple_destroy):
  proc lbug_flat_tuple_destroy*(flat_tuple: ptr lbug_flat_tuple_570425808): void {.
      cdecl, importc: "lbug_flat_tuple_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_flat_tuple_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_flat_tuple_get_value):
  proc lbug_flat_tuple_get_value*(flat_tuple: ptr lbug_flat_tuple_570425808;
                                  index: uint64; out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_flat_tuple_get_value".}
else:
  static :
    hint("Declaration of " & "lbug_flat_tuple_get_value" &
        " already exists, not redeclaring")
when not declared(lbug_flat_tuple_to_string):
  proc lbug_flat_tuple_to_string*(flat_tuple: ptr lbug_flat_tuple_570425808): cstring {.
      cdecl, importc: "lbug_flat_tuple_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_flat_tuple_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_create):
  proc lbug_data_type_create*(id: lbug_data_type_id_570425860;
                              child_type: ptr lbug_logical_type_570425812;
                              num_elements_in_array: uint64;
                              out_type: ptr lbug_logical_type_570425812): void {.
      cdecl, importc: "lbug_data_type_create".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_create" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_clone):
  proc lbug_data_type_clone*(data_type: ptr lbug_logical_type_570425812;
                             out_type: ptr lbug_logical_type_570425812): void {.
      cdecl, importc: "lbug_data_type_clone".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_clone" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_destroy):
  proc lbug_data_type_destroy*(data_type: ptr lbug_logical_type_570425812): void {.
      cdecl, importc: "lbug_data_type_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_equals):
  proc lbug_data_type_equals*(data_type1: ptr lbug_logical_type_570425812;
                              data_type2: ptr lbug_logical_type_570425812): bool {.
      cdecl, importc: "lbug_data_type_equals".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_equals" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_get_id):
  proc lbug_data_type_get_id*(data_type: ptr lbug_logical_type_570425812): lbug_data_type_id_570425860 {.
      cdecl, importc: "lbug_data_type_get_id".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_get_id" &
        " already exists, not redeclaring")
when not declared(lbug_data_type_get_num_elements_in_array):
  proc lbug_data_type_get_num_elements_in_array*(
      data_type: ptr lbug_logical_type_570425812; out_result: ptr uint64): lbug_state_570425864 {.
      cdecl, importc: "lbug_data_type_get_num_elements_in_array".}
else:
  static :
    hint("Declaration of " & "lbug_data_type_get_num_elements_in_array" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_null):
  proc lbug_value_create_null*(): ptr lbug_value_570425816 {.cdecl,
      importc: "lbug_value_create_null".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_null" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_null_with_data_type):
  proc lbug_value_create_null_with_data_type*(data_type: ptr lbug_logical_type_570425812): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_null_with_data_type".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_null_with_data_type" &
        " already exists, not redeclaring")
when not declared(lbug_value_is_null):
  proc lbug_value_is_null*(value: ptr lbug_value_570425816): bool {.cdecl,
      importc: "lbug_value_is_null".}
else:
  static :
    hint("Declaration of " & "lbug_value_is_null" &
        " already exists, not redeclaring")
when not declared(lbug_value_set_null):
  proc lbug_value_set_null*(value: ptr lbug_value_570425816; is_null: bool): void {.
      cdecl, importc: "lbug_value_set_null".}
else:
  static :
    hint("Declaration of " & "lbug_value_set_null" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_default):
  proc lbug_value_create_default*(data_type: ptr lbug_logical_type_570425812): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_default".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_default" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_bool):
  proc lbug_value_create_bool*(val_private: bool): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_bool".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_bool" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int8):
  proc lbug_value_create_int8*(val_private: int8): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_int8".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int8" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int16):
  proc lbug_value_create_int16*(val_private: int16): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_int16".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int16" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int32):
  proc lbug_value_create_int32*(val_private: int32): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_int32".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int32" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int64):
  proc lbug_value_create_int64*(val_private: int64): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_int64".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int64" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uint8):
  proc lbug_value_create_uint8*(val_private: uint8): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_uint8".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uint8" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uint16):
  proc lbug_value_create_uint16*(val_private: uint16): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_uint16".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uint16" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uint32):
  proc lbug_value_create_uint32*(val_private: uint32): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_uint32".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uint32" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_uint64):
  proc lbug_value_create_uint64*(val_private: uint64): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_uint64".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_uint64" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_int128):
  proc lbug_value_create_int128*(val_private: lbug_int128_t_570425856): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_int128".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_int128" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_float):
  proc lbug_value_create_float*(val_private: cfloat): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_float".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_float" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_double):
  proc lbug_value_create_double*(val_private: cdouble): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_double".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_double" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_internal_id):
  proc lbug_value_create_internal_id*(val_private: lbug_internal_id_t_570425820): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_internal_id".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_internal_id" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_date):
  proc lbug_value_create_date*(val_private: lbug_date_t_570425824): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_date".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_date" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp_ns):
  proc lbug_value_create_timestamp_ns*(val_private: lbug_timestamp_ns_t_570425828): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp_ns" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp_ms):
  proc lbug_value_create_timestamp_ms*(val_private: lbug_timestamp_ms_t_570425832): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp_ms" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp_sec):
  proc lbug_value_create_timestamp_sec*(val_private: lbug_timestamp_sec_t_570425836): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp_sec" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp_tz):
  proc lbug_value_create_timestamp_tz*(val_private: lbug_timestamp_tz_t_570425840): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp_tz" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_timestamp):
  proc lbug_value_create_timestamp*(val_private: lbug_timestamp_t_570425844): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_timestamp".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_timestamp" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_interval):
  proc lbug_value_create_interval*(val_private: lbug_interval_t_570425848): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_interval".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_interval" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_string):
  proc lbug_value_create_string*(val_private: cstring): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_create_string".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_string" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_list):
  proc lbug_value_create_list*(num_elements: uint64;
                               elements: ptr ptr lbug_value_570425816;
                               out_value: ptr ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_create_list".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_list" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_struct):
  proc lbug_value_create_struct*(num_fields: uint64; field_names: ptr cstring;
                                 field_values: ptr ptr lbug_value_570425816;
                                 out_value: ptr ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_create_struct".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_struct" &
        " already exists, not redeclaring")
when not declared(lbug_value_create_map):
  proc lbug_value_create_map*(num_fields: uint64; keys: ptr ptr lbug_value_570425816;
                              values: ptr ptr lbug_value_570425816;
                              out_value: ptr ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_create_map".}
else:
  static :
    hint("Declaration of " & "lbug_value_create_map" &
        " already exists, not redeclaring")
when not declared(lbug_value_clone):
  proc lbug_value_clone*(value: ptr lbug_value_570425816): ptr lbug_value_570425816 {.
      cdecl, importc: "lbug_value_clone".}
else:
  static :
    hint("Declaration of " & "lbug_value_clone" &
        " already exists, not redeclaring")
when not declared(lbug_value_copy):
  proc lbug_value_copy*(value: ptr lbug_value_570425816; other: ptr lbug_value_570425816): void {.
      cdecl, importc: "lbug_value_copy".}
else:
  static :
    hint("Declaration of " & "lbug_value_copy" &
        " already exists, not redeclaring")
when not declared(lbug_value_destroy):
  proc lbug_value_destroy*(value: ptr lbug_value_570425816): void {.cdecl,
      importc: "lbug_value_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_value_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_list_size):
  proc lbug_value_get_list_size*(value: ptr lbug_value_570425816;
                                 out_result: ptr uint64): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_list_size".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_list_size" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_list_element):
  proc lbug_value_get_list_element*(value: ptr lbug_value_570425816;
                                    index: uint64; out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_list_element".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_list_element" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_struct_num_fields):
  proc lbug_value_get_struct_num_fields*(value: ptr lbug_value_570425816;
      out_result: ptr uint64): lbug_state_570425864 {.cdecl,
      importc: "lbug_value_get_struct_num_fields".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_struct_num_fields" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_struct_field_name):
  proc lbug_value_get_struct_field_name*(value: ptr lbug_value_570425816;
      index: uint64; out_result: ptr cstring): lbug_state_570425864 {.cdecl,
      importc: "lbug_value_get_struct_field_name".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_struct_field_name" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_struct_field_value):
  proc lbug_value_get_struct_field_value*(value: ptr lbug_value_570425816;
      index: uint64; out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_struct_field_value".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_struct_field_value" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_map_size):
  proc lbug_value_get_map_size*(value: ptr lbug_value_570425816;
                                out_result: ptr uint64): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_map_size".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_map_size" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_map_key):
  proc lbug_value_get_map_key*(value: ptr lbug_value_570425816; index: uint64;
                               out_key: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_map_key".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_map_key" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_map_value):
  proc lbug_value_get_map_value*(value: ptr lbug_value_570425816; index: uint64;
                                 out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_map_value".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_map_value" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_recursive_rel_node_list):
  proc lbug_value_get_recursive_rel_node_list*(value: ptr lbug_value_570425816;
      out_value: ptr lbug_value_570425816): lbug_state_570425864 {.cdecl,
      importc: "lbug_value_get_recursive_rel_node_list".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_recursive_rel_node_list" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_recursive_rel_rel_list):
  proc lbug_value_get_recursive_rel_rel_list*(value: ptr lbug_value_570425816;
      out_value: ptr lbug_value_570425816): lbug_state_570425864 {.cdecl,
      importc: "lbug_value_get_recursive_rel_rel_list".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_recursive_rel_rel_list" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_data_type):
  proc lbug_value_get_data_type*(value: ptr lbug_value_570425816;
                                 out_type: ptr lbug_logical_type_570425812): void {.
      cdecl, importc: "lbug_value_get_data_type".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_data_type" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_bool):
  proc lbug_value_get_bool*(value: ptr lbug_value_570425816;
                            out_result: ptr bool): lbug_state_570425864 {.cdecl,
      importc: "lbug_value_get_bool".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_bool" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int8):
  proc lbug_value_get_int8*(value: ptr lbug_value_570425816;
                            out_result: ptr int8): lbug_state_570425864 {.cdecl,
      importc: "lbug_value_get_int8".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int8" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int16):
  proc lbug_value_get_int16*(value: ptr lbug_value_570425816;
                             out_result: ptr int16): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_int16".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int16" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int32):
  proc lbug_value_get_int32*(value: ptr lbug_value_570425816;
                             out_result: ptr int32): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_int32".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int32" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int64):
  proc lbug_value_get_int64*(value: ptr lbug_value_570425816;
                             out_result: ptr int64): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_int64".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int64" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uint8):
  proc lbug_value_get_uint8*(value: ptr lbug_value_570425816;
                             out_result: ptr uint8): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_uint8".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uint8" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uint16):
  proc lbug_value_get_uint16*(value: ptr lbug_value_570425816;
                              out_result: ptr uint16): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_uint16".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uint16" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uint32):
  proc lbug_value_get_uint32*(value: ptr lbug_value_570425816;
                              out_result: ptr uint32): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_uint32".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uint32" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uint64):
  proc lbug_value_get_uint64*(value: ptr lbug_value_570425816;
                              out_result: ptr uint64): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_uint64".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uint64" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_int128):
  proc lbug_value_get_int128*(value: ptr lbug_value_570425816;
                              out_result: ptr lbug_int128_t_570425856): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_int128".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_int128" &
        " already exists, not redeclaring")
when not declared(lbug_int128_t_from_string):
  proc lbug_int128_t_from_string*(str: cstring; out_result: ptr lbug_int128_t_570425856): lbug_state_570425864 {.
      cdecl, importc: "lbug_int128_t_from_string".}
else:
  static :
    hint("Declaration of " & "lbug_int128_t_from_string" &
        " already exists, not redeclaring")
when not declared(lbug_int128_t_to_string):
  proc lbug_int128_t_to_string*(val: lbug_int128_t_570425856;
                                out_result: ptr cstring): lbug_state_570425864 {.
      cdecl, importc: "lbug_int128_t_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_int128_t_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_float):
  proc lbug_value_get_float*(value: ptr lbug_value_570425816;
                             out_result: ptr cfloat): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_float".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_float" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_double):
  proc lbug_value_get_double*(value: ptr lbug_value_570425816;
                              out_result: ptr cdouble): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_double".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_double" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_internal_id):
  proc lbug_value_get_internal_id*(value: ptr lbug_value_570425816;
                                   out_result: ptr lbug_internal_id_t_570425820): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_internal_id".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_internal_id" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_date):
  proc lbug_value_get_date*(value: ptr lbug_value_570425816;
                            out_result: ptr lbug_date_t_570425824): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_date".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_date" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp):
  proc lbug_value_get_timestamp*(value: ptr lbug_value_570425816;
                                 out_result: ptr lbug_timestamp_t_570425844): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_timestamp".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp_ns):
  proc lbug_value_get_timestamp_ns*(value: ptr lbug_value_570425816;
                                    out_result: ptr lbug_timestamp_ns_t_570425828): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_timestamp_ns".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp_ns" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp_ms):
  proc lbug_value_get_timestamp_ms*(value: ptr lbug_value_570425816;
                                    out_result: ptr lbug_timestamp_ms_t_570425832): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_timestamp_ms".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp_ms" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp_sec):
  proc lbug_value_get_timestamp_sec*(value: ptr lbug_value_570425816;
                                     out_result: ptr lbug_timestamp_sec_t_570425836): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_timestamp_sec".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp_sec" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_timestamp_tz):
  proc lbug_value_get_timestamp_tz*(value: ptr lbug_value_570425816;
                                    out_result: ptr lbug_timestamp_tz_t_570425840): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_timestamp_tz".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_timestamp_tz" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_interval):
  proc lbug_value_get_interval*(value: ptr lbug_value_570425816;
                                out_result: ptr lbug_interval_t_570425848): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_interval".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_interval" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_decimal_as_string):
  proc lbug_value_get_decimal_as_string*(value: ptr lbug_value_570425816;
      out_result: ptr cstring): lbug_state_570425864 {.cdecl,
      importc: "lbug_value_get_decimal_as_string".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_decimal_as_string" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_string):
  proc lbug_value_get_string*(value: ptr lbug_value_570425816;
                              out_result: ptr cstring): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_string".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_string" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_blob):
  proc lbug_value_get_blob*(value: ptr lbug_value_570425816;
                            out_result: ptr ptr uint8): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_blob".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_blob" &
        " already exists, not redeclaring")
when not declared(lbug_value_get_uuid):
  proc lbug_value_get_uuid*(value: ptr lbug_value_570425816;
                            out_result: ptr cstring): lbug_state_570425864 {.
      cdecl, importc: "lbug_value_get_uuid".}
else:
  static :
    hint("Declaration of " & "lbug_value_get_uuid" &
        " already exists, not redeclaring")
when not declared(lbug_value_to_string):
  proc lbug_value_to_string*(value: ptr lbug_value_570425816): cstring {.cdecl,
      importc: "lbug_value_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_value_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_id_val):
  proc lbug_node_val_get_id_val*(node_val: ptr lbug_value_570425816;
                                 out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_node_val_get_id_val".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_id_val" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_label_val):
  proc lbug_node_val_get_label_val*(node_val: ptr lbug_value_570425816;
                                    out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_node_val_get_label_val".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_label_val" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_property_size):
  proc lbug_node_val_get_property_size*(node_val: ptr lbug_value_570425816;
                                        out_value: ptr uint64): lbug_state_570425864 {.
      cdecl, importc: "lbug_node_val_get_property_size".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_property_size" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_property_name_at):
  proc lbug_node_val_get_property_name_at*(node_val: ptr lbug_value_570425816;
      index: uint64; out_result: ptr cstring): lbug_state_570425864 {.cdecl,
      importc: "lbug_node_val_get_property_name_at".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_property_name_at" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_get_property_value_at):
  proc lbug_node_val_get_property_value_at*(node_val: ptr lbug_value_570425816;
      index: uint64; out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_node_val_get_property_value_at".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_get_property_value_at" &
        " already exists, not redeclaring")
when not declared(lbug_node_val_to_string):
  proc lbug_node_val_to_string*(node_val: ptr lbug_value_570425816;
                                out_result: ptr cstring): lbug_state_570425864 {.
      cdecl, importc: "lbug_node_val_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_node_val_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_id_val):
  proc lbug_rel_val_get_id_val*(rel_val: ptr lbug_value_570425816;
                                out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_rel_val_get_id_val".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_id_val" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_src_id_val):
  proc lbug_rel_val_get_src_id_val*(rel_val: ptr lbug_value_570425816;
                                    out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_rel_val_get_src_id_val".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_src_id_val" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_dst_id_val):
  proc lbug_rel_val_get_dst_id_val*(rel_val: ptr lbug_value_570425816;
                                    out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_rel_val_get_dst_id_val".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_dst_id_val" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_label_val):
  proc lbug_rel_val_get_label_val*(rel_val: ptr lbug_value_570425816;
                                   out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_rel_val_get_label_val".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_label_val" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_property_size):
  proc lbug_rel_val_get_property_size*(rel_val: ptr lbug_value_570425816;
                                       out_value: ptr uint64): lbug_state_570425864 {.
      cdecl, importc: "lbug_rel_val_get_property_size".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_property_size" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_property_name_at):
  proc lbug_rel_val_get_property_name_at*(rel_val: ptr lbug_value_570425816;
      index: uint64; out_result: ptr cstring): lbug_state_570425864 {.cdecl,
      importc: "lbug_rel_val_get_property_name_at".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_property_name_at" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_get_property_value_at):
  proc lbug_rel_val_get_property_value_at*(rel_val: ptr lbug_value_570425816;
      index: uint64; out_value: ptr lbug_value_570425816): lbug_state_570425864 {.
      cdecl, importc: "lbug_rel_val_get_property_value_at".}
else:
  static :
    hint("Declaration of " & "lbug_rel_val_get_property_value_at" &
        " already exists, not redeclaring")
when not declared(lbug_rel_val_to_string):
  proc lbug_rel_val_to_string*(rel_val: ptr lbug_value_570425816;
                               out_result: ptr cstring): lbug_state_570425864 {.
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
  proc lbug_query_summary_destroy*(query_summary: ptr lbug_query_summary_570425852): void {.
      cdecl, importc: "lbug_query_summary_destroy".}
else:
  static :
    hint("Declaration of " & "lbug_query_summary_destroy" &
        " already exists, not redeclaring")
when not declared(lbug_query_summary_get_compiling_time):
  proc lbug_query_summary_get_compiling_time*(
      query_summary: ptr lbug_query_summary_570425852): cdouble {.cdecl,
      importc: "lbug_query_summary_get_compiling_time".}
else:
  static :
    hint("Declaration of " & "lbug_query_summary_get_compiling_time" &
        " already exists, not redeclaring")
when not declared(lbug_query_summary_get_execution_time):
  proc lbug_query_summary_get_execution_time*(
      query_summary: ptr lbug_query_summary_570425852): cdouble {.cdecl,
      importc: "lbug_query_summary_get_execution_time".}
else:
  static :
    hint("Declaration of " & "lbug_query_summary_get_execution_time" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ns_to_tm):
  proc lbug_timestamp_ns_to_tm*(timestamp: lbug_timestamp_ns_t_570425828;
                                out_result: ptr struct_tm_570425866): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_ns_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ns_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ms_to_tm):
  proc lbug_timestamp_ms_to_tm*(timestamp: lbug_timestamp_ms_t_570425832;
                                out_result: ptr struct_tm_570425866): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_ms_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ms_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_sec_to_tm):
  proc lbug_timestamp_sec_to_tm*(timestamp: lbug_timestamp_sec_t_570425836;
                                 out_result: ptr struct_tm_570425866): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_sec_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_sec_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_tz_to_tm):
  proc lbug_timestamp_tz_to_tm*(timestamp: lbug_timestamp_tz_t_570425840;
                                out_result: ptr struct_tm_570425866): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_tz_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_tz_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_to_tm):
  proc lbug_timestamp_to_tm*(timestamp: lbug_timestamp_t_570425844;
                             out_result: ptr struct_tm_570425866): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ns_from_tm):
  proc lbug_timestamp_ns_from_tm*(tm: struct_tm_570425866;
                                  out_result: ptr lbug_timestamp_ns_t_570425828): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_ns_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ns_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_ms_from_tm):
  proc lbug_timestamp_ms_from_tm*(tm: struct_tm_570425866;
                                  out_result: ptr lbug_timestamp_ms_t_570425832): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_ms_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_ms_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_sec_from_tm):
  proc lbug_timestamp_sec_from_tm*(tm: struct_tm_570425866;
                                   out_result: ptr lbug_timestamp_sec_t_570425836): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_sec_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_sec_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_tz_from_tm):
  proc lbug_timestamp_tz_from_tm*(tm: struct_tm_570425866;
                                  out_result: ptr lbug_timestamp_tz_t_570425840): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_tz_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_tz_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_timestamp_from_tm):
  proc lbug_timestamp_from_tm*(tm: struct_tm_570425866;
                               out_result: ptr lbug_timestamp_t_570425844): lbug_state_570425864 {.
      cdecl, importc: "lbug_timestamp_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_timestamp_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_date_to_string):
  proc lbug_date_to_string*(date: lbug_date_t_570425824; out_result: ptr cstring): lbug_state_570425864 {.
      cdecl, importc: "lbug_date_to_string".}
else:
  static :
    hint("Declaration of " & "lbug_date_to_string" &
        " already exists, not redeclaring")
when not declared(lbug_date_from_string):
  proc lbug_date_from_string*(str: cstring; out_result: ptr lbug_date_t_570425824): lbug_state_570425864 {.
      cdecl, importc: "lbug_date_from_string".}
else:
  static :
    hint("Declaration of " & "lbug_date_from_string" &
        " already exists, not redeclaring")
when not declared(lbug_date_to_tm):
  proc lbug_date_to_tm*(date: lbug_date_t_570425824; out_result: ptr struct_tm_570425866): lbug_state_570425864 {.
      cdecl, importc: "lbug_date_to_tm".}
else:
  static :
    hint("Declaration of " & "lbug_date_to_tm" &
        " already exists, not redeclaring")
when not declared(lbug_date_from_tm):
  proc lbug_date_from_tm*(tm: struct_tm_570425866; out_result: ptr lbug_date_t_570425824): lbug_state_570425864 {.
      cdecl, importc: "lbug_date_from_tm".}
else:
  static :
    hint("Declaration of " & "lbug_date_from_tm" &
        " already exists, not redeclaring")
when not declared(lbug_interval_to_difftime):
  proc lbug_interval_to_difftime*(interval: lbug_interval_t_570425848;
                                  out_result: ptr cdouble): void {.cdecl,
      importc: "lbug_interval_to_difftime".}
else:
  static :
    hint("Declaration of " & "lbug_interval_to_difftime" &
        " already exists, not redeclaring")
when not declared(lbug_interval_from_difftime):
  proc lbug_interval_from_difftime*(difftime: cdouble;
                                    out_result: ptr lbug_interval_t_570425848): void {.
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