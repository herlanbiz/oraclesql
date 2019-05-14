--FA_ASSET_DESC_PUB remarked
 
select owner, object_name, object_type, 
TO_CHAR(created, 'DD-MON-YYYY HH24:MI:SS') created,
TO_CHAR(last_ddl_time, 'DD-MON-YYYY HH24:MI:SS') updated,
status
from dba_objects
where owner IN ('APPS', 'XDXG')
and object_type = 'PROCEDURE'
and object_name = 'FA_ASSET%'--and object_type IN ('TABLE', 'VIEW', 'PACKAGE', 'PACKAGE BODY', 'PROCEDURE', 'FUNCTION', 'TRIGGER')
order by 1, 2
