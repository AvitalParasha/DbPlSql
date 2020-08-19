PL/SQL Developer Test script 3.0
39
-- Created on 5/26/2020 by TEST 
DECLARE
--variables
  numAptms integer := 0;
  newSalary float;
   -- cursor
  CURSOR c_agent IS
  SELECT  *  FROM agent;
   -- record    
   r_agent c_agent%ROWTYPE;
   
BEGIN

  -- reset salary of all agents
  UPDATE agent SET SALARY = 0;

  OPEN c_agent;
  
  LOOP
    FETCH  c_agent  INTO r_agent;
    EXIT WHEN c_agent%NOTFOUND;
    numAptms := NumAptsInMonthAgent(r_agent.agentid, '2018', '06');
      
    --salary = rating * 800 + 90 * numAptms 
    newSalary := SalaryCompution(numAptms,r_agent.rating);
    UPDATE 
        agent
    SET  
        salary = newSalary
    WHERE 
        agentid = r_agent.agentid;

  END LOOP;

    DBMS_OUTPUT.PUT_LINE( 'Operation Completed Successfully!' );

  CLOSE c_agent;

END;
0
0
