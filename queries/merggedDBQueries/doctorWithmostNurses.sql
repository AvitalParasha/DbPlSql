select doctorid, doctorname
from doctor
where doctorid in
    ( select bossid from nurse 
      group by bossid
      having count(*) >= all(
         select count(*) from nurse
         group by bossid))
