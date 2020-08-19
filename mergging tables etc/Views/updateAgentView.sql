update agentview
set  meetingtime = TO_DATE('09292017' || ' ' || TO_CHAR(meetingtime, 
        *'HH24:MI:SS'),'MMDDYY HH24:MI:SS')
where EXTRACT(YEAR FROM meetingtime) = '2017' 
and EXTRACT(MONTH FROM meetingtime) = '09' 
and EXTRACT(DAY FROM meetingtime) = '28';
