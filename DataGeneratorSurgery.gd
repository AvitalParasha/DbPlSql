
[General]
Version=1

[Preferences]
Username=
Password=2291
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=OURUSER
Name=SURGERY
Count=150..250

[Record]
Name=SURGEONID
Type=NUMBER
Size=9
Data=List(select surgeonid from surgeon)
Master=

[Record]
Name=CLIENTID
Type=NUMBER
Size=9
Data=List(select clientid from schedule)
Master=

[Record]
Name=SURGERYTIME
Type=DATE
Size=
Data=List(select meetingtime from schedule)
Master=

[Record]
Name=SURGERYTYPE
Type=VARCHAR2
Size=40
Data='CABG'
Master=

