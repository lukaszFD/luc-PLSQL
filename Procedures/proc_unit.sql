CREATE OR REPLACE PROCEDURE proc_unit
IS  
BEGIN  
   DBMS_OUTPUT.put_line ('Program Unit = ' || $$plsql_unit || ' | Line number: ' || $$plsql_line);  

END; 