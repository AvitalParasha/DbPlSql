create or replace procedure updateClientsAgent(clientId1 in number, AGENTID1 IN VARCHAR) is
 -- cursor
  CURSOR c_schedule IS
  SELECT  *  FROM schedule
  where clientid = clientid1;
   -- record    
   r_schedule c_schedule%ROWTYPE;
  
   
begin
   OPEN c_schedule;

  LOOP
    FETCH  c_schedule  INTO r_schedule;
    EXIT WHEN c_schedule%NOTFOUND;
    
    UPDATE 
        schedule
    SET  
        agentid = AGENTID1
    WHERE 
        clientid = CLIENTID1;

  END LOOP;
  close c_schedule;
  
end updateClientsAgent;
/
