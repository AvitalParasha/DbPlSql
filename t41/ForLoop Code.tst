PL/SQL Developer Test script 3.0
13
-- Created on 5/19/2020 by TEST 
DECLARE 
   x number := 10; 
BEGIN 
   LOOP 
      dbms_output.put_line(x); 
      x := x + 10; 
      IF x > 50 THEN 
         exit; 
      END IF; 
   END LOOP; 
   dbms_output.put_line('After Exit x is: ' || x); 
END; 
0
0
