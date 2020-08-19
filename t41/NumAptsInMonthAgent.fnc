create or replace function NumAptsInMonthAgent(agentid1 in number, year in varchar2 , month in varchar2) 
return integer is
 --variable
numAptms integer := 0;
 --cursor
  CURSOR c_sched IS
  select * from schedule
  WHERE EXTRACT(YEAR FROM schedule.meetingtime) = year 
  and EXTRACT(MONTH FROM schedule.meetingtime) = month
  and agentid = agentid1;
   -- record    
   r_sched c_sched%ROWTYPE;
begin
    OPEN c_sched;
    LOOP
         FETCH  c_sched  INTO r_sched;
         EXIT WHEN c_sched%NOTFOUND;
         -- count appointments
           numAptms := numAptms +1;
    END LOOP;
  CLOSE c_sched;
  return(numAptms);
end NumAptsInMonthAgent;
/
