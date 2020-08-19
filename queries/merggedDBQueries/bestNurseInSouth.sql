select nurseid , nurseName
from nurse natural join area
where areaName = 'South' and rating >= all(
select rating 
from nurse
where areaName = 'South'
)
