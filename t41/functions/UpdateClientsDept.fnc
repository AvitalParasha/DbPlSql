create or replace function UpdateClientsDept(clientId1 in number, isChild in boolean) 
return varchar2  is
--VARIABLE
   message varchar2(100);
begin
  
  if isChild = true then
    
    MESSAGE := 'HAS UPDATED TO CHILD';
  UPDATE 
        client
    SET  
        dept = 'Children'
    where clientid =  clientid1;

     
  else 
     
        MESSAGE := 'HAS UPDATED TO HEART DEPT - CABG';  
    UPDATE 
        client
    SET  
        dept = 'CABG'
     where clientid =  clientid1;
   
   END IF;
   
        
  return(MESSAGE);
end UpdateClientsDept;
/
