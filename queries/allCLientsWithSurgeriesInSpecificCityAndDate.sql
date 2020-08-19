select clientid, clientname 
from surgery natural join client natural join city
where EXTRACT(YEAR FROM surgery.surgerytime) = '2017' 
and EXTRACT(MONTH FROM surgery.surgerytime) = '09' 
and EXTRACT(DAY FROM surgery.surgerytime) = '28'
and cityname = 'Arad';
