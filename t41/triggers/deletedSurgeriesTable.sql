create table deletedSurgeries( surgeonId number(9),
                      clientId number(9),
                      surgeryTime date,
                      surgeryType varchar(40),
                        dateDelted date,
                      primary key (surgeonId, clientId, surgeryTime),
                      foreign key (surgeonId) references  surgeon,
                      foreign key (clientId) references client
                    )
                      ;
            

