
[General]
Version=1

[Preferences]
Username=
Password=2566
Database=
DateFormat=
CommitCount=100
CommitDelay=0
InitScript=

[Table]
Owner=SYS
Name=NURSE
Count=180..300

[Record]
Name=NURSEID
Type=NUMBER
Size=9
Data=Random(200000000, 500000000)
Master=

[Record]
Name=NURSENAME
Type=VARCHAR2
Size=20
Data=FirstName + LastName
Master=

[Record]
Name=AREAID
Type=NUMBER
Size=3
Data=List(select areaid from area)
Master=

[Record]
Name=RATING
Type=NUMBER
Size=2
Data=Random(0, 10)
Master=

[Record]
Name=HIREYEAR
Type=NUMBER
Size=4
Data=Random(1950, 2020)
Master=

[Record]
Name=BOSSID
Type=NUMBER
Size=9
Data=List(select doctorId from doctor)
Master=

[Record]
Name=SALARY
Type=FLOAT
Size=22
Data=Random(9000, 80000)
Master=

