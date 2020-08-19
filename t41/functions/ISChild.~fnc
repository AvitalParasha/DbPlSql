create or replace function ISChild(clientId1 in number) 
return boolean is

--variable
  FunctionResult boolean := true;
   -- cursor
  CURSOR c_surgery IS
  SELECT  *  FROM surgery
  where clientid = clientId1;
   -- record    
   r_surgery c_surgery%ROWTYPE;
begin
 OPEN c_surgery;
  
  LOOP
    FETCH  c_surgery  INTO r_surgery;
    EXIT WHEN c_surgery%NOTFOUND;
    
    if true then
      return false;
    end if;
  END LOOP;
  
  close c_surgery;

  return(FunctionResult);
end ISChild;
/
