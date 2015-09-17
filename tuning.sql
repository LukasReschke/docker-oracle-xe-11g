alter system reset dispatchers scope=spfile sid='*';
alter system reset shared_servers scope=spfile sid='*';
alter system set job_queue_processes=0 scope=both;
alter system set aq_tm_processes=0 scope=both;
exec dbms_xdb.setlistenerlocalaccess(FALSE);
exec dbms_xdb.sethttpport(0);
ALTER SYSTEM SET recyclebin = OFF;
alter system set sessions=250 scope=spfile;
alter system set processes=250 scope=spfile;
alter system set session_cached_cursors=250 scope=spfile;
alter system set session_max_open_files=250 scope=spfile;

quit;
/
