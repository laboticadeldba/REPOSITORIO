select * from v$sql where sql_text like'%my_query%';
select * from table (dbms_xplain.display_cursor('isql_idididi'));

