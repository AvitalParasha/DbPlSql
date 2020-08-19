create or replace trigger newAgentRating
  before insert
  on agent 
  for each row
declare
  -- local variables here
 -- rate number:= 0;
  excepBig exception;
  excepSmall exception;
begin
  --select :new.rating into rate
  --from agent;
  
  if :new.rating > 0 then
    raise excepBig;
  end if;
  
  if :new.rating < 0 then
    raise excepSmall;
  end if;
  
  exception
    when excepBig then
      raise_application_error(-20001,'wrong agent rating,
      when adding an agent the rating should be 0 not bigger');
      
     when excepSmall then
      raise_application_error(-20002,'wrong agent rating, 
      when adding an agent the rating should be 0 not smaller');
  
end newAgentRating;
/
