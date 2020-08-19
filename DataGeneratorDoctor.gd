
[General]
Version=1

[Preferences]
Username=
Password=2063
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OURUSER
Name=DOCTOR
Count=100..130

[Record]
Name=DOCTORID
Type=NUMBER
Size=9
Data=Random(213567655, 912213434)
Master=

[Record]
Name=DOCTORNAME
Type=VARCHAR2
Size=20
Data=FirstName+ ' ' + LastName
Master=

[Record]
Name=SALARY
Type=NUMBER
Size=5
Data=Random(10000, 90000)
Master=

