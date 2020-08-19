
[General]
Version=1

[Preferences]
Username=
Password=2331
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OURUSER
Name=SURGEON
Count=100..200

[Record]
Name=SURGEONID
Type=NUMBER
Size=9
Data=Random(300212344, 834322155)
Master=

[Record]
Name=SURGEONNAME
Type=VARCHAR2
Size=40
Data=FirstName + 
=' '  + LastName
Master=

[Record]
Name=DEPT
Type=VARCHAR2
Size=50
Data='CABG'
Master=

[Record]
Name=SENIORITY
Type=NUMBER
Size=2
Data=Random(0, 40)
Master=

