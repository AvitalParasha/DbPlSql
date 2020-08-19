Create table nurse(nurseID number(9) primary key,   
                   nurseName  varchar(20), 
           areaID     number(3) references  area, 
           Rating     number(2), 
           HireYear   number(4), 
           bossID     number(9), 
           salary     float);
