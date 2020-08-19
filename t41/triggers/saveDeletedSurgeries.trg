create or replace trigger saveDeletedSurgeries
  before delete
  on surgery 
  for each row
declare
  -- local variables here
begin
  
     insert into deletedSurgeries
     values(:old.surgeonId,
     :old.clientId,
     :old.surgeryTime,
     :old.surgeryType, 
     current_date); 


end saveDeletedSurgeries;
/
