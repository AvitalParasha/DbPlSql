SELECT clientid  FROM CLIENT c
where clientid in(
select clientid from schedule
where agentid <> c.agentid and clientid = c.clientid);
