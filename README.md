CASE PAGE TITLE
00136878 | Case | Salesforce

Skip to Navigation
Skip to Main Content
Search...
Add favorite
Favorites list
Global Actions
Guidance Center
Salesforce Help
Setup
20+
Notifications
53 new notifications
View profile
App Launcher
Service Console
Cases
Show Navigation Menu
Press Spacebar to reorder tabs.
John Bettencourt Support Dashboard (Loading...)
Actions
Case
00136878 | Case
Actions for 00136878 | Case
Close 00136878 | Case
Split view mode
Case Details
Show available actions
Case Number
00136878
Priority
P3
Edit Priority
Case Owner
John Bettencourt
Preview
Edit Case Owner
Status
In Progress
Edit Status
Department
USCA - West - App Eng
What Do You Need Help with
Toolpathing and Machining
Edit What Do You Need Help with
Subject
4-Axis Unified Toolpath – Unexpected A-Axis Rotation
Edit Subject
Description
Good morning,

I need someone to connect , I have a unified cut that I want to do, on the simulation it looks like what I want to do, but I spit the code and dry ran and the 4 axis seems to be just spinning 360 degrees at every A axis command in the machine.

I use a similar cut for another part and code I got last time is different that the one now.

(OLD CODE)
G21
G90 G80 G40 G0
N5 (1/2 INSERT END MILL)
G17
G15 H1
T5 M06
G0 G90 X78.443 Y-2.508 M15 A180. S1400 M3
M08
G56 H5 D5 Z35.
Z34.579
G1 Z24.579 F127.
Y-6.497 F175.
Y0. Z25.425 A165.18
A163.517
A161.711
A159.904
A158.097
A156.29
A154.484
A152.677
A150.87
Y-15.096
G0 Z35.425
Z45.425
Y-13.797 Z47.757
M09
M5
G30 P1
M30
%


(NEW CODE)
G21
G90 G80 G40 G0
N5 (1/2 END MILL)
G17
G15 H1
T272 M06
G0 G90 X28.15 Y15.139 M15 A340. S2500 M3
M08
G56 H272 D272 Z30.374
Z24.254
G1 Z14.254 F254.
Y1.078 F508.
G93 Y1.369 Z14.207 A337.813 F.6
Y1.658 Z14.149 A335.625 F.6
Y1.945 Z14.081 A333.438 F.6
Y2.229 Z14.001 A331.25 F.6
Y2.51 Z13.91 A329.062 F.6
Y2.787 Z13.809 A326.875 F.6
Y3.06 Z13.698 A324.687 F.6
Y3.329 Z13.576 A322.5 F.6
Y3.592 Z13.444 A320.313 F.6
Y3.851 Z13.302 A318.125 F.6
Y4.104 Z13.15 A315.938 F.6
Y4.35 Z12.988 A313.75 F.6
Y4.591 Z12.818 A311.562 F.6
Y4.825 Z12.638 A309.375 F.6
Y5.052 Z12.449 A307.187 F.6
Y5.271 Z12.252 A305. F.6
G94
Y-18.037 F508.
G0 Z22.252
Z30.335
M09
M5
G30 P1
M30
%

Carlos Enrique Freytes Gines | Sr.Principal Numerical Control Programmer
Northrop Grumman Corporation | Defense Systems
C: (623)581-4400 | O : (480)-324-8547 | carlos.freytes@ngc.com<mailto:carlos.freytes@ngc.com>

[cid:image001.jpg@01DD651E.D2DAC5C0]
Edit Description
Case Information
Edit Case Information
Associated Customer
Edit Associated Customer
Contact Details
Show available actions
Name
Carlos Freytes
Edit Name
Account Name
Northrop Grumman Corporation
Preview
Title
Sr.Principal Numerical Control Programmer
Account Type
Customer
Phone
(480)324-8547
Primary Email
carlos.freytesgines@ngc.com
Cases for Parent Contact
(3+)
Show actions for Cases for Parent Contact
00136878
Preview
Status:
In Progress
Date Opened:
10/26/2026, 10:53 AM
Subject:
4-Axis Unified Toolpath – Unexpected A-Axis Rotation
Show Actions
00132829
Preview
Status:
Closed
Date Opened:
10/12/2026, 12:40 PM
Subject:
Support for Mill turn set up
Show Actions
00113571
Preview
Status:
Closed
Date Opened:
8/11/2026, 6:50 PM
Subject:
Fw: Mastercam Question
Show Actions
View All
Case
Escalated
4-Axis Unified Toolpath – Unexpected A-Axis Rotation
Follow
Edit
Show more actions
Path
stage complete
Received
stage complete
Assigned
In Progress
Waiting For Response
Resolved
Re-open/In Progress
Closed

Status: In Progress

Mark Status as Complete
Tabs
Feed
Details
Time Tracker
Post
Email
Log a Call
New Task
Share an update...
Share
Most Recent Activity
Collapse all visible posts
Refresh this feed
Refresh this feed
Skip Feed
Click to collapse post
Todd Patterson
November 9, 2026 at 2:52 PM
To: Internal
Actions for this Feed Item

@Danny Ornelas​ Hi Danny, I didn't see the customer's NDA attached, has Carlos sent one to you?

Comment
Comment on Todd Patterson at 2026-11-09T19:52:49.000Z
More comments
1 of 3

Todd Patterson

6 days ago
Actions for this Feed Item Comment

@Danny Ornelas​ once we have their NDA, let me know and I will send it to legal to approve and sign.

Like

Write a comment...
Click to collapse post
Danny Ornelas
November 9, 2026 at 2:22 PM
To: Internal
Actions for this Feed Item

@Todd Patterson​ Can you work with the customer to get an NDA, thanks

Comment
Comment on Danny Ornelas at 2026-11-09T19:22:32.000Z
Click to collapse post
John Bettencourt
November 9, 2026 at 1:52 PM
To: Internal
Actions for this Feed Item

@Danny Ornelas​, this customer needs an NDA in place before we can exchange programming files for troubleshooting. Do you know who I need to contact to get that process started?

Comment
Comment on John Bettencourt at 2026-11-09T18:52:53.000Z
Click to collapse post
Freytes Gines, Carlos E [US]
November 9, 2026 at 8:38 AM
To: cases, matthew.sandor
View Details
Actions for this Feed Item
Image file
image001.jpg
Reply
Reply All
Forward
Comment
Comment on undefined at 2026-11-09T13:38:28.000Z
Click to collapse post
John Bettencourt
November 7, 2026 at 12:34 PM
To: Carlos Freytes, matthew.sandor
View Details
Actions for this Feed Item
Reply
Reply All
Forward
Comment
Comment on John Bettencourt at 2026-11-07T17:34:29.000Z
Click to collapse post
Freytes Gines, Carlos E [US]
October 29, 2026 at 10:34 AM
To: cases, matthew.sandor
View Details
Actions for this Feed Item
Image file
image001.jpg
Reply
Reply All
Forward
Comment
Comment on undefined at 2026-10-29T14:34:08.000Z
End of Feed
End of Feed
6 Chatter Feed Items
Milestones
Case Closure
3 days, 20 hr, 11 min, 29 sec overdue
expired
Mark Completed
Show More
Tabs
Related
Activity History
(3+)
Show actions for Activity History
Email: RE: EXT :Case Number 00136878 - 4-Axis Unified Toolpath – Unexpected A-Axis Rotation [ thread::eayr3k2jPj6_vEH50FEs6XU:: ]
Show Actions
Name:
Carlos Freytes
Task:
Due Date:
11/7/2026
Email: RE: EXT :Case Number 00136878 - 4-Axis Unified Toolpath – Unexpected A-Axis Rotation [ thread::eayr3k2jPj6_vEH50FEs6XU:: ]
Show Actions
Name:
Carlos Freytes
Task:
Due Date:
10/29/2026
Email: RE: EXT :Case Number 00136878 - 4-Axis Unified Toolpath – Unexpected A-Axis Rotation [ thread::eayr3k2jPj6_vEH50FEs6XU:: ]
Show Actions
Name:
Carlos Freytes
Task:
Due Date:
10/29/2026
View All
Open Activities
(1)
Show actions for Open Activities
Email: RE: EXT :Case Number 00136878 - 4-Axis Unified Toolpath – Unexpected A-Axis Rotation [ thread::eayr3k2jPj6_vEH50FEs6XU:: ]
Show Actions
Name:
Task:
Due Date:
11/9/2026
View All
Notes
(0)
Show actions for Notes
Related Cases
(0)
Show actions for Related Cases
Files
(3+)
Show actions for Files
Drop Files
image001

Nov 9, 20262KBjpg

image001

Oct 29, 20262KBjpg

image001

Oct 29, 20262KBjpg

View All
Case Team
Case Status Histories
History
Notes
Guidance Center
Salesforce Help
Setup
Add favorite
Global Actions

EXTRACTION NOTE: Only currently loaded Salesforce content was captured. Check Expand Email and Show More controls.
