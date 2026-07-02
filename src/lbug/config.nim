# vim: set et sta sw=4 ts=4 :

func lbugConfig*(
    buffer_pool_size            = LBUG_DEFAULT_CONFIG.buffer_pool_size,
    max_num_threads             = LBUG_DEFAULT_CONFIG.max_num_threads,
    enable_compression          = LBUG_DEFAULT_CONFIG.enable_compression,
    read_only                   = LBUG_DEFAULT_CONFIG.read_only,
    max_db_size                 = LBUG_DEFAULT_CONFIG.max_db_size,
    auto_checkpoint             = LBUG_DEFAULT_CONFIG.auto_checkpoint,
    checkpoint_threshold        = LBUG_DEFAULT_CONFIG.checkpoint_threshold,
    throw_on_wal_replay_failure = LBUG_DEFAULT_CONFIG.throw_on_wal_replay_failure,
    enable_checksums            = LBUG_DEFAULT_CONFIG.enable_checksums,
    enable_multi_writes         = LBUG_DEFAULT_CONFIG.enable_multi_writes,
    enable_default_hash_index   = LBUG_DEFAULT_CONFIG.enable_default_hash_index
    ): lbug_system_config =
    ## Returns a new lbug database configuration object.

    return lbug_system_config(
        buffer_pool_size:            buffer_pool_size,
        max_num_threads:             max_num_threads,
        enable_compression:          enable_compression,
        read_only:                   read_only,
        max_db_size:                 max_db_size,
        auto_checkpoint:             auto_checkpoint,
        checkpoint_threshold:        checkpoint_threshold,
        throw_on_wal_replay_failure: throw_on_wal_replay_failure,
        enable_checksums:            enable_checksums,
        enable_multi_writes:         enable_multi_writes,
        enable_default_hash_index:   enable_default_hash_index
    )

