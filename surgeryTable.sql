create table surgery(surgeryId  number generated always as identity,
                      clientId number(9),
                      surgeryTime date,
                      surgeryType varchar(40),
                      surgeonId number(9),
                      primary key (surgeryId),
                      foreign key (surgeonId) references  surgeon,
                      foreign key (clientId) references client);
            
