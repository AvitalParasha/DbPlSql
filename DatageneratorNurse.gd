
[General]
Version=1

[Preferences]
Username=
Password=2950
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OURUSER
Name=NURSE
Count=200..220

[Record]
Name=NURSEID
Type=NUMBER
Size=9
Data=Random(102234545, 604445655)
Master=

[Record]
Name=NURSENAME
Type=VARCHAR2
Size=20
Data=FirstName+
= ' '  + LastName
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
Data=Random(0, 99)
Master=

[Record]
Name=HIREYEAR
Type=NUMBER
Size=4
Data=Random(1960, 2020)
Master=

[Record]
Name=BOSSID
Type=NUMBER
Size=9
Data=List(select doctorid from doctor)
Master=

[Record]
Name=SALARY
Type=FLOAT
Size=22
Data=Random(12000, 56000)
Master=

