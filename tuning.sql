alter system reset dispatchers scope=spfile sid='*';
alter system reset shared_servers scope=spfile sid='*';
alter system set job_queue_processes=0 scope=both;
alter system set aq_tm_processes=0 scope=both;
exec dbms_xdb.setlistenerlocalaccess(FALSE);
exec dbms_xdb.sethttpport(0);
alter system set sessions=250 scope=spfile;
alter system set processes=250 scope=spfile;
alter system set session_cached_cursors=250 scope=spfile;
alter system set session_max_open_files=250 scope=spfile;
alter system set shared_pool_reserved_size='2056M' scope=spfile;
alter system set memory_max_target='2056M' scope=spfile;
alter system set sga_target = 0;
alter system set pga_aggregate_target = 0;
alter system set db_2k_cache_size ='32M';
alter system set db_4k_cache_size ='32M';
alter system set db_8k_cache_size ='32M';
alter system set db_16k_cache_size ='32M';
alter system set db_32k_cache_size ='32M';
alter system set filesystemio_options=setall scope=spfile;

quit;
/
