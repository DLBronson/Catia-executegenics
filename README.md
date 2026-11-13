CASE: 00142682

CUSTOMER: Pumphrey Machine Co., Inc.

CREATED BY: Mastercam Support

CASE OWNER: John Bettencourt

STATUS: Assigned

MASTERCAM VERSION: Not identified

ISSUE: Customer is experiencing problems running a newly purchased post for a Doosan NHP5000 equipped with a KME 5th-axis tombstone. When the program reaches a G53.1 command following G68.2 coordinate rotation, the machine generates alarm PS5459 "machine parameter incorrect." The customer suspects the issue may be related to how G68.2 is rotating the work coordinate system relative to the machine. The customer is also requesting guidance on programming with A-axis indexing, clarification and possible removal of newly added M-codes in the post, correction of H values so they match tool numbers, and modification of toolpath comments to match their preferred output format.

PEOPLE INVOLVED: Trent Zuercher - Customer and reporting user John Bettencourt - Assigned Applications Engineer / Case Owner Chad Wright - Support personnel involved in case routing Mastercam Support - Case creator West Technical Support - Previous ownership group Midwest Technical Support - Previous ownership group

TROUBLESHOOTING SUMMARY: Customer reported that a newly installed KME 5th-axis tombstone was put into service and testing began using a newly purchased post for the Doosan NHP5000.

The customer created a test program and attempted machine validation. The machine consistently alarms at the G53.1 line with PS5459 "machine parameter incorrect."

The customer consulted the machine installer, who stated that installation changes should not have caused the alarm condition.

The customer experimented with different planes in the Mastercam file to alter the posted output but reported no success.

The customer compared the G68.2/G53.1 output from the new post against output from a previous post and reported seeing no obvious formatting differences, although the resulting code appears different relative to the previous post.

The customer believes the issue may involve the relationship between planes and coordinate rotation but stated this is currently a theory rather than a confirmed finding.

Additional concerns reported by the customer:

Guidance needed for programming with A-axis indexing/locating.
New M-codes were added to the post and some were not accepted by the machine.
H offsets are not posting to match tool numbers.
Toolpath type comments should be removed, leaving only comments defined inside individual toolpaths.

The customer supplied supporting files, including:

KME TEST.mcam-content
KME TEST AS POSTED.nc
KME TEST AS MODIFIED.nc
A PNG image

No documented review of the supplied files, testing, corrective actions, or engineering findings are present in the available case history.

CURRENT SITUATION: The case has been routed from Midwest Technical Support to West Technical Support and is now assigned to John Bettencourt. The issue remains under investigation. The customer considers the matter urgent because production parts are waiting to run on the new tombstone setup. No root cause has been identified and no corrective changes have been documented. The next action is for the assigned engineer to review the supplied Mastercam and NC files, investigate the G68.2/G53.1 behavior, evaluate the requested post modifications, and provide guidance on A-axis programming and post configuration.
