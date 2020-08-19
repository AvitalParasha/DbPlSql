create or replace noneditionable function numClients(cityName1 in varchar )
 return number is
  
numRows number:=  0;
   CURSOR c_client IS
    SELECT  *  FROM client
    where cityname = cityname1;
       r_client c_client%ROWTYPE;

   
begin
 
   OPEN c_client;
  
  LOOP
    FETCH  c_client  INTO r_client;
    EXIT WHEN c_client%NOTFOUND;
    numRows := numRows + 1;
  END LOOP;

  CLOSE c_client;
  return numRows;
end numClients;
/
