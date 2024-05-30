# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

* [`backuppc::client`](#backuppcclient): Manage BackupPC client
* [`backuppc::server`](#backuppcserver): Manage BackPC server

### Data types

* [`Backuppc::BlackoutPeriod`](#backuppcblackoutperiod): Type to define BlackoutPeriods
* [`Backuppc::DHCPAddressRange`](#backuppcdhcpaddressrange): Type to define DHCPAddressRanges

## Classes

### <a name="backuppcclient"></a>`backuppc::client`

Manage BackupPC client

#### Parameters

The following parameters are available in the `backuppc::client` class:

* [`backuppc_hostname`](#backuppc_hostname)
* [`ensure`](#ensure)
* [`config_name`](#config_name)
* [`manage_system_account`](#manage_system_account)
* [`system_account`](#system_account)
* [`system_account_home_directory`](#system_account_home_directory)
* [`system_account_uid`](#system_account_uid)
* [`system_account_gid`](#system_account_gid)
* [`system_additional_commands`](#system_additional_commands)
* [`system_additional_commands_noexec`](#system_additional_commands_noexec)
* [`manage_sudo`](#manage_sudo)
* [`manage_rsync`](#manage_rsync)
* [`rsync_path`](#rsync_path)
* [`tar_path`](#tar_path)
* [`client_name_alias`](#client_name_alias)
* [`xfer_method`](#xfer_method)
* [`xfer_loglevel`](#xfer_loglevel)
* [`backups_disable`](#backups_disable)
* [`full_period`](#full_period)
* [`incr_period`](#incr_period)
* [`full_keep_cnt`](#full_keep_cnt)
* [`full_keep_cnt_min`](#full_keep_cnt_min)
* [`full_age_max`](#full_age_max)
* [`incr_keep_cnt`](#incr_keep_cnt)
* [`incr_keep_cnt_min`](#incr_keep_cnt_min)
* [`incr_age_max`](#incr_age_max)
* [`blackout_bad_ping_limit`](#blackout_bad_ping_limit)
* [`ping_max_msec`](#ping_max_msec)
* [`blackout_good_cnt`](#blackout_good_cnt)
* [`backup_files_only`](#backup_files_only)
* [`backup_files_exclude`](#backup_files_exclude)
* [`smb_share_name`](#smb_share_name)
* [`smb_share_username`](#smb_share_username)
* [`smb_share_passwd`](#smb_share_passwd)
* [`smb_client_full_cmd`](#smb_client_full_cmd)
* [`smb_client_incr_cmd`](#smb_client_incr_cmd)
* [`smb_client_restore_cmd`](#smb_client_restore_cmd)
* [`tar_share_name`](#tar_share_name)
* [`tar_client_cmd`](#tar_client_cmd)
* [`tar_full_args`](#tar_full_args)
* [`tar_incr_args`](#tar_incr_args)
* [`tar_client_restore_cmd`](#tar_client_restore_cmd)
* [`rsync_client_path`](#rsync_client_path)
* [`rsync_ssh_args`](#rsync_ssh_args)
* [`rsync_args`](#rsync_args)
* [`rsync_args_extra`](#rsync_args_extra)
* [`rsync_restore_args`](#rsync_restore_args)
* [`rsync_restore_args_extra`](#rsync_restore_args_extra)
* [`rsync_share_name`](#rsync_share_name)
* [`rsyncd_client_port`](#rsyncd_client_port)
* [`rsyncd_user_name`](#rsyncd_user_name)
* [`rsyncd_passwd`](#rsyncd_passwd)
* [`dump_pre_user_cmd`](#dump_pre_user_cmd)
* [`dump_post_user_cmd`](#dump_post_user_cmd)
* [`dump_pre_share_cmd`](#dump_pre_share_cmd)
* [`dump_post_share_cmd`](#dump_post_share_cmd)
* [`restore_pre_user_cmd`](#restore_pre_user_cmd)
* [`restore_post_user_cmd`](#restore_post_user_cmd)
* [`user_cmd_check_status`](#user_cmd_check_status)
* [`email_notify_min_days`](#email_notify_min_days)
* [`email_from_user_name`](#email_from_user_name)
* [`email_admin_user_name`](#email_admin_user_name)
* [`email_notify_old_backup_days`](#email_notify_old_backup_days)
* [`hosts_file_dhcp`](#hosts_file_dhcp)
* [`hosts_file_user`](#hosts_file_user)
* [`hosts_file_more_users`](#hosts_file_more_users)
* [`export_sshkey`](#export_sshkey)

##### <a name="backuppc_hostname"></a>`backuppc_hostname`

Data type: `Stdlib::Host`

The BackupPC hostname
This is used to match which BackupPC server is authorized for backups

##### <a name="ensure"></a>`ensure`

Data type: `Enum['present','absent']`

Whether to add or remove BackupPC client resources

Default value: `'present'`

##### <a name="config_name"></a>`config_name`

Data type: `String`

Name of BackupPC client config

Default value: `$facts['networking']['fqdn']`

##### <a name="manage_system_account"></a>`manage_system_account`

Data type: `Boolean`

Manage the user account used to perform backups

Default value: ``true``

##### <a name="system_account"></a>`system_account`

Data type: `String`

Account used to perform backups

Default value: `'backup'`

##### <a name="system_account_home_directory"></a>`system_account_home_directory`

Data type: `Stdlib::Absolutepath`

The home directory of backup user

Default value: `'/var/backups'`

##### <a name="system_account_uid"></a>`system_account_uid`

Data type: `Optional[Integer]`

Backup user UID

Default value: ``undef``

##### <a name="system_account_gid"></a>`system_account_gid`

Data type: `Optional[Integer]`

Backup user and group GID

Default value: ``undef``

##### <a name="system_additional_commands"></a>`system_additional_commands`

Data type: `Array`

Authorize commands for backup user via sudo

Default value: `[]`

##### <a name="system_additional_commands_noexec"></a>`system_additional_commands_noexec`

Data type: `Array`

Authorize commands for backup user via sudo with NOEXEC

Default value: `[]`

##### <a name="manage_sudo"></a>`manage_sudo`

Data type: `Boolean`

Include sudo class

Default value: ``false``

##### <a name="manage_rsync"></a>`manage_rsync`

Data type: `Boolean`

Manage rsync package

Default value: ``true``

##### <a name="rsync_path"></a>`rsync_path`

Data type: `Stdlib::Absolutepath`

rsync path

Default value: `'/usr/bin/rsync'`

##### <a name="tar_path"></a>`tar_path`

Data type: `Stdlib::Absolutepath`

tar path

Default value: `'/bin/gtar'`

##### <a name="client_name_alias"></a>`client_name_alias`

Data type: `Optional[String]`

See config.pl ClientNameAlias

Default value: ``undef``

##### <a name="xfer_method"></a>`xfer_method`

Data type: `String`

See config.pl XferMethod

Default value: `'rsync'`

##### <a name="xfer_loglevel"></a>`xfer_loglevel`

Data type: `Integer`

See config.pl XferLogLevel

Default value: `1`

##### <a name="backups_disable"></a>`backups_disable`

Data type: `Optional[Boolean]`

See config.pl BackupsDisable

Default value: ``undef``

##### <a name="full_period"></a>`full_period`

Data type: `Optional[Variant[Integer, Float]]`

See config.pl FullPeriod

Default value: ``undef``

##### <a name="incr_period"></a>`incr_period`

Data type: `Optional[Variant[Integer, Float]]`

See config.pl IncrPeriod

Default value: ``undef``

##### <a name="full_keep_cnt"></a>`full_keep_cnt`

Data type: `Optional[Variant[Array[Integer], Integer]]`

See config.pl FullKeepCnt

Default value: ``undef``

##### <a name="full_keep_cnt_min"></a>`full_keep_cnt_min`

Data type: `Optional[Integer]`

See config.pl FullKeepCntMin

Default value: ``undef``

##### <a name="full_age_max"></a>`full_age_max`

Data type: `Optional[Integer]`

See config.pl FullAgeMax

Default value: ``undef``

##### <a name="incr_keep_cnt"></a>`incr_keep_cnt`

Data type: `Optional[Integer]`

See config.pl IncrKeepCnt

Default value: ``undef``

##### <a name="incr_keep_cnt_min"></a>`incr_keep_cnt_min`

Data type: `Optional[Integer]`

See config.pl IncrKeepCntMin

Default value: ``undef``

##### <a name="incr_age_max"></a>`incr_age_max`

Data type: `Optional[Integer]`

See config.pl IncrAgeMax

Default value: ``undef``

##### <a name="blackout_bad_ping_limit"></a>`blackout_bad_ping_limit`

Data type: `Optional[Integer]`

See config.pl BlackoutBadPingLimit

Default value: ``undef``

##### <a name="ping_max_msec"></a>`ping_max_msec`

Data type: `Optional[Integer]`

See config.pl PingMaxMsec

Default value: ``undef``

##### <a name="blackout_good_cnt"></a>`blackout_good_cnt`

Data type: `Optional[Integer]`

See config.pl BlackoutGoodCnt

Default value: ``undef``

##### <a name="backup_files_only"></a>`backup_files_only`

Data type: `Optional[Variant[Hash,Array,String]]`

See config.pl BackupFilesOnly

Default value: ``undef``

##### <a name="backup_files_exclude"></a>`backup_files_exclude`

Data type: `Optional[Variant[Hash,Array,String]]`

See config.pl BackupFilesExclude

Default value: ``undef``

##### <a name="smb_share_name"></a>`smb_share_name`

Data type: `Optional[String]`

See config.pl SmbShareName

Default value: ``undef``

##### <a name="smb_share_username"></a>`smb_share_username`

Data type: `Optional[String]`

See config.pl SmbShareUserName

Default value: ``undef``

##### <a name="smb_share_passwd"></a>`smb_share_passwd`

Data type: `Optional[String]`

See config.pl SmbSharePasswd

Default value: ``undef``

##### <a name="smb_client_full_cmd"></a>`smb_client_full_cmd`

Data type: `Optional[String]`

See config.pl SmbClientFullCmd

Default value: ``undef``

##### <a name="smb_client_incr_cmd"></a>`smb_client_incr_cmd`

Data type: `Optional[String]`

See config.pl SmbClientIncrCmd

Default value: ``undef``

##### <a name="smb_client_restore_cmd"></a>`smb_client_restore_cmd`

Data type: `Optional[String]`

See config.pl SmbClientRestoreCmd

Default value: ``undef``

##### <a name="tar_share_name"></a>`tar_share_name`

Data type: `Optional[Variant[Array, String]]`

See config.pl TarShareName

Default value: ``undef``

##### <a name="tar_client_cmd"></a>`tar_client_cmd`

Data type: `Optional[String]`

See config.pl TarClientCmd

Default value: ``undef``

##### <a name="tar_full_args"></a>`tar_full_args`

Data type: `Optional[String]`

See config.pl TarFullArgs

Default value: ``undef``

##### <a name="tar_incr_args"></a>`tar_incr_args`

Data type: `Optional[String]`

See config.pl TarIncrArgs

Default value: ``undef``

##### <a name="tar_client_restore_cmd"></a>`tar_client_restore_cmd`

Data type: `Optional[String]`

See config.pl TarClientRestoreCmd

Default value: ``undef``

##### <a name="rsync_client_path"></a>`rsync_client_path`

Data type: `Optional[String]`

See config.pl RsyncClientPath

Default value: ``undef``

##### <a name="rsync_ssh_args"></a>`rsync_ssh_args`

Data type: `Optional[Array]`

See config.pl RsyncSshArgs

Default value: ``undef``

##### <a name="rsync_args"></a>`rsync_args`

Data type: `Optional[Array]`

See config.pl RsyncArgs

Default value: ``undef``

##### <a name="rsync_args_extra"></a>`rsync_args_extra`

Data type: `Optional[Array]`

See config.pl RsyncArgsExtra

Default value: ``undef``

##### <a name="rsync_restore_args"></a>`rsync_restore_args`

Data type: `Optional[Array]`

See config.pl RsyncRestoreArgs

Default value: ``undef``

##### <a name="rsync_restore_args_extra"></a>`rsync_restore_args_extra`

Data type: `Optional[Array]`

See config.pl RsyncRestoreArgsExtra

Default value: ``undef``

##### <a name="rsync_share_name"></a>`rsync_share_name`

Data type: `Optional[Variant[Array, String]]`

See config.pl RsyncShareName

Default value: ``undef``

##### <a name="rsyncd_client_port"></a>`rsyncd_client_port`

Data type: `Optional[Integer]`

See config.pl RsyncdClientPort

Default value: ``undef``

##### <a name="rsyncd_user_name"></a>`rsyncd_user_name`

Data type: `Optional[String]`

See config.pl RsyncdUserName

Default value: ``undef``

##### <a name="rsyncd_passwd"></a>`rsyncd_passwd`

Data type: `Optional[String]`

See config.pl RsyncdPasswd

Default value: ``undef``

##### <a name="dump_pre_user_cmd"></a>`dump_pre_user_cmd`

Data type: `Optional[String]`

See config.pl DumpPreUserCmd

Default value: ``undef``

##### <a name="dump_post_user_cmd"></a>`dump_post_user_cmd`

Data type: `Optional[String]`

See config.pl DumpPostUserCmd

Default value: ``undef``

##### <a name="dump_pre_share_cmd"></a>`dump_pre_share_cmd`

Data type: `Optional[String]`

See config.pl DumpPreShareCmd

Default value: ``undef``

##### <a name="dump_post_share_cmd"></a>`dump_post_share_cmd`

Data type: `Optional[String]`

See config.pl DumpPostShareCmd

Default value: ``undef``

##### <a name="restore_pre_user_cmd"></a>`restore_pre_user_cmd`

Data type: `Optional[String]`

See config.pl RestorePreUserCmd

Default value: ``undef``

##### <a name="restore_post_user_cmd"></a>`restore_post_user_cmd`

Data type: `Optional[String]`

See config.pl RestorePostUserCmd

Default value: ``undef``

##### <a name="user_cmd_check_status"></a>`user_cmd_check_status`

Data type: `Optional[Boolean]`

See config.pl UserCmdCheckStatus

Default value: ``undef``

##### <a name="email_notify_min_days"></a>`email_notify_min_days`

Data type: `Optional[Variant[Integer, Float]]`

See config.pl EMailNotifyMinDays

Default value: ``undef``

##### <a name="email_from_user_name"></a>`email_from_user_name`

Data type: `Optional[String]`

See config.pl EMailFromUserName

Default value: ``undef``

##### <a name="email_admin_user_name"></a>`email_admin_user_name`

Data type: `Optional[String]`

See config.pl EMailAdminUserName

Default value: ``undef``

##### <a name="email_notify_old_backup_days"></a>`email_notify_old_backup_days`

Data type: `Optional[Integer]`

See config.pl EMailNotifyOldBackupDays

Default value: ``undef``

##### <a name="hosts_file_dhcp"></a>`hosts_file_dhcp`

Data type: `Boolean`

Whether to use enable DHCP in hosts file

Default value: ``false``

##### <a name="hosts_file_user"></a>`hosts_file_user`

Data type: `String`

Hosts file user

Default value: `'backuppc'`

##### <a name="hosts_file_more_users"></a>`hosts_file_more_users`

Data type: `Array`

Hosts file more users

Default value: `[]`

##### <a name="export_sshkey"></a>`export_sshkey`

Data type: `Boolean`

Set whether to export the SSH key for the backup client to BackupPC server

Default value: ``true``

### <a name="backuppcserver"></a>`backuppc::server`

Manage BackPC server

#### Parameters

The following parameters are available in the `backuppc::server` class:

* [`package_name`](#package_name)
* [`manage_repo`](#manage_repo)
* [`service_name`](#service_name)
* [`config_dir`](#config_dir)
* [`replace_config`](#replace_config)
* [`manage_topdir`](#manage_topdir)
* [`topdir`](#topdir)
* [`install_dir`](#install_dir)
* [`log_dir`](#log_dir)
* [`run_dir`](#run_dir)
* [`df_path`](#df_path)
* [`cat_path`](#cat_path)
* [`par_path`](#par_path)
* [`gzip_path`](#gzip_path)
* [`bzip2_path`](#bzip2_path)
* [`rsync_path`](#rsync_path)
* [`tar_path`](#tar_path)
* [`rsync_bpc_path`](#rsync_bpc_path)
* [`ping_path`](#ping_path)
* [`ping6_path`](#ping6_path)
* [`cgi_dir`](#cgi_dir)
* [`cgi_image_dir`](#cgi_image_dir)
* [`cgi_image_dir_url`](#cgi_image_dir_url)
* [`apache_group`](#apache_group)
* [`server_host`](#server_host)
* [`wakeup_schedule`](#wakeup_schedule)
* [`pool_v3_enabled`](#pool_v3_enabled)
* [`max_backups`](#max_backups)
* [`max_user_backups`](#max_user_backups)
* [`max_pending_cmds`](#max_pending_cmds)
* [`max_backup_pc_nightly_jobs`](#max_backup_pc_nightly_jobs)
* [`backup_pc_nightly_period`](#backup_pc_nightly_period)
* [`pool_size_nightly_update_period`](#pool_size_nightly_update_period)
* [`pool_nightly_digest_check_percent`](#pool_nightly_digest_check_percent)
* [`ref_cnt_fsck`](#ref_cnt_fsck)
* [`max_old_log_files`](#max_old_log_files)
* [`df_max_usage_pct`](#df_max_usage_pct)
* [`df_max_inode_usage_pct`](#df_max_inode_usage_pct)
* [`dhcp_address_ranges`](#dhcp_address_ranges)
* [`full_period`](#full_period)
* [`incr_period`](#incr_period)
* [`fill_cycle`](#fill_cycle)
* [`full_keep_cnt`](#full_keep_cnt)
* [`full_age_max`](#full_age_max)
* [`incr_keep_cnt`](#incr_keep_cnt)
* [`incr_age_max`](#incr_age_max)
* [`restore_info_keep_cnt`](#restore_info_keep_cnt)
* [`archive_info_keep_cnt`](#archive_info_keep_cnt)
* [`blackout_good_cnt`](#blackout_good_cnt)
* [`blackout_periods`](#blackout_periods)
* [`blackout_zero_files_is_fatal`](#blackout_zero_files_is_fatal)
* [`rsync_cmd_default_user`](#rsync_cmd_default_user)
* [`rsync_client_path`](#rsync_client_path)
* [`rsync_args`](#rsync_args)
* [`rsync_args_extra`](#rsync_args_extra)
* [`rsync_full_args_extra`](#rsync_full_args_extra)
* [`rsync_incr_args_extra`](#rsync_incr_args_extra)
* [`rsync_restore_args`](#rsync_restore_args)
* [`rsync_restore_args_extra`](#rsync_restore_args_extra)
* [`compress_level`](#compress_level)
* [`email_notify_min_days`](#email_notify_min_days)
* [`email_from_user_name`](#email_from_user_name)
* [`email_admin_user_name`](#email_admin_user_name)
* [`email_user_dest_domain`](#email_user_dest_domain)
* [`email_notify_old_backup_days`](#email_notify_old_backup_days)
* [`email_headers`](#email_headers)
* [`cgi_admin_user_group`](#cgi_admin_user_group)
* [`cgi_admin_users`](#cgi_admin_users)
* [`cgi_url`](#cgi_url)
* [`manage_user`](#manage_user)
* [`user_uid`](#user_uid)
* [`user_shell`](#user_shell)
* [`user_gid`](#user_gid)

##### <a name="package_name"></a>`package_name`

Data type: `String`

Package name

Default value: `'BackupPC'`

##### <a name="manage_repo"></a>`manage_repo`

Data type: `Boolean`

Manage repo
Only applies to EL systems to manage EPEL

Default value: ``true``

##### <a name="service_name"></a>`service_name`

Data type: `String`

Service name

Default value: `'backuppc'`

##### <a name="config_dir"></a>`config_dir`

Data type: `Stdlib::Absolutepath`

Config directory

Default value: `'/etc/BackupPC'`

##### <a name="replace_config"></a>`replace_config`

Data type: `Boolean`

Set if replace BackupPC config.pl

Default value: ``true``

##### <a name="manage_topdir"></a>`manage_topdir`

Data type: `Boolean`

Manage BackupPC topdir

Default value: ``true``

##### <a name="topdir"></a>`topdir`

Data type: `Stdlib::Absolutepath`

Path to topdir

Default value: `'/var/lib/BackupPC'`

##### <a name="install_dir"></a>`install_dir`

Data type: `Stdlib::Absolutepath`

BackupPC install directory

Default value: `'/usr/share/BackupPC'`

##### <a name="log_dir"></a>`log_dir`

Data type: `Stdlib::Absolutepath`

Log directory

Default value: `'/var/log/BackupPC'`

##### <a name="run_dir"></a>`run_dir`

Data type: `Stdlib::Absolutepath`

Run dir

Default value: `'/var/run/BackupPC'`

##### <a name="df_path"></a>`df_path`

Data type: `Stdlib::Absolutepath`

Path to df

Default value: `'/usr/bin/df'`

##### <a name="cat_path"></a>`cat_path`

Data type: `Stdlib::Absolutepath`

Path to cat

Default value: `'/usr/bin/cat'`

##### <a name="par_path"></a>`par_path`

Data type: `Stdlib::Absolutepath`

Path to par2

Default value: `'/usr/bin/par2'`

##### <a name="gzip_path"></a>`gzip_path`

Data type: `Stdlib::Absolutepath`

Path to gzip

Default value: `'/usr/bin/gzip'`

##### <a name="bzip2_path"></a>`bzip2_path`

Data type: `Stdlib::Absolutepath`

Path to bzip2

Default value: `'/usr/bin/bzip2'`

##### <a name="rsync_path"></a>`rsync_path`

Data type: `Stdlib::Absolutepath`

Path to rsync

Default value: `'/usr/bin/rsync'`

##### <a name="tar_path"></a>`tar_path`

Data type: `Stdlib::Absolutepath`

Path to tar

Default value: `'/bin/gtar'`

##### <a name="rsync_bpc_path"></a>`rsync_bpc_path`

Data type: `Stdlib::Absolutepath`

Path to rsync_bpc

Default value: `'/usr/bin/rsync_bpc'`

##### <a name="ping_path"></a>`ping_path`

Data type: `Stdlib::Absolutepath`

Path to ping

Default value: `'/usr/sbin/ping'`

##### <a name="ping6_path"></a>`ping6_path`

Data type: `Stdlib::Absolutepath`

Path to ping6

Default value: `'/usr/sbin/ping6'`

##### <a name="cgi_dir"></a>`cgi_dir`

Data type: `Stdlib::Absolutepath`

CGI directory

Default value: `'/usr/libexec/BackupPC'`

##### <a name="cgi_image_dir"></a>`cgi_image_dir`

Data type: `Stdlib::Absolutepath`

CGI image directory

Default value: `'/usr/share/BackupPC/html'`

##### <a name="cgi_image_dir_url"></a>`cgi_image_dir_url`

Data type: `Stdlib::Absolutepath`

CGI image directory URL

Default value: `'/BackupPC/images'`

##### <a name="apache_group"></a>`apache_group`

Data type: `String`

Apache group

Default value: `'apache'`

##### <a name="server_host"></a>`server_host`

Data type: `Stdlib::Fqdn`

config.pl ServerHost

Default value: `$facts['networking']['fqdn']`

##### <a name="wakeup_schedule"></a>`wakeup_schedule`

Data type: `Array[Integer]`

config.pl WakeupSchedule

Default value: `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23]`

##### <a name="pool_v3_enabled"></a>`pool_v3_enabled`

Data type: `Boolean`

config.pl PoolV3Enabled

Default value: ``false``

##### <a name="max_backups"></a>`max_backups`

Data type: `Integer`

config.pl MaxBackups

Default value: `4`

##### <a name="max_user_backups"></a>`max_user_backups`

Data type: `Integer`

config.pl MaxUserBackups

Default value: `4`

##### <a name="max_pending_cmds"></a>`max_pending_cmds`

Data type: `Integer`

config.pl MaxPendingCmds

Default value: `15`

##### <a name="max_backup_pc_nightly_jobs"></a>`max_backup_pc_nightly_jobs`

Data type: `Integer`

config.pl MaxBackupPCNightlyJobs

Default value: `2`

##### <a name="backup_pc_nightly_period"></a>`backup_pc_nightly_period`

Data type: `Integer`

config.pl BackupPCNightlyPeriod

Default value: `1`

##### <a name="pool_size_nightly_update_period"></a>`pool_size_nightly_update_period`

Data type: `Integer`

config.pl PoolSizeNightlyUpdatePeriod

Default value: `16`

##### <a name="pool_nightly_digest_check_percent"></a>`pool_nightly_digest_check_percent`

Data type: `Integer`

config.pl PoolNightlyDigestCheckPercent

Default value: `1`

##### <a name="ref_cnt_fsck"></a>`ref_cnt_fsck`

Data type: `Integer`

config.pl RefCntFsck

Default value: `1`

##### <a name="max_old_log_files"></a>`max_old_log_files`

Data type: `Integer`

config.pl MaxOldLogFiles

Default value: `14`

##### <a name="df_max_usage_pct"></a>`df_max_usage_pct`

Data type: `Integer`

config.pl DfMaxUsagePct

Default value: `95`

##### <a name="df_max_inode_usage_pct"></a>`df_max_inode_usage_pct`

Data type: `Integer`

config.pl DfMaxInodeUsagePct

Default value: `95`

##### <a name="dhcp_address_ranges"></a>`dhcp_address_ranges`

Data type: `Array[Backuppc::DHCPAddressRange]`

config.pl DHCPAddressRanges

Default value: `[]`

##### <a name="full_period"></a>`full_period`

Data type: `Variant[Integer, Float]`

config.pl FullPeriod

Default value: `6.97`

##### <a name="incr_period"></a>`incr_period`

Data type: `Variant[Integer, Float]`

config.pl IncrPeriod

Default value: `0.97`

##### <a name="fill_cycle"></a>`fill_cycle`

Data type: `Integer`

config.pl FillCycle

Default value: `0`

##### <a name="full_keep_cnt"></a>`full_keep_cnt`

Data type: `Variant[Array[Integer], Integer]`

config.pl FullKeepCnt

Default value: `[1]`

##### <a name="full_age_max"></a>`full_age_max`

Data type: `Integer`

config.pl FullAgeMax

Default value: `180`

##### <a name="incr_keep_cnt"></a>`incr_keep_cnt`

Data type: `Integer`

config.pl IncrKeepCnt

Default value: `6`

##### <a name="incr_age_max"></a>`incr_age_max`

Data type: `Integer`

config.pl IncrAgeMax

Default value: `30`

##### <a name="restore_info_keep_cnt"></a>`restore_info_keep_cnt`

Data type: `Integer`

config.pl RestoreInfoKeepCnt

Default value: `10`

##### <a name="archive_info_keep_cnt"></a>`archive_info_keep_cnt`

Data type: `Integer`

config.pl ArchiveInfoKeepCnt

Default value: `10`

##### <a name="blackout_good_cnt"></a>`blackout_good_cnt`

Data type: `Integer`

config.pl BlackoutGoodCnt

Default value: `7`

##### <a name="blackout_periods"></a>`blackout_periods`

Data type: `Array[Backuppc::BlackoutPeriod]`

config.pl BlackoutPeriods

Default value: `[
    {
      hour_begin => 7.0,
      hour_end   => 19.5,
      week_days  => [1, 2, 3, 4, 5],
    }
  ]`

##### <a name="blackout_zero_files_is_fatal"></a>`blackout_zero_files_is_fatal`

Data type: `Boolean`

config.pl BackupZeroFilesIsFatal

Default value: ``true``

##### <a name="rsync_cmd_default_user"></a>`rsync_cmd_default_user`

Data type: `String`

Default user for rsync backups

Default value: `'root'`

##### <a name="rsync_client_path"></a>`rsync_client_path`

Data type: `String`

config.pl RsyncClientPath

Default value: `'/usr/bin/rsync'`

##### <a name="rsync_args"></a>`rsync_args`

Data type: `Array`

config.pl RsyncArgs

Default value: `[]`

##### <a name="rsync_args_extra"></a>`rsync_args_extra`

Data type: `Array`

config.pl RsyncArgsExtra

Default value: `[]`

##### <a name="rsync_full_args_extra"></a>`rsync_full_args_extra`

Data type: `Array`

config.pl RsyncFullArgsExtra

Default value: `['--checksum']`

##### <a name="rsync_incr_args_extra"></a>`rsync_incr_args_extra`

Data type: `Array`

config.pl RsyncIncrArgsExtra

Default value: `[]`

##### <a name="rsync_restore_args"></a>`rsync_restore_args`

Data type: `Array`

config.pl RsyncRestoreArgs

Default value: `[]`

##### <a name="rsync_restore_args_extra"></a>`rsync_restore_args_extra`

Data type: `Array`

config.pl RsyncRestoreArgsExtra

Default value: `[]`

##### <a name="compress_level"></a>`compress_level`

Data type: `Integer[1,9]`

config.pl CompressLevel

Default value: `3`

##### <a name="email_notify_min_days"></a>`email_notify_min_days`

Data type: `Variant[Integer, Float]`

config.pl EMailNotifyMinDays

Default value: `2.5`

##### <a name="email_from_user_name"></a>`email_from_user_name`

Data type: `String`

config.pl EMailFromUserName

Default value: `'backuppc'`

##### <a name="email_admin_user_name"></a>`email_admin_user_name`

Data type: `String`

config.pl EMailAdminUserName

Default value: `'backuppc'`

##### <a name="email_user_dest_domain"></a>`email_user_dest_domain`

Data type: `Optional[String]`

config.pl EMailUserDestDomain

Default value: ``undef``

##### <a name="email_notify_old_backup_days"></a>`email_notify_old_backup_days`

Data type: `Variant[Integer, Float]`

config.pl EMailNotifyOldBackupDays

Default value: `7.0`

##### <a name="email_headers"></a>`email_headers`

Data type: `Hash`

config.pl EMailHeaders

Default value: `{
    'MIME-Version' => 1.0,
    'Content-Type' => 'text/plain; charset="utf-8"',
  }`

##### <a name="cgi_admin_user_group"></a>`cgi_admin_user_group`

Data type: `Variant[Array[String], String]`

config.pl CgiAdminUserGroup

Default value: `[]`

##### <a name="cgi_admin_users"></a>`cgi_admin_users`

Data type: `Variant[Array[String], String]`

config.pl CgiAdminUsers

Default value: `[]`

##### <a name="cgi_url"></a>`cgi_url`

Data type: `Variant[Stdlib::HTTPUrl, Stdlib::HTTPSUrl]`

config.pl CgiURL

Default value: `"http://${facts['networking']['fqdn']}/backuppc"`

##### <a name="manage_user"></a>`manage_user`

Data type: `Boolean`

Manage BackupPC user and group

Default value: ``true``

##### <a name="user_uid"></a>`user_uid`

Data type: `Optional[Integer]`

BackupPC UID

Default value: ``undef``

##### <a name="user_shell"></a>`user_shell`

Data type: `Stdlib::Absolutepath`

BackupPC user shell

Default value: `'/sbin/nologin'`

##### <a name="user_gid"></a>`user_gid`

Data type: `Optional[Integer]`

BackupPC user and group GID

Default value: ``undef``

## Data types

### <a name="backuppcblackoutperiod"></a>`Backuppc::BlackoutPeriod`

Type to define BlackoutPeriods

Alias of

```puppet
Struct[{
  'hour_begin' => Variant[Integer, Float],
  'hour_end'   => Variant[Integer, Float],
  'week_days'  => Array[Integer],
}]
```

### <a name="backuppcdhcpaddressrange"></a>`Backuppc::DHCPAddressRange`

Type to define DHCPAddressRanges

Alias of

```puppet
Struct[{
  'ip_addr_base' => String,
  'first'        => Integer,
  'last'         => Integer,
}]
```
