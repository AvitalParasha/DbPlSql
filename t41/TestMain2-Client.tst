PL/SQL Developer Test script 3.0
28
DECLARE
--variables
   -- cursor
  CURSOR c_CLIENT IS
  SELECT  *  FROM CLIENT;
   -- record    
   r_CLIENT c_CLIENT%ROWTYPE;
   
BEGIN

  OPEN c_CLIENT;
  
  LOOP
    FETCH  c_CLIENT  INTO r_CLIENT;
    EXIT WHEN c_CLIENT%NOTFOUND;
    updatecityforclient(2190855, 'Migdal HaEmek');
    updatecityforclient(3389828, 'Hertzliya');
    updatecityforclient(5000929, 'Eilat');
    
     updateClientsAgent(r_CLIENT.Clientid,r_CLIENT.AGENTID);

    DBMS_OUTPUT.PUT_LINE(updateclientsdept(r_CLIENT.Clientid, isChild(r_CLIENT.clientid))); 

  END LOOP;

  CLOSE c_CLIENT;

END;
0
0
