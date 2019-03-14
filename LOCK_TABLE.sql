/* Formatted on 2012/08/01 14:58 (Formatter Plus v4.8.8) */
SELECT c.owner, c.object_name, c.object_type, b.SID, b.serial#, b.status,
       b.osuser, b.machine
  FROM v$locked_object a, v$session b, dba_objects c
 WHERE b.SID = a.session_id AND a.object_id = c.object_id;
 
 
ALTER SYSTEM KILL SESSION '4842, 38657' --SID, SERIAL# ;