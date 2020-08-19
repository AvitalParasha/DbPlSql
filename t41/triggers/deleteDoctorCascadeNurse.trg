create or replace trigger deleteDoctorCascadeNurse
  before delete
  on doctor 
  for each row
declare
  -- local variables here

begin
  
  DELETE FROM nurse
  WHERE bossid = :old.doctorid;

end deleteDoctorCascadeNurse;
/
