[POST_VERSION] #DO NOT MOVE OR ALTER THIS LINE# V28.00 P4 E1 W28.00 T1764195824 M28.00 I0 O1
# Post Name           : MPPOSTABILITY_PARPAS_ELECTRA_TNC_TMT-121
# Product             : MILL/LATHE
# Machine Name        : PARPAS ELECTRA TMT-121
# Control Name        : HEIDENHAIN iTNC
# Description         : GENERIC G-CODE POST (SWIVEL HEAD/ROTATING TABLE)
# 4-axis/Axis subs.   : YES
# 5-axis              : YES
# Subprograms         : YES
# Executable          : MP 11.0 / 12.0 / 13.0 / 14.0 / 15.0 / 16.0 / 17.0 / 18.0 / 19.0 / 20.0
# Post Revision       : 20.0.180101 (MC_FULL.MC_MINOR.YYMMDD)
#
# WARNING: THIS POST IS GENERIC AND IS INTENDED FOR MODIFICATION TO
# THE MACHINE TOOL REQUIREMENTS AND PERSONAL PREFERENCE.
#
# --------------------------------------------------------------------------------------------------
# UPK GENERAL SETTINGS
# --------------------------------------------------------------------------------------------------

#axcomb = 1 - Nutating Head (A), Rotary Table (B)
#axcomb = 2 - Nutating Head (A), Rotary Head (C) - position B-axis through misc value

dealer_info    : 0      #Output information for dealers
maint_warn     : 1      #Enable PostCare Maintenance expiry warnings
sdat_dir       : ""     #Licensing file path when not located alongside post
                        #Ex "P:\Mastercam\Posts\licensing\"

cycle391_out   : 0

# User preference Post Setup Switches --------------------------------------------------------------

userotlock     : 1      #0 = Do not output locking M codes, 1 = Output locking M codes, 2 = Rot&Tilt
userotbrake    : 0      #0 = Do not output braking M codes, 1 = Output braking M codes
usetiltlock    : 1      #0 = Do not output locking M codes, 1 = Output locking M codes
usetiltbrake   : 0      #0 = Do not output braking M codes, 1 = Output braking M codes
lockcomm       : 0      #0 = Do not output comments, 1 = Output comments

workofs_out    : 0      #-1 = Use output from Mastercam
                        #0 = Prompt for work offset number
                        #Any number = Always use this work offset number
                        #(eg. 0 gives 1, 6 gives 7)
wcstype        : 2      #0 = CYCLE DEF 7 Shifts, 1 = CYCLE DEF 7 Tables,
                        #2 = CYCLE DEF 247 Tables at start of file, 3 = Off
force_wcs      : 1      #Force WCS output at every toolchange?
shiftlocation  : 0      #0 = Apply tool plane based shifts in world coords before rotation of plane
                        #1 = Apply with rotation of plane - not a TNC option!
                        #2 = Apply tool plane based shifts in plane coords after rotation of plane

one_revr       : 0      #Limit 3+2 rotary positioning? (0 = No, 1 = 0 to 360, 2 = -180 to 180, -1 = -360 to 0)
one_revt       : 0      #Limit 3+2 tilt positioning? (0 = No, 1 = 0 to 360, 2 = -180 to 180)

hel_lead       : 1      #Special helical move treatment with lead, 0=no, 1=yes
force_dpts     : 1      #Force XY output on all drilling lines including cycle call?
tool_table     : 1      #Tool table, 0=no, 1=yes
use_pitch      : 1      #0 = Use feed for tapping, 1 = Use pitch for tapping
rigid_tap      : 1      #0 = Floating tap output, 1 = Rigid tap output (suppress spindle output and output M29)
use_gear       : 0      #Output gear selection code, 0=no, 1=yes
frdegstp       : 10     #Step limit for rotary feed in deg/min

rot_feed       : 0      #Use calculated rotary feed values, (0 = no, 1 = yes)

maxincrot      : 89     #Maximum incremental rotary motion before unwind or solution flip
maxinctilt     : 89     #Maximum incremental tilt motion before unwind or solution flip

ixtol          : 0.01   #Tolerance in deg. for index error
tseqno         : 0      #Output sequence number at toolchanges when omitseq = yes
                        #0=off, 1=seq numbers match toolchange number, 2=seq numbers match tool number
use_rotmcode   : 0      #Output M-Code for Axis direction (sindx_mcr)
                        #0 = Do not output M code
                        #1 = Output M code (Only valid when rot_type = 1 instead of sign indicating direction)
use_tiltmcode  : 0      #Output M-Code for Axis direction (sindx_mct)
                        #0 = Do not output M code
                        #1 = Output M code (Only valid when rot_type = 1 instead of sign indicating direction)
force_output   : 1      #0 = Modal G code output at toolchanges, 1 = Force output of all G codes
                        #(see also force_wcs)
spindle_check  : 1      #Safety check to ensure spindle is on during operation [0=Off,1=On]

orgshift       : 0      #Shift origin from Mastercam's programmed origin (0=Off,1=On)
ignoreorg      : 1      #Ignore toolplane origin, use WCS origin (0=Off,1=On)
xtopshift      : 1      #xtop point origin (0=Toolplane,1=WCS)
tcp            : 1      #Enable tool center point management (0=Off,1=On,2=Table fixed coordinate system)
tiltplane      : 1      #Enable tilted work planes
                        #(0=Off, 1=On, 2=On, not used for Z/X tool axes, 3=On, not used for Z tool axis)
tiltcomb       : 0      #Tilted work plane combination, only applicable when tiltplane active (0=AC,1=BC)
plane_spatial  : 1      #0 = CYCLE DEF 19, 1=PLANE SPATIAL
vector         : 0      #0 = Physical rotary/tilt axis output, 1 = Vector output (5-axis only)
dyndatum       : 0      #Output dynamic datum compensation codes (eg G54.2), 0 = No, 1 = Yes
circle_5ax     : 1      #Output circle 5-axis toolpaths as multiaxis operations
                        #0=3-axis output (will use dyndatum/tiltplane settings)
                        #1=5-axis output (will use tcp settings)

use_home       : 0      #0 = Use home positions defined below (x_home)
                        #1 = Use home positions from Mastercam
home_style     : 0      #Home position method
                        #0=G90 G53, 1=G91 G28, 2=G91 G30, 3=G90

use_g_inc      : 0      #0 = Use new addresses for absolute/incremental output
                        #1 = Use g codes for absolute/incremental output (G90/G91 default)
strrotinc      : "IC"   #String for incremental output if use_g_inc = 0
strtiltinc     : "IB"   #String for incremental output if use_g_inc = 0
strxinc        : "IX"   #String for incremental output if use_g_inc = 0
stryinc        : "IY"   #String for incremental output if use_g_inc = 0
strzinc        : "IZ"   #String for incremental output if use_g_inc = 0

#5-axis switches/variables
pivotdis       : 0.     #Distance from center of tilting axis to gauge line/collet line - mm
cleardis       : 100.   #Retract clearance along tool vector in 5-axis unwinds - mm
offsetdis      : 0.     #Distance from spindle center to center of tilting axis - mm (Head Table style machines only)
postcomp       : 0      #Compensate for tool length in post (0=No,1=Yes)
vrtltip        : 0      #Control point (0=Pivot Point, 1=Virtual Tool Tip, 2=Spindle Face)

#Switches/variables for Mill-turn posts
vtl            : 0      #0 = Standard mill-turn programming with Top WCS, 1 = VTL mode with Lathe Z = World Z WCS
xturn          : 1      #0 = No X output for turning, 1 = X output for turning
yturn          : 1      #0 = No Y output for turning, 1 = Y output for turning

xmult0         : 1      #X axis multiplier for cuttype 0 #Toolplane Positioning
xmult1         : 1      #X axis multiplier for cuttype 1 #Axis Substitution
xmult2         : 1      #X axis multiplier for cuttype 2 #Polar Conversion
xmult3         : 1      #X axis multiplier for cuttype 3 #Simultaneous 4/5 axis
xmult4         : 2      #X axis multiplier for cuttype 4 #Turning
xmult5         : 1      #X axis multiplier for cuttype 5 #Face Milling Interpolation on Control
xmult6         : 1      #X axis multiplier for cuttype 6 #OD Rotary Interpolation on Control

old_new_sw     : 1      #Switch old (6T), new (0T+) lathe canned cycle formats, 0=old, 1=new
thdaddress     : 1      #0 = Use F address for threading, 1 = use E address for threading

css_start_rpm  : 0      #0 = Start with CSS directly, 1 = Start with RPM then change to CSS

g12add         : 1      #Address during face interpolation 0 = Y, 1 = C

turnquad       : -1     #Turning location, 0 = XZ(G18), 1 = YZ(G19), 2 = -XZ(G18), 3 = -YZ(G19), -1 = Custom

suppress_point_spindle : 0  #Suppress spindle on for lathe point toolpaths?

# Rotary and Tilt Axis Setup -----------------------------------------------------------------------

use_md_rot_tilt : 1     #1 = Use parameters read from the machine def, 0 = Set values below

#Only fill out the values below if use_md_rot_tilt = no
srotname       : ""     #Name
srot_label     : ""     #Axis Label
rotax          : 0      #Axis of rotation (1=X, 2=Y, 3=Z)
rot_zero       : 0      #0 deg position
rot_cw_pos     : 0      #Direction
rot_min        : 0      #Min travel limit
rot_max        : 0      #Max travel limit
rotorigx       : 0      #Centre of rotation X
rotorigy       : 0      #Centre of rotation Y
rotorigz       : 0      #Centre of rotation Z
rot_index      : 0      #Axis positions to fixed angles only
rot_index_inc  : 0      #Index increment
rot_type       : 0      #Continuous axis type (0=Signed continuous, 1=Signed direction,
                        #2=Shortest distance)

stiltname      : ""     #Name
stilt_label    : ""     #Axis Label
tiltax         : 0      #Axis of tilt (1=X, 2=Y, 3=Z)
tilt_zero      : 0      #0 deg position
tilt_cw_pos    : 0      #Direction
nut_axis       : 0      #This is a nutating axis
nut_rot_axis   : 0      #Tilt about (XYZ)
nutangle       : 0      #Nutating angle from vertical - from rotary axis def
tilt_min       : 0      #Min travel limit
tilt_max       : 0      #Max travel limit
tiltorigx      : 0      #Centre of tilt X
tiltorigy      : 0      #Centre of tilt Y
tiltorigz      : 0      #Centre of tilt Z
tilt_index     : 0      #Axis positions to fixed angles only
tilt_index_inc : 0      #Index increment
tilt_type      : 0      #Continuous axis type (0=Signed continuous, 1=Signed direction,
                        #2=Shortest distance)

# --------------------------------------------------------------------------------------------------
# MACHINE/CONTROL SPECIFIC SETTINGS
# --------------------------------------------------------------------------------------------------
force_machsim  : 0      #Force .CL file output?
machsim_interp : 0      #0=Dog Leg Rapids,1=Interpolated Rapids

xmachsim_home  : -680.  #X home position - mm
ymachsim_home  : 380.   #Y home position - mm
zmachsim_home  : -457.2 #Z home position - mm
tiltorigx_machsim : 0.  #Tilt origin for MachSim - mm
tiltorigy_machsim : 0.  #Tilt origin for MachSim - mm
tiltorigz_machsim : 0.  #Tilt origin for MachSim - mm
rotorigx_machsim  : 0.  #Rot origin for MachSim - mm
rotorigy_machsim  : 0.  #Rot origin for MachSim - mm
rotorigz_machsim  : 0.  #Rot origin for MachSim - mm

x_home_mm      : 2032.   #X home position
y_home_mm      : 2032.   #Y home position
z_home_mm      : -15.    #Z home position

x_home_in      : 80.  #X home position
y_home_in      : 80.   #Y home position
z_home_in      : -0.5906#Z home position

# --------------------------------------------------------------------------------------------------
# CUSTOM PROMPTED/SAVED HEADER STRINGS
# --------------------------------------------------------------------------------------------------
sheaderfield1  : ""     #Custom header field prompt 1
sheaderfield2  : ""     #Custom header field prompt 2
sheaderfield3  : ""     #Custom header field prompt 3
sheaderfield4  : ""     #Custom header field prompt 4
sheaderfield5  : ""     #Custom header field prompt 5
sheaderfield6  : ""     #Custom header field prompt 6
sheaderfield7  : ""     #Custom header field prompt 7
sheaderfield8  : ""     #Custom header field prompt 8
sheaderfield9  : ""     #Custom header field prompt 9
sheaderfield10 : ""     #Custom header field prompt 10
sheaderfield11 : ""     #Custom header field prompt 11
sheaderfield12 : ""     #Custom header field prompt 12
sheaderfield13 : ""     #Custom header field prompt 13
sheaderfield14 : ""     #Custom header field prompt 14
sheaderfield15 : ""     #Custom header field prompt 15
sheaderfield16 : ""     #Custom header field prompt 16
sheaderfield17 : ""     #Custom header field prompt 17
sheaderfield18 : ""     #Custom header field prompt 18
sheaderfield19 : ""     #Custom header field prompt 19
sheaderfield20 : ""     #Custom header field prompt 20

sheader1       : ""     #Custom header initial value 1
sheader2       : ""     #Custom header initial value 2
sheader3       : ""     #Custom header initial value 3
sheader4       : ""     #Custom header initial value 4
sheader5       : ""     #Custom header initial value 5
sheader6       : ""     #Custom header initial value 6
sheader7       : ""     #Custom header initial value 7
sheader8       : ""     #Custom header initial value 8
sheader9       : ""     #Custom header initial value 9
sheader10      : ""     #Custom header initial value 10
sheader11      : ""     #Custom header initial value 11
sheader12      : ""     #Custom header initial value 12
sheader13      : ""     #Custom header initial value 13
sheader14      : ""     #Custom header initial value 14
sheader15      : ""     #Custom header initial value 15
sheader16      : ""     #Custom header initial value 16
sheader17      : ""     #Custom header initial value 17
sheader18      : ""     #Custom header initial value 18
sheader19      : ""     #Custom header initial value 19
sheader20      : ""     #Custom header initial value 20

# --------------------------------------------------------------------------------------------------
# STRINGS FOR TRANSLATION
# --------------------------------------------------------------------------------------------------

# Error Messages -----------------------------------------------------------------------------------
srindxerror    : "WARNING - ROTARY INDEX ANGLE DOES NOT MATCH MACHINE DEF SETTING - DO YOU WISH TO EXIT?"
stindxerror    : "WARNING - TILT INDEX ANGLE DOES NOT MATCH MACHINE DEF SETTING - DO YOU WISH TO EXIT?"
stlorgerr      : "ERROR - TOOL ORIGIN DOES NOT MATCH CENTER OF ROTATION IN POLAR MILLING"
shomeserror    : "ERROR - G92 WORK OFFSET, 'wcstype', DOES NOT SUPPORT TRANSFORM SUBPROGRAM"
sprgnerror     : "ERROR - SUBPROGRAM NUMBER MATCHES THE MAIN PROGRAM NUMBER"
scompwarn      : "WARNING - CUTTER COMP APPLIED ON ARC MOVE"
srotaxerror    : "ERROR - MORE THAN 2 ROTARY AXES DETECTED IN SELECTED AXIS COMBINATION - OUTPUT MAY BE INVALID"
srotlimwarn    : "WARNING - ROTARY LIMITS EXCEEDED - CANCEL TO EXIT"
stiltlimwarn   : "WARNING - TILT LIMITS EXCEEDED - CANCEL TO EXIT"
splungewarn    : "WARNING - MODIFY LEAD-IN PARAMETERS TO PLUNGE AFTER FIRST MOVE"
saxissuberror  : "ERROR - AXIS SUBSTITUTION NOT SETUP FOR CURRENT MACHINE CONFIGURATION/TOOLPLANE SELECTION"
syerror        : "ERROR - Y-AXIS MOTION WITH NO Y-AXIS SET IN AXIS COMBINATION - CHECK AXIS COMBINATION AND ROTARY AXIS SETTINGS"
spolarinterror : "ERROR - POLAR INTERPOLATION NOT SETUP FOR THIS MACHINE CONFIGURATION"
sarcwarn       : "WARNING - MISMATCHED ARC COORDINATE DATA"
sarc_xmove     : "WARNING - X AXIS MOTION ON ARC"
sarc_ymove     : "WARNING - Y AXIS MOTION ON ARC"
sarc_zmove     : "WARNING - Z AXIS MOTION ON ARC"
swcs_org_warn  : "WARNING - WCS ORIGIN CHANGE BETWEEN OPERATIONS USING SAME OFFSET NUMBER"

serr_badsim    : "ERROR - POST NOT LICENSED FOR BOOTLEG SIMS - POST WILL EXIT"
serr_checksim  : "ERROR - POST NOT LICENSED FOR CURRENT SIM "
serr_clock     : "ERROR - POST LICENSING PERIOD ANOMOLY - POST WILL EXIT"
serr_exp       : "ERROR - POST LICENSING PERIOD HAS EXPIRED - POST WILL EXIT"
swarn_exp      : "WARNING - CUSTOMER SIM POST LICENSING EXPIRED "
serr_exp_day   : "WARNING - POST LICENSING PERIOD EXPIRES TOMORROW "
serr_exp_month : "WARNING - POST LICENSING PERIOD EXPIRES "
swarn_maint    : "WARNING - CUSTOMER POST MAINTENANCE EXPIRED "
serr_maint_month : "WARNING - POST MAINTENANCE EXPIRES "
serr_maint     : "WARNING - POST MAINTENANCE EXPIRED "
serr_simtype   : "ERROR - POST NOT LICENSED FOR SIM TYPE - POST WILL EXIT"
serr_dsclm_acc : "ERROR - DISCLAIMER TERMS NOT ACCEPTED - POST WILL EXIT"
serr_lic_gen   : "ERROR - LICENSE FILE CANNOT BE GENERATED - POST WILL EXIT"
saccept        : "I agree to the terms of the SOFTWARE LICENSE AND WARRANTY."
serr_machsim   : "ERROR - POST NOT LICENSED FOR MACHINE SIMULATION - POST WILL EXIT"
serr_fiveax    : "ERROR - POST NOT LICENSED FOR 5-AXIS OPERATIONS - POST WILL EXIT"
serr_threeplustwo : "ERROR - POST NOT LICENSED FOR 3+2 TILTED PLANE OPERATIONS - POST WILL EXIT"
serr_fourax    : "ERROR - POST NOT LICENSED FOR 4-AXIS OPERATIONS - POST WILL EXIT"
serr_threeax   : "ERROR - POST LICENSED FOR 3 AXIS OPERATIONS ONLY - POST WILL EXIT"
serr_upperturret : "ERROR - POST NOT LICENSED FOR UPPER TURRET OPERATIONS - POST WILL EXIT"
serr_lowerturret : "ERROR - POST NOT LICENSED FOR LOWER TURRET OPERATIONS - POST WILL EXIT"
serr_subspindle : "ERROR - POST NOT LICENSED FOR SUB SPINDLE OPERATIONS - POST WILL EXIT"
serr_fq_exe    : "ERROR - USER ABORTED POST QUESTIONS DIALOG BOX - POST WILL EXIT"
serr_version   : "ERROR - POST NOT LICENSED FOR THIS MASTERCAM VERSION - POST WILL EXIT"

swarn_machsim  : "WARNING - THIS MACHSIM FILE SET REQUIRES THAT THE CORRESPONDING MACHINE DEFINITION IS SELECTED"
smachsimcompwarn : "WARNING - CUTTER COMP IN CONTROL NOT SUPPORTED BY MODULEWORKS MACHINE SIMULATION"
smachsimwcswarn : "WARNING - USE OF NON-TOP WCS IS NOT SUPPORTED BY MODULEWORKS MACHINE SIMULATION"

sfccerror      :  "ERROR - MATCHING G70 FINISH PROFILE WAS NOT FOUND"
ssubstreamerror : "ERROR - THIS POST DOES NOT SUPPORT SUBPROGRAMS OUTSIDE OF DATA STREAM 1"
sstrokelimwarn :  "WARNING - STROKE LIMITS EXCEEDED - CANCEL TO EXIT"

# Unwind -------------------------------------------------------------------------------------------
swarnlim       : "POSTED TOOLPATHS CONTAIN AT LEAST ONE ROTARY/TILT AXIS UNWIND"
swarnlim1      : "ROTARY/TILT AXIS UNWIND"
swarnmove      : "POSTED TOOLPATHS CONTAIN AT LEAST ONE LARGE ROTARY/TILT AXIS MOVE"
swarnmove1     : "LARGE ROTARY/TILT AXIS MOVE"
swarnmoveprompt : "DO YOU WISH TO RETRACT/INDEX/APPROACH?"

# Question Statements ------------------------------------------------------------------------------

fq 1 toollen "Enter tool length for //t$// - //strtool$//"
fq 2 orgshftx "Enter shift for X-axis"
fq 3 orgshfty "Enter shift for Y-axis"
fq 4 orgshftz "Enter shift for Z-axis"
fq 5 mr10c "Enter the rotary axis value to avoid singularity"
fq 6 stemp "Enter the CYCLE DEF 7 Datum Table Value"
fq 7 stemp "Enter the CYCLE DEF 247 Datum Table Value"

fq 11 sheader1 "Enter //sheaderfield1//"
fq 12 sheader2 "Enter //sheaderfield2//"
fq 13 sheader3 "Enter //sheaderfield3//"
fq 14 sheader4 "Enter //sheaderfield4//"
fq 15 sheader5 "Enter //sheaderfield5//"
fq 16 sheader6 "Enter //sheaderfield6//"
fq 17 sheader7 "Enter //sheaderfield7//"
fq 18 sheader8 "Enter //sheaderfield8//"
fq 19 sheader9 "Enter //sheaderfield9//"
fq 20 sheader10 "Enter //sheaderfield10//"
fq 21 sheader11 "Enter //sheaderfield11//"
fq 22 sheader12 "Enter //sheaderfield12//"
fq 23 sheader13 "Enter //sheaderfield13//"
fq 24 sheader14 "Enter //sheaderfield14//"
fq 25 sheader15 "Enter //sheaderfield15//"
fq 26 sheader16 "Enter //sheaderfield16//"
fq 27 sheader17 "Enter //sheaderfield17//"
fq 28 sheader18 "Enter //sheaderfield18//"
fq 29 sheader19 "Enter //sheaderfield19//"
fq 30 sheader20 "Enter //sheaderfield20//"

# Misc ---------------------------------------------------------------------------------------------
snocomm        : "DEFINE TOOL NAMES"
snullop        : "UNDEFINED OPERATION"
slockcomm      : "LOCK"
sbrakecomm     : "BRAKE"
sunlockcomm    : "UNLOCK"

# String Selects -----------------------------------------------------------------------------------

#Select operation note
shst00         : "CORE ROUGHING"     # String definition
shst01         : "AREA CLEARANCE"    #    "       "
shst02         : "WATERLINE"         #    "       "
shst03         : "CONSTANT STEPOVER" #    "       "
shst04         : "HORIZONTAL"        #    "       "
shst05         : "RASTER"            #    "       "
shst06         : "PENCIL"            #    "       "
shst07         : "HYBRID"            #    "       "
shst08         : "BLEND"             #    "       "
shst09         : "SPIRAL"            #    "       "
shst10         : "RADIAL"            #    "       "
shst11         : "ROUGH REST PASSES" #    "       "
shst12         : "OPTIAREA"          #    "       "
shst13         : "OPTICORE"          #    "       "
shst14         : "OPTIREST"          #    "       "
shst15         : "PROJECT"           #    "       "
shst16         : "EQUAL SCALLOP"     #    "       "
shst17         : "BLEND"             #    "       "
sopnotehst     : ""                  # Target string

fstrsel  shst00 hststyle sopnotehst 18 -1
# --------------------------------------------------------------------------------------------------
#Select operation note
sdr00           : "DRILLING.. " # String definition
sdr01           : "PECKING...." #    "       "
sdr02           : "CHIP BREAK." #    "       "
sdr03           : "TAP........" #    "       "
sdr04           : "REAMING...." #    "       "
sdr05           : "BORING....." #    "       "
sdr06           : "BACK BORING" #    "       "
sdr07           : "THRDMILL ID" #    "       "
sdr08           : "SUBROUTINE." #    "       "
sdr09           : "THRDMILL OD" #    "       "
sdr10           : "BORE MILL.." #    "       "
sdr11           : "TAP /CHPBRK" #    "       "
sdr12           : "CUST 13...." #    "       "
sdr13           : "CUST 14...." #    "       "
sdr14           : "CUST 15...." #    "       "
sdr15           : "CUST 16...." #    "       "
sdr16           : "CUST 17...." #    "       "
sdr17           : "CUST 18...." #    "       "
sdr18           : "CUST 19...." #    "       "
sdr19           : "CUST 20...." #    "       "
sdrnote         : ""            # Target string

fstrsel  sdr00 nextdc$ sdrnote 20 -1
# --------------------------------------------------------------------------------------------------
#Lookup operation note
flktbl 100 119 #Tool operation comments
                 "CONTOUR"                1
                 "DRILL"                  2
                 "POCKET"                 3
                 "XFORM"                  4
                 "ROUGH PARALLEL"         5
                 "ROUGH RADIAL"           6
                 "ROUGH PROJECT"          7
                 "ROUGH FLOWLINE"         8
                 "ROUGH CONTOUR"          9
                 "ROUGH POCKET"          10
                 "FINISH PARALLEL"       11
                 "FINISH RADIAL"         12
                 "FINISH PROJECT"        13
                 "FINISH FLOWLINE"       14
                 "FINISH CONTOUR"        15
                 "C-HOOK"                16
                 "MANUAL ENTRY"          17
                 "CIRCLE MILL"           18
                 "POINT"                 19
                 "TRIMMED"               20
                 "RULED"                 21
                 "REVOLVED"              22
                 "LETTERS"               23
                 "SWEPT 2D"              24
                 "SWEPT 3D"              25
                 "COONS"                 26
                 "LOFTED"                27
                 "DRILL 5AX"             28
                 "CURVE 5AX"             29
                 "FINSIH PENCIL"         39
                 "FINISH LEFTOVER"       40
                 "FINISH STEEP"          41
                 "FINISH SHALLOW"        42
                 "FINISH SCALLOP"        43
                 "ROUGH PLUNGE"          44
                 "FINISH 5AX FLOW"       45
                 "FINISH 4AX"            46
                 "SWARF 5AX"             48
                 "ROLLDIE 5AX"           49
                 "CAXIS FACE"            51
                 "CAXIS CROSS"           52
                 "CAXIS CONTOUR"         53
                 "CAXIS FACE DRILL"      55
                 "CAXIS CROSS DRILL"     56
                 "CAXIS DRILL"           57
                 "ROUGHING"              60
                 "FINISHING"             61
                 "GROOVING"              62
                 "THREADING"             63
                 "DRILL"                 64
                 "POINT"                 65
                 "FACING"                66
                 "CUTOFF"                67
                 "PLUNGE ROUGH"          68
                 "MANUAL ENTRY"          69
                 "DYNAMIC ROUGH"         71
                 "CONTOUR ROUGH"         72
                 "PRIME TURNING"         73
                 "THREADMILL"           100
                 "FACING"               102
                 "SLOT MILL"            105
                 "HELIX BORE"           106
                 "ROUGH RESTMILL"       107
                 "FINISH BLEND"         109
                 "ROUGH 5AX"            110
                 "SLICE 5AX"            111
                 "PORT 5AX"             112
                 "CIRCLE 5AX"           113
                 "ADVANCED DRILL"       114
                 "CHAMFER DRILL"        115
                 "ROUGH POCKET"         131
                 "HIGHSPEED SURFACE"    132
                 "2D HIGHSPEED"         134
                 "SAW"                  135
                 "FBM DRILL"            136
                 "FBM POCKET"           137
                 "FBM CONTOUR"          138
                 "2D CHAMFER"           140
                 "PROBE"                150
                 "CAN FINISH"           201
                 "CAN ROUGH"            202
                 "CAN RGH+FSH"          203
                 "CAN ROUGH FACE"       204
                 "CAN RGH+FSH FACE"     205
                 "CAN PATTERN RGH"      206
                 "CAN PATTERN RGH+FSH"  207
                 "CAN GROOVE RGH"       208
                 "CAN GROOVE FSH"       209
                 "QUICK ROUGH"          210
                 "QUICK FINISH"         211
                 "QUICK GROOVE"         212
                 "STOCK TRANSFER"       214
                 "STOCK FLIP"           215
                 "BAR FEED"             216
                 "CHUCK CLMP/UNCLMP"    217
                 "TAILSTOCK"            218
                 "STEADYREST"           219
                 "PINCH-TURN"           220
                 "PLUNGE TURN"          224
                 "PLUNGE TURN"          225
                 "TURRET PARK"          226
                 "CUSTOM THREAD"        227
                 "ENGRAVING"            416
                 "ART"                  439
                 "5AXMSURF"             440
                 "SWARF 5AX"            441
                 "MORPH 5AX"            442
                 "PARALLEL 5AX"         443
                 "ALONGCURVE 5AX"       444
                 "MESH 5AX"             445
                 "ROUGHING 5AX"         446
                 "PROJECT 5AX"          447
                 "CONVERT 5AX"          448
                 "PORT EXPERT"          449
                 "BLADE EXPERT"         450
                 "ROTARY ADV"           451
                 "DEBURR"               459
                 "3+2 AUTO ROUGH"       460
                 "UNIFIED"              461
sopnote        : ""
# --------------------------------------------------------------------------------------------------
# Cutter Compensation Type
scomp          : "COMPUTER"
scomp1         : "CONTROL COMP"
scomp2         : "WEAR COMP"
scomp3         : "REVERSE WEAR COMP"
scomp4         : "OFF"
scomp_type     : ""

fstrsel scomp comp_type scomp_type 5 -1
# --------------------------------------------------------------------------------------------------
# Cutter Compensation Type - Pocket
spockcomp      : "COMPUTER"
spockcomp1     : "CONTROL COMP"
spockcomp2     : "WEAR COMP"
spockcomp3     : "REVERSE WEAR COMP"
spockcomp4     : "OFF"
spockcomp_type : ""

fstrsel spockcomp pockcomp_type spockcomp_type 5 -1
# --------------------------------------------------------------------------------------------------
# Select month
smon00         : ""
smon01         : "JAN"
smon02         : "FEB"
smon03         : "MAR"
smon04         : "APR"
smon05         : "MAY"
smon06         : "JUN"
smon07         : "JUL"
smon08         : "AUG"
smon09         : "SEP"
smon10         : "OCT"
smon11         : "NOV"
smon12         : "DEC"
smonth         : ""

fstrsel smon00 month$ smonth 13 -1
# --------------------------------------------------------------------------------------------------
#Select stock orientation note
stck0          : "TOP - CENTER"
stck1          : "TOP - UPPER LEFT"
stck2          : "TOP - UPPER RIGHT"
stck3          : "TOP - LOWER RIGHT"
stck4          : "TOP - LOWER LEFT"
stck5          : "BOTTOM - UPPER LEFT"
stck6          : "BOTTOM - UPPER RIGHT"
stck7          : "BOTTOM - LOWER RIGHT"
stck8          : "BOTTOM - LOWER LEFT"
stcknote       : ""

fstrsel stck0 stck_crnr$ stcknote 9 -1

# --------------------------------------------------------------------------------------------------
# CUSTOMIZED POST SETTINGS
# --------------------------------------------------------------------------------------------------

# Postability Inc.
# --
# 2-285 Fountain St S
# Cambridge, ON  N3H 1J2
# CANADA
# info@postability.com

# Copyright 2008-2024 Postability Inc.  All Rights Reserved.

[STARTBIN]

#Turn -XZ Matrix Definition
turnqm1m1      : -1
turnqm1m2      : 0
turnqm1m3      : 0
turnqm1m4      : 0
turnqm1m5      : -1
turnqm1m6      : 0
turnqm1m7      : 0
turnqm1m8      : 0
turnqm1m9      : 1

# --------------------------------------------------------------------------------------------------
# GENERAL OUTPUT BLOCKS
# --------------------------------------------------------------------------------------------------
pheader_custom  #Customizable portion of header
      hour = int(time$)
      min = int((time$ - hour)* 100)
      if hour > 12, hour = hour - 12
      if hour = 0, hour = 12
      if year$ < 2000, year$ = year$ + 2000

      n$ = 1
      seqinc$ = 1
      #*progno$, pspc1, scomm_str, sprogname$, scomm_end, pe
      "0", "BEGIN", "PGM", *sprogname$, *smetric, pe
      spaces$ = 0
      spathnc$ = ucase(spathnc$)
      smcname$ = ucase(smcname$)
      sextpst$ = ucase(sextpst$)

      grp_cmt_out = cdinfo(18467)
      grp_name_out = cdinfo(18468)
      mach_name_out = cdinfo(18469)
      sgrp_cmt = groupinfo(19111)
      sgrp_name = groupinfo(19248)
      smach_name = mdinfo(17012,0)

      if mach_name_out & smach_name <> snull,
        [
        smach_name = ucase(smach_name)
        pn, pspc, scomm_str, smach_name, scomm_end, pe
        ]
      if grp_name_out & sgrp_name <> snull,
        [
        sgrp_name = ucase(sgrp_name)
        pn, pspc, scomm_str, sgrp_name, scomm_end, pe
        ]
      if grp_cmt_out & sgrp_cmt <> snull,
        [
        sgrp_cmt = ucase(sgrp_cmt)
        result = strstr(scarriage,sgrp_cmt)
        while result > 0,
          [
          sresult = brksps(result,sgrp_cmt)
          scomm_str, sgrp_cmt, scomm_end, pe
          sgrp_cmt = sresult
          result = strstr(scarriage,sgrp_cmt)
          sresult = brksps(3,sgrp_cmt)
          sgrp_cmt = sresult
          result = strstr(scarriage,sgrp_cmt)
          ]
        pn, pspc, scomm_str, sgrp_cmt, scomm_end, pe
        ]

      pmanual_entry
      if man_ent_com_flg, comment$  # File descriptor
      spaces$ = 0
      if vers_no$ < 19, pn, pspc, scomm_str, "MASTERCAM - ", *vers_no_x, scomm_end, pe
      else, pn, pspc, scomm_str, "MASTERCAM - ", *vers_no_xx, scomm_end, pe
      pn, pspc, scomm_str, "MCAM FILE - ", smcpath$, smcname$, smcext$, scomm_end, pe
      if spostname_sav = snull, spostname_sav = spostname
      pn, pspc, scomm_str, "POST      - ", snamepst$, sextpst$, scomm_end, pe
      stck_matl$ = ucase(stck_matl$)
      #pn, pspc, scomm_str, "MATERIAL  - ", stck_matl$, scomm_end, pe
      pn, pspc, scomm_str, "PROGRAM   - ", sprogname$, sextnc$, scomm_end, pe
      #pn, pspc, scomm_str, "DATE      - ", *smonth, sdash, *day$, sdash, *year$, scomm_end, pe    # MON-DD-YYYY
      #pn, pspc, scomm_str, "DATE      - ", *year$, sslash, *month$, sslash, *day$, scomm_end, pe  # YYYY/MM/DD
      pn, pspc, scomm_str, "DATE      - ", *year$, sdot, *month$, sdot, *day$, scomm_end, pe       # YYYY.MM.DD
      #pn, pspc, scomm_str, "DATE      - ", *day$, sslash, *month$, sslash, *year$, scomm_end, pe  # DD/MM/YYYY
      #pn, pspc, scomm_str, "DATE      - ", date$, scomm_end, pe                                   # DD-MM-YR
      pn, pspc, scomm_str, "TIME      - ", *hour, scolon, *min, [if time$ < 12, " AM"], [if time$ >= 12, " PM"], scomm_end, pe  # 12 hour
      #pn, pspc, scomm_str, "TIME      - ", time$, scomm_end, pe  # 24 hour

      #Write custom prompted/saved header field names and values to NC file header
      if sheaderfield1 <> snull, scomm_str, sheaderfield1, " - ", sheader1, scomm_end, pe
      if sheaderfield2 <> snull, scomm_str, sheaderfield2, " - ", sheader2, scomm_end, pe
      if sheaderfield3 <> snull, scomm_str, sheaderfield3, " - ", sheader3, scomm_end, pe
      if sheaderfield4 <> snull, scomm_str, sheaderfield4, " - ", sheader4, scomm_end, pe
      if sheaderfield5 <> snull, scomm_str, sheaderfield5, " - ", sheader5, scomm_end, pe
      if sheaderfield6 <> snull, scomm_str, sheaderfield6, " - ", sheader6, scomm_end, pe
      if sheaderfield7 <> snull, scomm_str, sheaderfield7, " - ", sheader7, scomm_end, pe
      if sheaderfield8 <> snull, scomm_str, sheaderfield8, " - ", sheader8, scomm_end, pe
      if sheaderfield9 <> snull, scomm_str, sheaderfield9, " - ", sheader9, scomm_end, pe
      if sheaderfield10 <> snull, scomm_str, sheaderfield10, " - ", sheader10, scomm_end, pe
      if sheaderfield11 <> snull, scomm_str, sheaderfield11, " - ", sheader11, scomm_end, pe
      if sheaderfield12 <> snull, scomm_str, sheaderfield12, " - ", sheader12, scomm_end, pe
      if sheaderfield13 <> snull, scomm_str, sheaderfield13, " - ", sheader13, scomm_end, pe
      if sheaderfield14 <> snull, scomm_str, sheaderfield14, " - ", sheader14, scomm_end, pe
      if sheaderfield15 <> snull, scomm_str, sheaderfield15, " - ", sheader15, scomm_end, pe
      if sheaderfield16 <> snull, scomm_str, sheaderfield16, " - ", sheader16, scomm_end, pe
      if sheaderfield17 <> snull, scomm_str, sheaderfield17, " - ", sheader17, scomm_end, pe
      if sheaderfield18 <> snull, scomm_str, sheaderfield18, " - ", sheader18, scomm_end, pe
      if sheaderfield19 <> snull, scomm_str, sheaderfield19, " - ", sheader19, scomm_end, pe
      if sheaderfield20 <> snull, scomm_str, sheaderfield20, " - ", sheader20, scomm_end, pe

pblkform        #Block shape for control graphics
      stck_shape = mdinfo(17239,stock_comp_id)

      if stck_crnr$ = 0,  #Top - center
        [
        x_blkform_min = stck_x$ - stck_ht$ / 2
        y_blkform_min = stck_y$ - stck_wdth$ / 2
        z_blkform_min = stck_z$ - stck_thck$
        if stck_thck$ = 0,
          [
          x_blkform_min = stck_x$ - stck_ht$ / 2
          y_blkform_min = stck_y$ - stck_ht$ / 2
          z_blkform_min = stck_z$
          ]
        ]
      if stck_crnr$ = 1,  #Top - upper left
        [
        x_blkform_min = stck_x$
        y_blkform_min = stck_y$ - stck_wdth$
        z_blkform_min = stck_z$ - stck_thck$
        ]
      if stck_crnr$ = 2,  #Top - upper right
        [
        x_blkform_min = stck_x$ - stck_ht$
        y_blkform_min = stck_y$ - stck_wdth$
        z_blkform_min = stck_z$ - stck_thck$
        ]
      if stck_crnr$ = 3,  #Top - lower right
        [
        x_blkform_min = stck_x$ - stck_ht$
        y_blkform_min = stck_y$
        z_blkform_min = stck_z$ - stck_thck$
        ]
      if stck_crnr$ = 4,  #Top - lower left
        [
        x_blkform_min = stck_x$
        y_blkform_min = stck_y$
        z_blkform_min = stck_z$ - stck_thck$
        ]
      if stck_crnr$ = 5,  #Bottom - upper left
        [
        x_blkform_min = stck_x$
        y_blkform_min = stck_y$ - stck_wdth$
        z_blkform_min = stck_z$
        ]
      if stck_crnr$ = 6,  #Bottom - upper right
        [
        x_blkform_min = stck_x$ - stck_ht$
        y_blkform_min = stck_y$ - stck_wdth$
        z_blkform_min = stck_z$
        ]
      if stck_crnr$ = 7,  #Bottom - lower right
        [
        x_blkform_min = stck_x$ - stck_ht$
        y_blkform_min = stck_y$
        z_blkform_min = stck_z$
        ]
      if stck_crnr$ = 8,  #Bottom - lower left
        [
        x_blkform_min = stck_x$
        y_blkform_min = stck_y$
        z_blkform_min = stck_z$
        ]
      x_blkform_max = x_blkform_min + stck_ht$
      y_blkform_max = y_blkform_min + stck_wdth$
      z_blkform_max = z_blkform_min + stck_thck$
      if stck_thck$ = 0,
        [
        x_blkform_max = x_blkform_min + stck_ht$
        y_blkform_max = y_blkform_min + stck_ht$
        z_blkform_max = z_blkform_min + stck_wdth$
        ]

      if stck_shape = 3,
        [
        pn, "BLK FORM 0.1", "Z", *x_blkform_min, *y_blkform_min, *z_blkform_min, pe
        pn, "BLK FORM 0.2", *x_blkform_max, *y_blkform_max, *z_blkform_max, pe
        ]
      if stck_shape = 4,
        [
        stck_rad = mdinfo(17295,stock_comp_id)
        stck_length = mdinfo(17296,stock_comp_id)
        stck_axis_x = mdinfo(17297,stock_comp_id)
        stck_axis_y = mdinfo(17298,stock_comp_id)
        stck_axis_z = mdinfo(17299,stock_comp_id)


        result = strstr(ucase(slmd),ucase(smdname))
        if (abs(stck_axis_z) = 1 & not(result)) | (result & abs(stck_axis_x) = 1), stck_axis = "Z"
        else,
          [
          if (abs(stck_axis_x) = 1 & not(result)) | (result & abs(stck_axis_y) = 1), stck_axis = "X"
          else, stck_axis = "Y"
          ]

        #dist_x = stck_wdth$ + stck_x$
        #dist_y = stck_wdth$ + stck_y$
        #dist_z = stck_wdth$ + stck_z$
        #pn, "BLK FORM CYLINDER", [if stck_axis = 0, "X"], [if stck_axis = 1, "Y"], [if stck_axis = 2, "Z"],
        #  *stck_ht$, *stck_wdth$, "DIST", no_spc$,  [if stck_axis = 0, *dist_x], [if stck_axis = 1, *dist_y],
        #  [if stck_axis = 2, *dist_z], pe
        pn, "BLK FORM CYLINDER", stck_axis, *stck_rad, *stck_length, pe
        ]

# Start of File, Toolchange, Retracts, End of File -------------------------------------------------
psof0$          #Start of file for tool zero
      psof$

psof$           #Start of file for non-zero tool number
      if not(machsimflg), probe_head$
      ptravel
      pwritbuf5
      sub_trnstyp$ = init_sub_trnstyp
      sub_trnmthd$ = init_sub_trnmthd
      pset_mach                           #Set rotary switches by reading machine def parameters
      pspindle                            #Spindle speed calculations for RPM
      toolchng = 1
      paxcomb
      pcuttype
      if machsimflg = 0, probing_sof   #Mastercam Probe
      if ntools$ = 1,
        [
        #skip single tool outputs, stagetool must be on
        #stagetool = -1
        !next_tool$
        ]
      if postcomp | machsimflg,
        [
        rc1 = t$
        toollen = rbuf(1,rc1)
        qualified_length = toollen
        ]
      gcode$ = 0

      if stck_ht$ & stck_wdth$, pblkform

      if wcstype = 1 & workofs_out = 0 & machsimflg = 0,
        [
        stemp = no2str(workofs_out + 1)
        q6
        workofs_out = rpar(stemp,1)
        workofs_out = workofs_out - 1
        ]
      if wcstype = 2 & workofs_out = 0 & machsimflg = 0,
        [
        stemp = no2str(workofs_out + 1)
        q7
        workofs_out = rpar(stemp,1)
        workofs_out = workofs_out - 1
        pwcs
        wcstype = 3
        ]
      q10

      #cancel all
      #pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
      #pn, "CYCL DEF", "7.1", "X+0", pe
      #pn, "CYCL DEF", "7.2", "Y+0", pe
      #pn, "CYCL DEF", "7.3", "Z+0", pe
      #pn, "CYCL DEF", "8.0", "MIRROR IMAGE", pe
      #pn, "CYCL DEF", "8.1", pe
      #pn, "CYCL DEF", "10.0", "ROTATION", pe
      #pn, "CYCL DEF", "10.1", pe
      #pn, "CYCL DEF", "11.0", "SCALING", pe
      #pn, "CYCL DEF", "11.1", "SCL 1.0", pe

      pn, "M50", pe

      pn, scomm_str, no_spc$, "HEAD TMT-121 WILL BE USED", no_spc$, scomm_end, pe
      #pn, "CYCL DEF", "309", "Head Change ~", pe
      #"    ", "Q1507=+1", scomm_str, no_spc$, ";1=TMT 2=TUB 3=TPM", pe

      #if rot_type = 2, pn, no_spc$, " ", no_spc$, "M126", "", pe  #Shorter-path traverse of rotary axes
      pftlen_off
      pn, pfrotunlock, pe

      #Initialize tilt lock as unlocked
      tiltlock = 2
      !tiltlock
      pn, ptiltunlock, pe

      pn, "Q0 = 1000", scomm_str, "ROTARY AXIS FEED", pe

      #Can error at sof on some machines
      #pn, paxishome, pe
      #if machsimflg, pmachsim_axishome_m140  #M140 style retract
      pbld, pn, "CYCL DEF 350 Turn-Mill ~", pe
      "      ", "Q1530=+0", no_spc$, scomm_str, "0=Mill 1=Turn ~", pe
      "      ", "Q1535=+0", no_spc$, scomm_str, "Insert 6 degree mult ~", pe
      "      ", "Q1536=+0", no_spc$, scomm_str, "0=Hori 1=Vert ~", pe
      "      ", "Q1537=+0", no_spc$, scomm_str, "0=No 1=Yes", pe

      pn, pzhome, pe
      if posttype$ = 2, pn, pxhome, pe
      pn, pyhome, pe

      pn, "M145", "M129", pe

      pfspatialcancel

      #pn, pfrotunlock, pe
      #pn, ptiltunlock, pe
      #if tiltax = 1,
      #  [
      #  pn, *sgcode, "A+Q120", "F MAX", pe
      #  pn, *sgcode, "C+Q122", "F MAX", pe
      #  ]
      #else,
      #  [
      #  pn, *sgcode, "A+Q120", "F MAX" , pe #@# "B+Q121"
      #  pn, *sgcode, "C+Q122", "F MAX", pe
      #  ]
      prv_feed = maxfeedpm

      #Physical home
      pn, *sgcode, ptiltrothome, "R0", "FQ0", *sg53, pe
      #prv_feed = maxfeedpm

      if mi10$ = 1, pn, sm00, pe
      #else, pn, sm01, pe
      pn, scomm_str, scomm_end, pe

      if cuttype = 4, ptlchgl
      else, ptlchgm
      sof = 0

ptlchg$         #Tool change
      if not(machsimflg), uninhibit_probe$
      #if subout$ = 0, subout$ = sav_subout  #remove comment to place retract in sub
      if op_id$ = last_op_id & midop,
        [
        ptlchg0$
        #ex$
        ]
      else,
        [
      pretract
      indexflg = 1
      movecnt = 0

      #this section moved here from ptlchg1002$
      #Want to keep machine setup param reads after the retract
      if startop,
        [
        pset_mach                           #Set rotary switches by reading machine def parameters
        if axcomb = 1,
          [
          sm10 = snull
          sm11 = snull
          sm12 = snull
          ]
        else,
          [
          sm10 = "M65"
          sm11 = "M64"
          sm12 = "M55"
          ]
        ]
      pspindle                              #Spindle speed calculations for RPM
      if stagetool = 1 & next_tool$ <> t$, prv_next_tool$ = -1
      prv_xia = vequ(xh$)

      toolchng = 1
      pcuttype
      if axcomb <> last_axcomb, prothome1 #Reset revs if new axis combination, req'd for multi C axes
      if postcomp | machsimflg,
        [
        rc1 = t$
        toollen = rbuf(1,rc1)
        qualified_length = toollen
        ]
      gcode$ = 0

      opno = opno + 1
      tcno = tcno + 1
      #if tcno = tchngcnt, !next_tool$  #comment out to prestage first tool at time of last toolchange

      if mi10$ = 1, pbld, pn, sm00, pe
      else, pbld, pn, sm01, pe
      pbld, pn, scomm_str, scomm_end, pe

      if cuttype = 4, ptlchgl
      else, ptlchgm
        ]

ptlchg0$        #Call from NCI null tool change (tool number repeats)
      #if subout$ = 0, subout$ = sav_subout  #remove comment to place retract in sub
      #lcc
      if cc_stop_fcc & rcc_flg$ = 6, no_nc_out$ = 1

      if cuttype = 4, ptlchg0l
      else, ptlchg0m

ptlchgm         #Mill tool change common blocks
      smachsim_block_comment = "ptlchg_com"
      if mi4$, tiltsol = 0
      else, tiltsol = 1
      if sof = 0, mr10cflg = 0                   #Reset rotary prompt flag
      protaxissetup   #Setup rotary axis (must be after prothome)

      pforce_output                              #Selectively force output at toolchange

      if not(machsimflg), inhibit_probe$
      pcom_moveb
      pcheckaxis                                 #Check for valid rotary axis
      if sof & not(machsimflg), uninhibit_probe$
      c_mmlt$                                    #Multiple tool subprogram call
      #if tseqno = 1, n$ = tcno * 10
      if tseqno = 1, n$ = tcno
      if tseqno = 2, n$ = t$
      if tseqno, pbld, pfn, pe                   #Forced N number
      #ptoolcomment
      if sof & scomm_sav <> snull,
        [
        spaces$ = 0
        #pn, pspc, scomm_str, no_spc$, *scomm_sav, no_spc$, scomm_end, pe
        #pn, pspc1, "* - ", *scomm_sav, pe
        spaces$ = sav_spc
        ]
      if sof = 0, scomm_sav = snull
      if machsimflg = 0, probing_before_toolchange  #Mastercam Probe
      if not(sof), pmanual_entry
      comment$
      pcomment3
      pstock
      ppostcompcomment

      ptoolcall
      pcan
      pbld, pn, pzhome, pe
      pbld, pn, pyhome, pe
      prv_feed = maxfeedpm
      if machsimflg,
        [
        if not(sof) & ((xformop & (parentopflg | (op_id$ <> last_op_id) | (xform_op_id$ <> last_xform_op_id))) | not(xformop)), pmachsim_op_end
        pmachsim_op_start
        if parentopflg & not(sof),
          [
          if vers_no_xx <= 2017 & not(xformop), pmachsim_op_end  #comment out for 2017 and prior Xform support
          #parentopflg = 0
          ]
        if sof,
          [
          smachsim_comment = "ptlchg_sof"
          #Machine home move
          xmachsim = vequ(xmachsim_home)
          machmovex_flg = vequ(onex)
          tilt_machsim = 0
          rot_machsim = 0
          skipinterp_flg = 1
          pmachsim_mach_out
          skipinterp_flg = 0
          smachsim_comment = ""
          ]
        ]
      gcode$ = 0
      sav_absinc = absinc$
      absinc$ = 0
      pwcs
      phsm1_on        #must remain before G43
      pshiftbefore
      protposition
      pshiftafter
      pbld, pn, pdyndatum, pe
      pbld, pn, ptlen, pe
      #papproachtop
      if mill5$ = 1 & vector,
        [
        sg00 = strln
        sg01 = strln
        ]
      else,
        [
        sg00 = strl
        sg01 = strl
        ]
      pbld, pn, pgear, pe
      if convert_rpd$ = 1,
        [
        gcode$ = 1
        feed = maxfeedpm
        ipr_type = 0
        ]
      #if tool_op$ = 106, pbld, pn, "M336", pe
      if machsimflg = 0, probing_after_toolchange  #Mastercam Probe
      if cuttype = 0, papproach0    #Toolplane Positioning
      if cuttype = 1, papproach1    #Axis Substitution
      if cuttype = 2, papproach2    #Polar Conversion
      if cuttype = 3, papproach3    #Simultaneous 4/5 axis (Multi-axis)
      pcan2        #Added so M and G codes in canned text will output before phsm2_on
      if machsimflg = 0, probing_after_coordinates  #Mastercam Probe
      phsm2_on                                   #must remain after G43
      sav_coolant = coolant$
      if coolant$ = 1, sm09 = sm09_0
      if coolant$ = 2, sm09 = sm09_1
      if coolant$ = 3, sm09 = sm09_2
      absinc$ = sav_absinc
      pcom_movea
      toolchng = 0
      startop = 0
      c_msng$ #Single tool subprogram call
      plast
      !op_id$
      hel_count = 0 #TNC helix counter

ptlchg0m        #Mill null tool change common blocks
      toolchng0 = 1
      smachsim_block_comment = "ptlchg0"
      popstate0
      if startop,
        [
        rd_prm_op_no$ = op_id$
        rd_params$  # Read parameters - pparameter
        if last_tool_op <> 154 & cutpos$ <> 6,
          [
          if mi4$, tiltsol = 0                     #set only for new ops to preserve last setting
          else, tiltsol = 1
          ]
        opno = opno + 1
        #mr10cflg = 0                             #Reset rotary prompt flag for every operation start
        ]
      mr10cflg = 0                             #Reset rotary prompt flag for every start of chain
      pcuttype

      if cutpos$ = 6 | last_cutpos = 6,
        [
        mr8$ = 3
        if last_cutpos <> 6,
          [
          safezone_flg = 1
          tiltplane = 0
          dyndatum = 0
          if not(machsimflg), tcp = sav_tcp
          else, post_tcp = sav_post_tcp
          if not(circle_mill_op | drill_5ax_op), cuttype = 3
          ]
        ]

      protaxissetup0  #Setup rotary axis (must be after prothome)

      sav_ret_tlvecx = vequ(ret_tlvecx)
      sav_machsim_tlvecx = vequ(machsim_tlvecx)
      pcom_moveb                                 #Must remain here to update tilt and rot values for decisions
      pworkofs

      if startop | xformop,
        [
        pretdec_strt                      #Make decision on whether to retract
        ]
      else,
        [
        pretdec_mid                       #Make decision on whether to retract
        ]

      if coolant$ <> 0 & coolant$ <> sav_coolant & sav_coolant, pbld, pn, sm09, pe

      if startop,
        [
        pset_mach                                  #Read parameters and setup machine
        if axcomb = 1,
          [
          sm10 = snull
          sm11 = snull
          sm12 = snull
          ]
        else,
          [
          sm10 = "M65"
          sm11 = "M64"
          sm12 = "M55"
          ]
        ]
      pspindle                                   #Spindle speed calculations for RPM
      pcom_moveb                                 #recall so that approach moves are updated after retracts
      pcheckaxis                                 #Check for valid rotary axis
      !op_id$
      if not(machsimflg), inhibit_probe$
      c_mmlt$                                    #Multiple tool subprogram call
      if startop, pmanual_entry
      scomm_sav = snull
      comment$
      pcomment3
      if startop, pstock

      pcan
      if startop & machsimflg,
        [
        pmachsim_op_end
        pmachsim_op_start
        ]
      if retflg = 2 | tool_op$ = 154,
        [
        if cutpos$ = 6 & tool_op$ <> 154,
          [
          pbld, pn, *sgcode, *xabs_tcp, *yabs_tcp, *zabs_tcp, protout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
          if machsimflg,
            [
            if not(machmove_flg),
              [
              smachsim_comment = "tlchg0 linking"
              xmachsim = vequ(xabs_tcp)
              post_tcp = sav_post_tcp
              rot_machsim = cabs
              tilt_machsim = aabs
              pmachsim_rel_out
              ptcpsetup
              smachsim_comment = ""
              ]
            ]
          ]
        if last_cutpos = 6 & (planeflg | dyndatumflg | tcp <> last_tcp), ptlen_off
        spa_sav = vequ(spa)
        pspatialcancel
        pdyndatumcancel
        spa = vequ(spa_sav)
        ]
      if startop, pbld, pn, !plane$, pe
      pbld, pn, pspindleout, pe
      if retflg,
        [
        sav_absinc = absinc$
        absinc$ = 0
        pwcs
        phsm1_on                                 #must remain before G43
        if machsimflg = 0, probing_before_toolchange  #Mastercam Probe
        pshiftbefore
        if not(cutpos$ = 6 & last_cutpos <> 6), protposition
        else, pbld, pn, protunlock, ptiltunlock, pe
        pshiftafter
        pbld, pn, pdyndatum, pe
        pbld, pn, ptlen, pe
        #papproachtop
        if mill5$ = 1 & vector,
          [
          sg00 = strln
          sg01 = strln
          ]
        else,
          [
          sg00 = strl
          sg01 = strl
          ]
        if (gcode$ = 0 | gnci$ = 0) & convert_rpd$ = 1,
          [
          gcode$ = 1
          feed = maxfeedpm
          ipr_type = 0
          ]
        if machsimflg = 0, probing_after_toolchange  #Mastercam Probe
        if cutpos$ = 6 & last_cutpos <> 6, papproach_safety
        else,
          [
          if cuttype = 0, papproach0    #Toolplane Positioning
          if cuttype = 1, papproach1    #Axis Substitution
          if cuttype = 2, papproach2    #Polar Conversion
          if cuttype = 3, papproach3    #Simultaneous 4/5 axis (Multi-axis)
          ]
        absinc$ = sav_absinc
        pcan2        #Added so M and G codes in canned text will output before phsm2_on
        if machsimflg = 0, probing_after_coordinates  #Mastercam Probe
        phsm2_on                                 #must remain after G43
        pe_inc_calc
        ps_inc_calc
        ]
      else,
        [
        if machsimflg = 0, probing_before_toolchange  #Mastercam Probe
        if startop, pbld, pn, !plane$, pe
        pbld, pn, scoolant, pe
        pspindchng2     #Spindle change, shut off and restart spindle
        if machsimflg = 0, probing_after_toolchange  #Mastercam Probe
        if cuttype = 0 & cutpos$ <> 6, ppos_cax_lin
        if machsimflg = 0, probing_after_coordinates  #Mastercam Probe
        ]
      sav_coolant = coolant$
      if coolant$ = 1, sm09 = sm09_0
      if coolant$ = 2, sm09 = sm09_1
      if coolant$ = 3, sm09 = sm09_2
      if (gcode$ = 0 | gnci$ = 0) & convert_rpd$ = 1,
        [
        gcode$ = 1
        if ipr_type = 2, feed = minfrinv
        else, feed = maxfeedpm
        if ipr_type = 2, prv_feed = c9k
        if tool_op$ < 440,
          [
          ipr_type = 0
          feed = maxfeedpm
          ]
        ]
      pbld, pn, [if rotlockflg = 0, protunlock], pe  #Case that rot/tilt motion occurs outside protposition
      pbld, pn, [if tiltlockflg = 0, ptiltunlock], pe  #Case that rot/tilt motion occurs outside protposition
      if gcode$ = 1, plinout
      else, prapidout
      pbld, pn, protlock, pe  #Case that rot/tilt motion occurs outside protposition
      pbld, pn, ptiltlock, pe  #Case that rot/tilt motion occurs outside protposition
      #if tool_op$ = 106, pbld, pn, "M336", pe
      if machsimflg,
        [
        pmachsim_calc
        xmachsim = vequ(xmachsim_calc)
        tilt_machsim = aabs
        rot_machsim = cabs
        pmachsim_rel_out
        ]
      pcom_movea
      if retflg = 0,                         #output if not forced output above with the G43
        [
        hsmflg = 0
        phsm1_on
        if tlenflg = 0 & hsmflg,
          [
          sav_absinc = absinc$
          absinc$ = 0
          if cuttype = 0, papproach0    #Toolplane Positioning
          if cuttype = 1, papproach1    #Axis Substitution
          if cuttype = 2, papproach2    #Polar Conversion
          if cuttype = 3, papproach3    #Simultaneous 4/5 axis (Multi-axis)
          absinc$ = sav_absinc
          hsmflg = 0
          ]
        phsm2_on
        ]
      c_msng$                                    #Single tool subprogram call
      plast
      toolchng0 = 0
      startop = 0
      axsubstart = 0
      safezone_flg = 0
      hel_count = 0 #TNC helix counter

ptlchgl          #Lathe tool change common blocks
      if mi4$, tiltsol = 0
      else, tiltsol = 1
      if sof = 0, mr10cflg = 0                   #Reset rotary prompt flag
      protaxissetup   #Setup rotary axis (must be after prothome)

      pforce_output                              #Selectively force output at toolchange

      #lcc
      copy_x = vequ(x$)
      pcc_capture                                #Capture LCC ends, stop output RLCC
      c_rcc_setup$                               #Setup for lcc, called when rcc_flg$ = 1

      if not(machsimflg), inhibit_probe$
      pcom_moveb
      pcheckaxis                                 #Check for valid rotary axis
      if sof & not(machsimflg), uninhibit_probe$
      c_mmlt$                                    #Multiple tool subprogram call
      #if tseqno = 1, n$ = tcno * 10
      if tseqno = 1, n$ = tcno
      if tseqno = 2, n$ = t$
      if tseqno, pbld, pfn, pe                   #Forced N number
      #ptoolcomment
      #if sof & scomm_sav <> snull,
      #  [
      #  spaces$ = 0
      #  pn, pspc, scomm_str, *scomm_sav, scomm_end, pe
      #  spaces$ = sav_spc
      #  ]
      if sof = 0, scomm_sav = snull
      comment$
      pcomment3

      pcan
      pbld, pn, pdiasel, pe                       #Select radius/diameter mode
      ptoolcall
      preadbuf5
      pbld, pn, pspc, scomm_str, no_spc$, "MAX - ", no_spc$, *max_depth, no_spc$, scomm_end, pe
      pbld, pn, pspc, scomm_str, no_spc$, "MIN - ", no_spc$, *min_depth, no_spc$, scomm_end, pe
      if machsimflg,
        [
        if not(sof) & ((xformop & (parentopflg | (op_id$ <> last_op_id) | (xform_op_id$ <> last_xform_op_id))) | not(xformop)), pmachsim_op_end
        pmachsim_op_start
        if parentopflg & not(sof),
          [
          if vers_no_xx <= 2017 & not(xformop), pmachsim_op_end  #comment out for 2017 and prior Xform support
          #parentopflg = 0
          ]
        if sof,
          [
          smachsim_comment = "ptlchg_sof"
          #Machine home move
          xmachsim = vequ(xmachsim_home)
          machmovex_flg = vequ(onex)
          tilt_machsim = 0
          rot_machsim = 0
          skipinterp_flg = 1
          pmachsim_mach_out
          skipinterp_flg = 0
          smachsim_comment = ""
          ]
        ]
      gcode$ = 0
      sav_absinc = absinc$
      absinc$ = 0
      pwcs
      phsm1_on        #must remain before G43
      pmodesel
      #pbld, pn, pzhome, pe
      #pbld, pn, pyhome, pe

      pshiftbefore
      protposition
      pshiftafter
      pbld, pn, pgear, pe
      pbld, pn, pdyndatum, pe
      pbld, pn, ptlen, pe
      pbld, pn, "FUNCTION TURNDATA SPIN"
      if css_actv$,
        [
        result = nwadrs("VC:", speed)
        speed = speed * 12
        "VCONST:ON", *speed, *maxss$, pe
        speed = speed/12
        !speed
        ]
      else,
        [
        result = nwadrs(strs, speed)
        "VCONST:OFF", *speed, pe
        ]
      if cuttype = 4,
        [
        pbld, pn, "CYCL DEF 800 ADJUST XZ SYSTEM ~", pe
        if abs(aabs) = 90, "      Q497=+270", scomm_str, no_spc$, "PRECESSION ANGLE ~", pe
        else, "      Q497=+0", scomm_str, no_spc$, "PRECESSION ANGLE ~", pe
        #"      Q497=+90", scomm_str, no_spc$, "PRECESSION ANGLE ~", pe
        if orient$ = 5, orient_out = orientangle
        else, orient_out = orientangle + 180
        while orient_out < 0, orient_out = orient_out + 360
        while orient_out >= 360, orient_out = orient_out - 360
        if orientangle = 180, "      Q498=+0", scomm_str, no_spc$, "REVERSE TOOL ~", pe
        else, "      Q498=+1", scomm_str, no_spc$, "REVERSE TOOL ~", pe
        if aabs <> 0, "      Q530=+2", scomm_str, no_spc$, "INCLINED MACHINING ~", pe
        else, "      Q530=+0", scomm_str, no_spc$, "INCLINED MACHINING ~", pe
        spa = abs(aabs)
        if orient$ = 5 | orient$ = 6 | orient$ = 7 | orient$ = 8, spa = abs(spa - 90) #vertical
        result = nwadrs(snull,spa)
        "      Q531=", no_spc$, *spa, scomm_str, no_spc$, "ANGLE OF INCIDENCE ~", pe
        "      Q532= MAX", scomm_str, no_spc$, "FEED RATE ~", pe
        if aabs <> 0, "      Q533=-1", scomm_str, no_spc$, "PREFERRED DIRECTION ~", pe
        else, "      Q533=+0", scomm_str, no_spc$, "PREFERRED DIRECTION ~", pe
        "      Q535=+3", scomm_str, no_spc$, "ECCENTRIC TURNING ~", pe
        "      Q536=+1", scomm_str, no_spc$, "ECCENTRIC W/O STOP", pe
        pbld, pn, protlock, pe
        pbld, pn, ptiltlock, pe
        ]
      #pbld, pn, pfspindleout, pe
      #papproachtop
      if mill5$ = 1 & vector,
        [
        sg00 = strln
        sg01 = strln
        ]
      else,
        [
        sg00 = strl
        sg01 = strl
        ]
      pbld, pn, pgear, pe
      if convert_rpd$ = 1,
        [
        gcode$ = 1
        feed = maxfeedpm
        ipr_type = 0
        ]
      if machsimflg = 0, probing_after_toolchange  #Mastercam Probe
      papproach4                                 #Turning
      pbld, pn, pfspindleout, pe
      pcan2        #Added so M and G codes in canned text will output before phsm2_on
      if machsimflg = 0, probing_after_coordinates  #Mastercam Probe
      phsm2_on                                   #must remain after G43
      sav_coolant = coolant$
      if coolant$ = 1, sm09 = sm09_0
      if coolant$ = 2, sm09 = sm09_1
      if coolant$ = 3, sm09 = sm09_2
      absinc$ = sav_absinc

      #lcc
      if lcc_cc_pos, plcc_cc_pos  #Use sav_xa to position with comp

      pcom_movea
      toolchng = 0
      startop = 0
      c_msng$ #Single tool subprogram call
      plast
      !op_id$
      hel_count = 0 #TNC helix counter
      start_xabs = vequ(xabs)

ptlchg0l        #Lathe null tool change common blocks
      toolchng0 = 1
      popstate0
      if startop,
        [
        rd_prm_op_no$ = op_id$
        rd_params$  # Read parameters - pparameter
        if last_tool_op <> 154 & cutpos$ <> 6,
          [
          if mi4$, tiltsol = 0                     #set only for new ops to preserve last setting
          else, tiltsol = 1
          ]
        opno = opno + 1
        #preadbuf5
        ]
      pcuttype

      if cutpos$ = 6 | last_cutpos = 6,
        [
        mr8$ = 3
        if last_cutpos <> 6,
          [
          safezone_flg = 1
          tiltplane = 0
          dyndatum = 0
          if not(machsimflg), tcp = sav_tcp
          else, post_tcp = sav_post_tcp
          if not(circle_mill_op | drill_5ax_op), cuttype = 3
          ]
        ]

      protaxissetup0  #Setup rotary axis (must be after prothome)

      #lcc
      copy_x = vequ(x$)
      c_rcc_setup$                               #Setup for lcc, called when rcc_flg$ = 1

      pcom_moveb                                 #Must remain here to update tilt and rot values for decisions
      pworkofs

      if startop | xformop,
        [
        pretdec_strt                      #Make decision on whether to retract
        ]
      else,
        [
        pretdec_mid                       #Make decision on whether to retract
        ]

      if coolant$ <> 0 & coolant$ <> sav_coolant & sav_coolant, pbld, pn, sm09, pe

      if startop, pset_mach                                  #Read parameters and setup machine
      pspindle                                   #Spindle speed calculations for RPM
      pcom_moveb                                 #recall so that approach moves are updated after retracts
      pcheckaxis                                 #Check for valid rotary axis
      !op_id$
      if not(machsimflg), inhibit_probe$
      c_mmlt$                                    #Multiple tool subprogram call
      if startop, pmanual_entry
      scomm_sav = snull
      comment$
      pcomment3

      pcan
      if startop, pbld, pn, pdiasel, pe                       #Select radius/diameter mode
      if (startop | (multiaxlinkop & vers_no_xx < 2018) | machsim_op_end_flg) & machsimflg,
        [
        if not(xformop) | machsim_op_end_flg, pmachsim_op_end
        pmachsim_op_start
        ]
      if retflg = 2 | tool_op$ = 154,
        [
        if cutpos$ = 6 & tool_op$ <> 154,
          [
          pbld, pn, *sgcode, *xabs_tcp, *yabs_tcp, *zabs_tcp, protout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
          if machsimflg,
            [
            if not(machmove_flg),
              [
              smachsim_comment = "tlchg0 linking"
              xmachsim = vequ(xabs_tcp)
              post_tcp = sav_post_tcp
              rot_machsim = cabs
              tilt_machsim = aabs
              pmachsim_rel_out
              ptcpsetup
              smachsim_comment = ""
              ]
            ]
          if last_cutpos = 6, ptlen_off
          ]
        spa_sav = vequ(spa)
        pspatialcancel
        pdyndatumcancel
        spa = vequ(spa_sav)
        ]
      if retflg,
        [
        sav_absinc = absinc$
        absinc$ = 0
        pwcs
        if startop, pmodesel                      #Select milling/turning mode
        if machsimflg = 0, probing_before_toolchange  #Mastercam Probe
        pshiftbefore
        if not(cutpos$ = 6 & last_cutpos <> 6), protposition
        else, pbld, pn, protunlock, ptiltunlock, pe
        pshiftafter
        pbld, pn, pdyndatum, pe
        pbld, pn, ptlen, pe
        if speed <> prv_speed,
          [
          "FUNCTION TURNDATA SPIN"
          if css_actv$,
            [
            result = nwadrs("VC:", speed)
            speed = speed * 12
            "VCONST:ON", *speed, *maxss$, pe
            speed = speed/12
            !speed
            ]
          else,
            [
            result = nwadrs(strs, speed)
            "VCONST:OFF", *speed, pe
            ]
          spnd_frc_flg = 1
          ]
        if cuttype = 4,
          [
          pbld, pn, "CYCL DEF 800 ADJUST XZ SYSTEM ~", pe
          if abs(aabs) = 90, "      Q497=+270", scomm_str, no_spc$, "PRECESSION ANGLE ~", pe
          else, "      Q497=+0", scomm_str, no_spc$, "PRECESSION ANGLE ~", pe
          #"      Q497=+90", scomm_str, no_spc$, "PRECESSION ANGLE ~", pe
          if orient$ = 5, orient_out = orientangle
          else, orient_out = orientangle + 180
          while orient_out < 0, orient_out = orient_out + 360
          while orient_out >= 360, orient_out = orient_out - 360
          if orientangle = 180, "      Q498=+0", scomm_str, no_spc$, "REVERSE TOOL ~", pe
          else, "      Q498=+1", scomm_str, no_spc$, "REVERSE TOOL ~", pe
          if aabs <> 0, "      Q530=+2", scomm_str, no_spc$, "INCLINED MACHINING ~", pe
          else, "      Q530=+0", scomm_str, no_spc$, "INCLINED MACHINING ~", pe
          spa = abs(aabs)
          if orient$ = 5 | orient$ = 6 | orient$ = 7 | orient$ = 8, spa = abs(spa - 90) #vertical
          result = nwadrs(snull,spa)
          "      Q531=", no_spc$, *spa, scomm_str, no_spc$, "ANGLE OF INCIDENCE ~", pe
          "      Q532= MAX", scomm_str, no_spc$, "FEED RATE ~", pe
          if aabs <> 0, "      Q533=-1", scomm_str, no_spc$, "PREFERRED DIRECTION ~", pe
          else, "      Q533=+0", scomm_str, no_spc$, "PREFERRED DIRECTION ~", pe
          "      Q535=+3", scomm_str, no_spc$, "ECCENTRIC TURNING ~", pe
          "      Q536=+1", scomm_str, no_spc$, "ECCENTRIC W/O STOP", pe
          pbld, pn, protlock, pe
          pbld, pn, ptiltlock, pe
          ]
        if mill5$ = 1 & vector,
          [
          sg00 = strln
          sg01 = strln
          ]
        else,
          [
          sg00 = strl
          sg01 = strl
          ]
        if (gcode$ = 0 | gnci$ = 0) & convert_rpd$ = 1,
          [
          gcode$ = 1
          feed = maxfeedpm
          ipr_type = 0
          ]
        if machsimflg = 0, probing_after_toolchange  #Mastercam Probe
        papproach4                               #Turning
        pbld, pn, pfspindleout, pe
        absinc$ = sav_absinc
        pcan2        #Added so M and G codes in canned text will output before phsm2_on
        if machsimflg = 0, probing_after_coordinates  #Mastercam Probe
        phsm2_on                                 #must remain after G43
        pe_inc_calc
        ps_inc_calc
        ]
      else,
        [
        if machsimflg = 0, probing_before_toolchange  #Mastercam Probe
        #if startop, pbld, pn, sgplane, pe
        pbld, pn, scoolant, pe
        pspindchng2     #Spindle change, shut off and restart spindle
        if machsimflg = 0, probing_after_toolchange  #Mastercam Probe
        if cuttype = 0 & cutpos$ <> 6, ppos_cax_lin
        if machsimflg = 0, probing_after_coordinates  #Mastercam Probe
        if startop, pmodesel
        ]
      sav_coolant = coolant$
      if coolant$ = 1, sm09 = sm09_0
      if coolant$ = 2, sm09 = sm09_1
      if coolant$ = 3, sm09 = sm09_2
      if (gcode$ = 0 | gnci$ = 0) & convert_rpd$ = 1,
        [
        gcode$ = 1
        if ipr_type = 2, feed = minfrinv
        else, feed = maxfeedpm
        feed = maxfeedpm
        ipr_type = 0
        ]

      pbld, pn, [if tiltlockflg = 0, ptiltunlock], pe  #Case that rot/tilt motion occurs outside protposition
      if gcode$ = 1, plinout
      else,
        [
        gcode$ = 0
        #lcc
        #if lathecc = 3, pbld, pn, pccdia, pe   #uncomment to apply comp before move, lcc groove
        if tool_op$ = 201, !cc_pos$
        prapidout
        ]
      pbld, pn, ptiltlock, pe  #Case that rot/tilt motion occurs outside protposition
      if machsimflg,
        [
        pmachsim_calc
        xmachsim = vequ(xmachsim_calc)
        machmovex_flg = vequ(zerox)
        tilt_machsim = aabs
        rot_machsim = cabs
        pmachsim_rel_out
        ]

      #If spindle direction changes and css_start_rpm is used and retract did not occur
      if css_actv$ & prv_css_actv$ = 0 & css_start_rpm,
        [
        "FUNCTION TURNDATA SPIN"
        if css_actv$,
          [
          result = nwadrs("VC:", speed)
          speed = speed * 12
          "VCONST:ON", *speed, *maxss$, pe
          speed = speed/12
          !speed
          ]
        else,
          [
          result = nwadrs(strs, speed)
          "VCONST:OFF", *speed, pe
          ]
        spnd_frc_flg = 1
        ]

      #lcc
      if lcc_cc_pos, plcc_cc_pos                 #Use sav_xa to position with comp. LCC

      pcom_movea
      if retflg = 0,                             #output if not forced output above with the G43
        [
        phsm1_on
        phsm2_on
        ]

      c_msng$                                    #Single tool subprogram call
      plast
      toolchng0 = 0
      if startop, start_xabs = vequ(xabs)
      startop = 0
      hel_count = 0 #TNC helix counter

retdecdebug : 0

pretdec_strt    #Make decision on whether or not to retract - start of op
      #retflg - Settings are dependent on change in mode/coords/etc and also mr7 selection
      #         0 = Selective cancel, no retract, selective call
      #         1 = Cancel all active modes, retract motion based on mr7, call/recall all
      #         2 = Do not retract, recall all (to be placed after pretract0/pcancel0)
      retflg = 0
      if fmtrnd(movec),
        [
        #Uncomment this if you need a cancel and recall when tiltplane is active
        if (tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg), retflg = 1
        else,
          [
          if mr7$ <> 3, retflg = 1
          ]
        ]
      if retdecdebug, ~retflg, ~cabs, prv_cabs, ~movec, ~tiltplane, pe
      if fmtrnd(movea),
        [
        #Uncomment this if you need a cancel and recall when tiltplane is active
        if (tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg), retflg = 1
        else,
          [
          if mr7$ <> 3, retflg = 1
          ]
        ]
      if retdecdebug, ~retflg, ~aabs, prv_aabs, ~movea, ~tiltplane, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spa) <> fmtrnd(prv_spa), retflg = 1
      if retdecdebug, ~retflg, ~spa, prv_spa, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spb) <> fmtrnd(prv_spb), retflg = 1
      if retdecdebug, ~retflg, ~spb, prv_spb, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spc) <> fmtrnd(prv_spc), retflg = 1
      if retdecdebug, ~retflg, ~spc, prv_spc, pe
      #(multi passes, depth cuts, multi chains with tcp give dangerous machine behaviour)
      if cuttype <> 0 & ((tcp & not(machsimflg)) | (post_tcp & machsimflg)),
        [
        if mr7$ <> 3, retflg = 1 #Uncomment if you want mr7$ = 3 to give no cancel(G49)/recall(G43.4)
        #retflg = 1
        ]
      if retdecdebug, ~retflg, ~cuttype, ~tcp, pe
      if rotary_type$ <> last_rotary_type, retflg = 1
      if retdecdebug, ~retflg, ~rotary_type$, ~last_rotary_type, pe
      if workofs$ <> last_workofs & wcstype <> 3, retflg = 1
      if retdecdebug, ~retflg, ~workofs$, ~last_workofs, pe
      if cuttype <> last_cuttype & last_tool_op <> 154, retflg = 1
      if retdecdebug, ~retflg, ~cuttype, ~last_cuttype, pe
      if axcomb <> last_axcomb, retflg = 1
      if retdecdebug, ~retflg, ~axcomb, ~last_axcomb, pe
      if fmtrnd(toxout) <> fmtrnd(last_toxout) | fmtrnd(toyout) <> fmtrnd(last_toyout) | fmtrnd(tozout) <> fmtrnd(last_tozout), retflg = 1
      if retdecdebug, ~retflg, ~toxout, ~last_toxout, ~toyout, ~last_toyout, ~tozout, ~last_tozout, pe
      if startop & mi10$, retflg = 1
      if retdecdebug, ~retflg, ~startop, ~mi10$, pe
      if (not(machsimflg) & tcp <> last_tcp) | (machsimflg & post_tcp <> last_post_tcp), retflg = 1
      if retdecdebug, ~retflg, ~tcp, ~last_tcp, pe
      if multiaxlinkop, retflg = 0
      if retdecdebug, ~retflg, ~multiaxlinkop, pe
      if last_tool_op = 154 & tlenflg = 0, retflg = 2
      if retdecdebug, ~retflg, ~last_tool_op, pe
      if tool_op$ = 154, retflg = 2
      if retdecdebug, ~retflg, ~tool_op$, pe
      if multiaxlinkop, retflg = 0
      if retdecdebug, ~retflg, ~multiaxlinkop, pe
      if last_tool_op = 154 & tlenflg = 0, retflg = 2
      if retdecdebug, ~retflg, ~last_tool_op, pe
      if tool_op$ = 154, retflg = 2
      if retdecdebug, ~retflg, ~tool_op$, pe

      #Custom
      if babs <> prv_babs & mr7$ <> 3, retflg = 1
      if retdecdebug, ~retflg, ~babs, ~prv_babs, pe
      if toolang <> last_toolang, retflg = 1
      if retdecdebug, ~retflg, ~toolang, ~last_toolang, pe
      if toolangle <> last_toolangle, retflg = 1
      if retdecdebug, ~retflg, ~toolangle, ~last_toolangle, pe
      #if orientangle <> last_orientangle, retflg = 1
      #if retdecdebug, ~retflg, ~orientangle, ~last_orientangle, pe
      if syncaxis$ <> last_syncaxis, retflg = 1
      if retdecdebug, ~retflg, ~syncaxis$, ~last_syncaxis, pe

      if retflg = 1,
        [
        pretract0                   #Retract
        indexflg = 1
        movecnt = 0
        ]
      else, pcancel0                             #Selective Cancel

      if mi10$, pbld, pn, sm00, pe

      if xformop & fmtrnd(movec), retflg = 2
      if retdecdebug, ~retflg, ~xformop, ~cabs, prv_cabs, ~movec, pe
      if xformop & fmtrnd(movea), retflg = 2
      if retdecdebug, ~retflg, ~xformop, ~aabs, prv_aabs, ~movea, pe

pretdec_mid     #Make decision on whether or not to retract - mid op
      #retflg - Settings are dependent on change in mode/coords/etc and also mr8 selection
      #         0 = Selective cancel, no retract, selective call
      #         1 = Cancel all active modes, retract motion based on mr8, call/recall all
      #         2 = Do not retract, recall all (to be placed after pretract0/pcancel0)
      retflg = 0
      if fmtrnd(movec),
        [
        #Uncomment this if you need a cancel and recall when tiltplane is active
        if (tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg), retflg = 1
        else,
          [
          if mr8$ <> 3, retflg = 1
          ]
        ]
      if retdecdebug, ~retflg, ~cabs, prv_cabs, ~movec, ~tiltplane, pe
      if fmtrnd(movea),
        [
        #Uncomment this if you need a cancel and recall when tiltplane is active
        if (tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg), retflg = 1
        else,
          [
          if mr8$ <> 3, retflg = 1
          ]
        ]
      if retdecdebug, ~retflg, ~aabs, prv_aabs, ~movea, ~tiltplane, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spa) <> fmtrnd(prv_spa) & mr8$ <> 3, retflg = 1
      if retdecdebug, ~retflg, ~spa, prv_spa, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spb) <> fmtrnd(prv_spb) & mr8$ <> 3, retflg = 1
      if retdecdebug, ~retflg, ~spb, prv_spb, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spc) <> fmtrnd(prv_spc) & mr8$ <> 3, retflg = 1
      if retdecdebug, ~retflg, ~spc, prv_spc, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spa) <> fmtrnd(prv_spa) & mr8$ = 3, retflg = 2
      if retdecdebug, ~retflg, ~spa, prv_spa, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spb) <> fmtrnd(prv_spb) & mr8$ = 3, retflg = 2
      if retdecdebug, ~retflg, ~spb, prv_spb, pe
      if ((tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg)) & fmtrnd(spc) <> fmtrnd(prv_spc) & mr8$ = 3, retflg = 2
      if retdecdebug, ~retflg, ~spc, prv_spc, pe
      #(multi passes, depth cuts, multi chains with tcp give dangerous machine behaviour)
      if cuttype <> 0 & ((tcp & not(machsimflg)) | (post_tcp & machsimflg)),
        [
        if mr8$ <> 3, retflg = 1 #Uncomment if you want mr8$ = 3 to give no cancel(G49)/recall(G43.4)
        #retflg = 1
        ]
      if retdecdebug, ~retflg, ~cuttype, ~tcp, pe
      if multiaxlinkop, retflg = 0
      if retdecdebug, ~retflg, ~multiaxlinkop, pe
      if last_tool_op = 154 & tlenflg = 0, retflg = 2
      if retdecdebug, ~retflg, ~last_tool_op, pe
      if tool_op$ = 154 & tlenflg = 0, retflg = 2
      if retdecdebug, ~retflg, ~tool_op$, pe
      if safezone_flg & (planeflg | dyndatumflg | tcp <> last_tcp), retflg = 1
      if retdecdebug, ~retflg, ~safezone_flg, ~planeflg, ~dyndatumflg, pe
      if cutpos$ = 6 & last_cutpos = 6 & cuttype <> 3, retflg = 2
      if retdecdebug, ~retflg, ~cutpos$, ~last_cutpos, pe
      if cutpos$ <> 6 & last_cutpos = 6, retflg = 2                            #Ending safety zone
      if retdecdebug, ~retflg, ~cutpos$, ~last_cutpos, ~toolchng0, pe

      if retflg = 1,
        [
        pretract0                   #retract
        indexflg = 1
        movecnt = 0
        ]

pcancel0        #Selective cancellations if no retract
                #Setup mode cancellations here that do not require a full retract
                #Any cancellations must be able to be recalled in ptlchg0 regardless of retract
      if (mr1$ <> 1 & mr1flg = 1) | (mr1$ <> 2 & mr1flg = 2)
       | (mr1$ <> 3 & mr1flg = 3) | (mr1$ = mr1flg & mr2$ <> last_mr2), phsm_off
      if (fmtrnd(movea) | fmtrnd(movec)) & dyndatumflg,
        [
        pdyndatumcancel
        result = force(xabs,zabs)
        ]
      spdir2 = fsg3(spdir$)
      if prv_spdir2 <> spdir2, pspindchng1     #Spindle change, shut off spindle
      psublaunch

pretract        #End of tool path, toolchange
      retract_flg = 1
      if cuttype = 4, pretractl
      else, pretractm
      retract_flg = 0
      if not(machsimflg), uninhibit_probe$

pretract0       #End of tool path, null toolchange
      retract0_flg = 1
      if cuttype = 4, pretract0l
      else, pretract0m
      retract0_flg = 0

pretractm       #End of tool path, toolchange, mill
      retract_flg = 1
      sg00 = strl
      sg01 = strl

      pinterp_off
      phsm_off
      ptlen_off

      sav_coolant = coolant$
      coolant$ = 0

      #if nextop$ = 1003,                 #Uncomment this line to leave coolant on until eof unless
      #  [                                #  explicitely turned off through a canned text edit
        if all_cool_off,
          [
          #all coolant off with a single off code here
          if coolant_on, pbld, pn, *sall_cool_off, pe
          coolant_on = 0
          ]
        else,
          [
          local_int = 0
          coolantx = 0
          while local_int < 20 & coolant_on > 0,
            [
            coolantx = and(2^local_int,coolant_on)
            local_int = local_int + 1
            if coolantx > 0,
              [
              coolantx = local_int
              pbld, pn, scoolantx, pe
              ]
            coolantx = 0
            ]
          coolant_on = 0
          ]
      #  ]

      #cc_pos is reset in the toolchange here
      sav_cc_pos = cc_pos$
      cc_pos$ = 0
      if convert_rpd$ = 1,
        [
        gcode$ = 1
        feed = maxfeedpm
        ipr_type = 0
        ]
      else, gcode$ = 0
      pbld, pn, sccomp, psub_end_mny, pe
      psublaunch
      if not(cuttype = 3 & tcp), cc_pos$ = sav_cc_pos  #May apply to other scenarios

      pspindchng1     #Spindle change, shut off spindle

      #if unwind, convert_rpd$ = 1
      #if startop | xformop,
      #  [
      #  if mr7$ < 3, pbld, pn, paxishome, pe
      #  ]
      #else,
      #  [
      #  if mr8$ < 3, pbld, pn, paxishome, pe
      #  ]
      #if unwind, convert_rpd$ = sav_convert_rpd

      pspatialcancel

      pdyndatumcancel


      pbld, pn, pzhome, scoolant, pe
      #pbld, pn, protunlock, pe
      #pbld, pn, ptiltunlock, pe
      #pbld, pn, sg00, "A0", "C0", "F MAX", "M91", pe
      pbld, pn, pyhome, pe
      if posttype$ = 2, pbld, pn, pxhome, pe
      prv_feed = maxfeedpm

      pshiftcancel

      coolant$ = sav_coolant
      ptoolbreak
      retract_flg = 0
      if not(machsimflg), uninhibit_probe$

pretract0m      #End of tool path, null toolchange, mill
      retract0_flg = 1
      sg00 = strl
      sg01 = strl

      pinterp_off
      phsm_off
      ptlen_off

      sav_coolant = coolant$
      #if startop | xformop,               #Uncomment to turn coolant off
      #  [
      #  if mr7$ > 0 & mr7$ < 3, coolant$ = 0
      #  ]
      #else,
      #  [
      #  if mr8$ > 0 & mr8$ < 3, coolant$ = 0
      #  ]
      if coolant$ <> prv_coolant$, coolant$ = 0

      ##if nextop$ = 1003,                 #Uncomment this line to leave coolant on until eof unless
      ##  [                                #  explicitely turned off through a canned text edit
      #  if all_cool_off,
      #    [
      #    #all coolant off with a single off code here
      #    if coolant_on, pbld, pn, *sall_cool_off, pe
      #    coolant_on = 0
      #    ]
      #  else,
      #    [
      #    local_int = 0
      #    coolantx = 0
      #    while local_int < 20 & coolant_on > 0,
      #      [
      #      coolantx = and(2^local_int,coolant_on)
      #      local_int = local_int + 1
      #      if coolantx > 0,
      #        [
      #        coolantx = local_int
      #        pbld, pn, scoolantx, pe
      #        ]
      #      coolantx = 0
      #      ]
      #    coolant_on = 0
      #    ]
      ##  ]

      #cc_pos is reset in the toolchange here
      sav_cc_pos = cc_pos$
      cc_pos$ = 0
      if convert_rpd$ = 1,
        [
        gcode$ = 1
        feed = maxfeedpm
        ipr_type = 0
        ]
      else, gcode$ = 0
      pbld, pn, sccomp, psub_end_mny, pe
      psublaunch
      if not(cuttype = 3 & tcp), cc_pos$ = sav_cc_pos  #May apply to other scenarios

      spdir2 = fsg3(spdir$)
      if prv_spdir2 <> spdir2, pspindchng1     #Spindle change, shut off spindle

      if unwind, convert_rpd$ = 1
      if startop | xformop,
        [
        if mr7$ < 3, pbld, pn, paxishome, pe
        ]
      else,
        [
        if mr8$ < 3, pbld, pn, paxishome, pe
        ]
      if unwind, convert_rpd$ = sav_convert_rpd

      pspatialcancel

      pdyndatumcancel

      gcode$ = 0
      feed = fr_pos$
      if startop | xformop,
        [
        if mr7$ > 0 & mr7$ < 3,
          [
          pbld, pn, pzhome, scoolant, pe
          prv_feed = maxfeedpm
          if mr7$ = 2, pbld, pn, pyhome, pe
          pbld, pn, *sgcode, "A+Q120", "F MAX", pe
          pbld, pn, *sgcode, "C+Q122", "F MAX", pe
          ]
        ]
      else,
        [
        if mr8$ > 0 & mr8$ < 3,
          [
          pbld, pn, pzhome, scoolant, pe
          prv_feed = maxfeedpm
          if mr8$ = 2, pbld, pn, pyhome, pe
          pbld, pn, *sgcode, "A+Q120", "F MAX", pe
          pbld, pn, *sgcode, "C+Q122", "F MAX", pe
          ]
        ]

      pshiftcancel

      coolant$ = sav_coolant
      if startop, ptoolbreak
      retract0_flg = 0

pretractl       #End of tool path, toolchange, lathe
      sg00 = strl
      sg01 = strl

      #ptlen_off

      sav_coolant = coolant$
      coolant$ = 0
      #if nextop$ = 1003,                 #Uncomment this line to leave coolant on until eof unless
      #  [                                #  explicitely turned off through a canned text edit
        if all_cool_off,
          [
          #all coolant off with a single off code here
          if coolant_on, pbld, pn, *sall_cool_off, pe
          coolant_on = 0
          ]
        else,
          [
          local_int = 0
          coolantx = 0
          while local_int < 20 & coolant_on > 0,
            [
            coolantx = and(2^local_int,coolant_on)
            local_int = local_int + 1
            #result = frac(coolantx/2)
            if coolantx > 0, # & result <> 0,
              [
              coolantx = local_int
              pbld, pn, scoolantx, pe
              ]
            coolantx = 0
            ]
          coolant_on = 0
          ]
      #  ]

      #cc_pos is reset in the toolchange here
      sav_cc_pos = cc_pos$
      cc_pos$ = 0
      if convert_rpd$ = 1,
        [
        gcode$ = 1
        feed = maxfeedpm
        ipr_type = 0
        ]
      else, gcode$ = 0
      pbld, pn, sccomp, psub_end_mny, pe
      psublaunch
      if not(cuttype = 3 & tcp), cc_pos$ = sav_cc_pos  #May apply to other scenarios

      #Output change back to G97 if not shutting off spindle
      spdir2 = fsg3(spdir$)
      if prv_css_actv$ & css_start_rpm & not(prv_spdir2 <> spdir2 | axcomb <> last_axcomb),
        [
        sav_css_actv = css_actv$
        pbld, pn, pcss_start_rpm, pe
        css_actv$ = sav_css_actv
        ]
      if prv_spdir2 <> spdir2 | axcomb <> last_axcomb | nextop$ = 1003 | posttype$ = 1, pspindchng1 #Spindle change, shut off spindle

      #tool = prv_t$ * 100 #drop offset
      #prv_tloffno$ = c9k
      #pbld, pn, *sgcode, *tool, pe
      #tlenflg = 0

      #pbld, pn, paxishome, pe
      pspatialcancel
      pbld, pn, "CYCL DEF 801 RESET ROTARY COORDINATE SYSTEM", pe
      #modesel = 0
      #pn, smodesel, pe
      #pbld, pn, scomm_str, pe
      #pn, "TRANS DATUM RESET", pe
      #pn, "PLANE RESET TURN MB MAX", "F MAX", pe
      #pn, "PLANE RESET STAY", pe

      pdyndatumcancel

      #if nextop$ <> 1003, pbld, pn, pzhome, scoolant, pe
      if mr7$ = 2 | mr8$ = 2,
        [
        pbld, pn, pzhome, scoolant, pe
        pbld, pn, pyhome, pe
        if posttype$ = 2, pbld, pn, pxhome, pe
        ]
      else, pbld, pn, scoolant, pe
      if machsimflg,
        [
        zmachsim = zmachsim_home
        pmachsim_rel_out
        xmachsim = xmachsim_home
        ymachsim = ymachsim_home
        pmachsim_rel_out
        ]
      prv_feed = maxfeedpm

      pshiftcancel

      coolant$ = sav_coolant

pretract0l       #End of tool path, null toolchange, lathe
      sg00 = strl
      sg01 = strl

      phsm_off
      ptlen_off

      sav_coolant = coolant$
      #if startop | xformop,               #Uncomment to turn coolant off
      #  [
      #  if mr7$ > 0 & mr7$ < 3, coolant$ = 0
      #  ]
      #else,
      #  [
      #  if mr8$ > 0 & mr8$ < 3, coolant$ = 0
      #  ]
      if coolant$ <> prv_coolant$, coolant$ = 0

      ##if nextop$ = 1003,                 #Uncomment this line to leave coolant on until eof unless
      ##  [                                #  explicitely turned off through a canned text edit
      #  if all_cool_off,
      #    [
      #    #all coolant off with a single off code here
      #    if coolant_on, pbld, pn, *sall_cool_off, pe
      #    coolant_on = 0
      #    ]
      #  else,
      #    [
      #    local_int = 0
      #    coolantx = 0
      #    while local_int < 20 & coolant_on > 0,
      #      [
      #      coolantx = and(2^local_int,coolant_on)
      #      local_int = local_int + 1
      #      if coolantx > 0,
      #        [
      #        coolantx = local_int
      #        pbld, pn, scoolantx, pe
      #        ]
      #      coolantx = 0
      #      ]
      #    coolant_on = 0
      #    ]
      ##  ]

      #cc_pos is reset in the toolchange here
      sav_cc_pos = cc_pos$
      cc_pos$ = 0
      if convert_rpd$ = 1,
        [
        gcode$ = 1
        feed = maxfeedpm
        ipr_type = 0
        ]
      else, gcode$ = 0
      pbld, pn, sccomp, psub_end_mny, pe
      psublaunch
      if not(cuttype = 3 & tcp), cc_pos$ = sav_cc_pos  #May apply to other scenarios

      #Output change back to G97 if not shutting off spindle
      spdir2 = fsg3(spdir$)
      if prv_css_actv$ & css_start_rpm & not(prv_spdir2 <> spdir2 | axcomb <> last_axcomb),
        [
        sav_css_actv = css_actv$
        pbld, pn, pcss_start_rpm, pe
        css_actv$ = sav_css_actv
        ]
      if prv_spdir2 <> spdir2, pspindchng1     #Spindle change, shut off spindle

      if unwind, convert_rpd$ = 1
      if startop | xformop,
        [
        if mr7$ < 3,
          [
          if last_cuttype = 3,
            [
            #pbld, pn, paxishome, pe
            ]
          ]
        ]
      else,
        [
        if mr8$ < 3,
          [
          if last_cuttype = 3,
            [
            #pbld, pn, paxishome, pe
            ]
          ]
        ]

      if unwind, convert_rpd$ = sav_convert_rpd
      pspatialcancel

      pdyndatumcancel

      #3/4-axis posts will have toolangle = 0
      gcode$ = 0
      feed = fr_pos$
      feed = feed * 10
      if startop | xformop,
        [
        if mr7$ > 0 & mr7$ < 3,
          [
          pbld, pn, pzhome, scoolant, pe
          prv_feed = maxfeedpm
          if mr7$ = 2,
            [
            pbld, pn, pxyhome, pe
            if machsimflg,
              [
              xmachsim = xmachsim_home
              ymachsim = ymachsim_home
              pmachsim_rel_out
              ]
            ]
          ]
        ]
      else,
        [
        if mr8$ > 0 & mr8$ < 3,
          [
          pbld, pn, pzhome, scoolant, pe
          prv_feed = maxfeedpm
          if mr8$ = 2,
            [
            pbld, pn, pxyhome, pe
            if machsimflg,
              [
              xmachsim = xmachsim_home
              ymachsim = ymachsim_home
              pmachsim_rel_out
              ]
            ]
          ]
        ]
      pshiftcancel

      coolant$ = sav_coolant

peof0$          #End of file for tool zero
      peof$

peof$           #End of file for non-zero tool
      eof = 1
      if machsimflg = 0, probing_ptoolend  #Mastercam Probe
      if machsimflg = 0, probing_eof #Mastercam Probe
      gcode$ = 0
      if use_home,
        [
        x_home = vequ(prv_xh$)
        x_home = x_home * xmult
        ]

      pretract
      tiltplane = 0 #forced zero of physical rotary
      pbld, pn, protunlock, pe
      pbld, pn, ptiltunlock, pe

      pn, "M145", "M129", pe
      #Spatial home, if used remove pspatial cancel above
      pfspatialcancel
      pn, *sgcode, ptiltrothome, "R0", "FQ0", *sg53, pe
      #if tiltax = 1,
      #  [
      #  pn, *sgcode, "A+Q120", "F MAX", pe
      #  pn, *sgcode, "C+Q122", "F MAX", pe
      #  ]
      #else,
      #  [
      #  pn, *sgcode, "A+Q120", "F MAX" , pe #@# "B+Q121"
      #  pn, *sgcode, "C+Q122", "F MAX", pe
      #  ]
      #prv_feed = maxfeedpm
      #pbld, pn, "CYCL DEF", "19.0", "WORKING PLANE", pe
      #pbld, pn, "CYCL DEF", "19.1", pe

      #Physical home
      #pbld, pn, *sgcode, ptiltrothome, "F MAX", *sg53, pe
      #prv_feed = maxfeedpm

      #pn, "CYCL DEF", "309", "Head Change ~", pe
      #"    ", "Q1507=+0", scomm_str, no_spc$, ";1=TIx 2=TOE 3=PM", pe      #Remove comment to force locks on at end of file
      pbld, pn, pfrotlock, pe
      pbld, pn, pftiltlock, pe

      if wcstype <> 3,
        [
        pbld, pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
        pbld, pn, "CYCL DEF", "7.1", "X+0", pe
        pbld, pn, "CYCL DEF", "7.2", "Y+0", pe
        pbld, pn, "CYCL DEF", "7.3", "Z+0", pe
        ]

      #Cycle Time Calc output
      subout$ = 0
      result = fclose(scut_time)
      #Cycle Time Calc output
      total = tot_rtime + tot_ltime
      thour_out = int(total / 60)
      total = total - (thour_out * 60)
      tmin_out = int(total)
      tsec_out = frac(total) * 60
      @tsec_out
      n$ = sav_n_number
      pn, scomm_str, no_spc$, "Tool Cycle Time - ", no_spc$, *thour_out, no_spc$, *tmin_out, no_spc$, *tsec_out, no_spc$, scomm_end, pe

      #Reset counters
      tot_rtime = 0
      tot_ltime = 0

      sbufname10$ = scut_time
      size10 = rbuf(10,0)
      rc10 = 1
      while rc10 <= size10,
        [
        sresult = rbuf(10,rc10)
        if sresult = snull, pfe
        else, sresult, pe
        ]
      result = fclose(10)
      result = remove(scut_time)

      comment$
      subout$ = 0
      mergesub$
      clearsub$
      mergeaux$
      clearaux$
      if machsimflg = 0,
        [
        mergeext$
        clearext$
        ]
      n$ = 99998
      pn, "M30", pe
      pn, "END", "PGM", *sprogname$, *smetric, pe
      if pst_return_mode$ & not(machsimflg), "(PRB_PST MC_EOF_TEXT % PRB_PST)", pe  #probe
      eof = 0

pforce_output   #Selectively force output at toolchange
      if force_output | sof,
        [
        result = force(ipr_type,ipr_type)
        result = force(absinc$,absinc$)
        result = force(gcode$,gcode$)
        result = force(plane$,plane$)
        result = force(feed,feed)
        ]

punwind         #Retract, index, approach routine
      unwind = 1

      #Setup warnings for unwind routines
      punwind_warn

      #Retract, index, approach routine
      if unwindflg,
        [
        #popstate
        startop = 0
        midop = 1
        xformop = 0
        #Run through standard retract routine
        sav_coolant_on = coolant_on
        if mr8$ = 3, mr8$ = 1

        if machsimflg,
          [
          smachsim_comment = "unwind1"
          if not(machmove_flg),
            [
            xmachsim = vequ(sav_xmachsim_mach)
            !xmachsim, !ymachsim, !zmachsim
            machmovex_flg = vequ(onex)
            machmove_flg = 1
            pmachsim_mach_out
            ]
          smachsim_comment = ""
          ]

        pretract0
        indexflg = 1
        movecnt = 0
        mr8$ = last_mr8
        #pbld, pn, protunlock, pe
        #sav_absinc = absinc$
        #absinc$ = 1
        #pbld, pn, sgabsinc, `sg28, prothome, pe
        #absinc$ = sav_absinc
        pcuttype

        if cuttype = 0 & cutpos$ = 6,
          [
          tiltplane = 0
          if not(machsimflg), tcp = sav_tcp
          else, post_tcp = sav_post_tcp
          ]

        #Calculate approach
        punwind_app

        #Approach
        gcode$ = 0
        sav_absinc = absinc$
        absinc$ = 0
        phsm1_on                                 #must remain before G43
        pshiftbefore
        protposition
        pshiftafter
        pe_cinc_calc
        ps_cinc_calc
        pbld, pn, pdyndatum, pe
        pbld, pn, ptlen, pe
        if convert_rpd$ = 1,
          [
          gcode$ = 1
          feed = maxfeedpm
          ipr_type = 0
          ]
        xabs = vequ(app1_xabs)
        #pbld, pn, sgplane, pe
        #papproachtop
        if mill5$ = 1 & vector,
          [
          sg00 = strln
          sg01 = strln
          ]
        else,
          [
          sg00 = strl
          sg01 = strl
          ]
        if cuttype = 1, papproach1    #Axis Substitution
        if cuttype = 2, papproach2    #Polar Conversion
        if cuttype = 3 | (cuttype = 0 & cutpos$ = 6), papproach3    #Simultaneous 4/5 axis (Multi-axis)
        punwind_cool  #Turn Coolant back on
        absinc$ = sav_absinc
        pcan2        #Added so M and G codes in canned text will output before phsm2_on
        phsm2_on                                 #must remain after G43

        #Move to final position (at depth)
        if cuttype = 0 & cutpos$ = 6, gcode$ = 0
        else, gcode$ = 1
        feed = fr_pos$
        xabs = vequ(app2_xabs)
        plinout
        if machsimflg,
          [
          smachsim_comment = "unwind2"
          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          tilt_machsim = aabs
          rot_machsim = cabs
          pmachsim_rel_out
          smachsim_comment = ""
          ]

        if uw_app = 0,  #If approach was to the previous point need to output the current point
          [
          vtoolx$ = vequ(prv_vtoolx$)
          x$ = vequ(prv_x$)
          pxyzcout
          plinout
          if machsimflg,
            [
            smachsim_comment = "unwind3"
            pmachsim_calc
            xmachsim = vequ(xmachsim_calc)
            machmovex_flg = vequ(zerox)
            tilt_machsim = aabs
            rot_machsim = cabs
            pmachsim_rel_out
            smachsim_comment = ""
            ]
          ]
        pcom_movea
        ]
      unwind = 0
      startop = 0
      ps_inc_calc

# Comments and Tooltable ---------------------------------------------------------------------------

ptooltable      #Write tool table, scans entire file, null tools are negative
      tnote = t$
      toffnote = tloffno$
      tlngnote = tlngno$
      spaces$ = 0
      psopnoteset
      if t$ >= 0,
        [
        if posttype$ = 2,
          [
          if fmtrnd(tcr$) > 0, pbld, pn, pspc, scomm_str, *t$, ptspace, " - ", plistcomm, " - ", *tcr$, punit, scomm_end, pe
          if fmtrnd(tcr$) = 0, pbld, pn, pspc, scomm_str, *t$, ptspace, " - ", plistcomm, " - ", scomm_end, pe
          ]
        else,
          [
          if fmtrnd(tcr$) > 0, pbld, pn, pspc, scomm_str, *t$, ptspace, " - ", plistcomm, " - ", *tldia$, punit, pdiamspc, " - ", *tcr$, punit, scomm_end, pe
          if fmtrnd(tcr$) = 0, pbld, pn, pspc, scomm_str, *t$, ptspace, " - ", plistcomm, " - ", *tldia$, punit, pdiamspc, scomm_end, pe
          ]
        ]
      #if t$ >= 0,
      #  [
      #  if fmtrnd(tcr$) > 0, pbld, pn, pspc, scomm_str, *t$, ptspace, " - ", plistcomm, " - ", *tldia$, punit, pdiamspc, " - ", *tcr$, punit, " - ", sopnote, psopnotefill, scomm_end, pe
      #  if fmtrnd(tcr$) = 0, pbld, pn, pspc, scomm_str, *t$, ptspace, " - ", plistcomm, " - ", *tldia$, punit, pdiamspc, " - ", "         - ", sopnote, psopnotefill, scomm_end, pe
      #  ]
      #if t$ >= 0,
      #  [
      #  pbld, pn, pspc, scomm_str, *t$, ptspace, " - ", plistcomm, scomm_end, pe
      #  ]
      #if t$ >= 0,
      #  [
      #  if fmtrnd(tcr$) > 0, pbld, pn, pspc, scomm_str, *tnote, "  ", *toffnote, "  ", *tlngnote, "  ", *tldia$, "  ", *tcr$, punit, "  ", sopnote, psopnotefill, scomm_end, pe
      #  if fmtrnd(tcr$) = 0, pbld, pn, pspc, scomm_str, *tnote, "  ", *toffnote, "  ", *tlngnote, "  ", *tldia$, "  ", sopnote, psopnotefill, scomm_end, pe
      #  ]
      spaces$ = sav_spc

ptoolcomment    #Comment for tool
      tnote = t$
      toffnote = tloffno$
      tlngnote = tlngno$
      tldianote = tldia$
      spaces$ = 0
      pbld, pn, pspc, scomm_str, pstrtool, " ", *tnote, " ", *toffnote, " ", *tlngnote, " ", *tldianote, scomm_end, pe
      if posttype$ = 2 & tool_op$ <> 64,
        [
        pbld, pn, pspc, scomm_str, "INSERT - ", *sinsert, "  ", "HOLDER - ", *sholder, scomm_end, pe
        ]
      if posttype$ = 1 & vers_no$ >= 14 & smholder <> snull,
        [
        pbld, pn, pspc, scomm_str, "HOLDER - ", *smholder, scomm_end, pe
        ]
      spaces$ = sav_spc

pcomment2       #Comment from manual entry
      #1005 - As Comment
      #1006 - As Code
      #1007 - As Comment with output line, change at point
      #1026 - As Code with output line, change at point
      #1008 - Operation comment

      #1051 - Machine Name
      #1052 - Group Comment
      #1053 - Group Name
      #1054 - File Descriptor

      spaces$ = 0
      scomm$ = ucase(scomm$)
      #if sof & gcode$ >= 1051, pbld, pn, pspc, scomm_str, scomm$, scomm_end, pe
      if man_ent_com_flg | (toolchng0 & not(startop)) | (tool_op$ = 114 & not(toolchng | sof | eof | (toolchng0 & startop))),
        [
        if gcode$ = 1005,
          [
          if scomm$ = snull, pfe
          else, pbld, pn, pspc, scomm_str, scomm$, scomm_end, pe
          ]
        if gcode$ = 1006,
          [
          if scomm$ = snull, pfe
          else, pbld, pn, pspc, scomm$, pe
          ]
        ]
      if gcode$ = 1007, scomm_str, scomm$, scomm_end
      if gcode$ = 1026, scomm$
      if gcode$ = 1008 & header = 0 & not(tool_op$ > 213 & tool_op$ < 220), pbld, pn, pspc1, "* - ", scomm$, pe
      if gcode$ = 1008, scomm_sav = ucase(scomm$)
      spaces$ = sav_spc

pmanual_entry_out #Output for manual entry
      sman_ent_text = ucase(sman_ent_text)
      if man_ent_type = 1006, pbld, pn, [if omitseq$ = 0, pspc1], sman_ent_text, pe
      else, pbld, scomm_str, no_spc$, sman_ent_text, no_spc$, scomm_end, pe

pcomment3       #Comment from manual entry
      psopnoteset
      if toolchng,
        [
        spaces$ = 0
        pn, pspc, scomm_str, "OPERATION NO - ", *opmgr_opno, scomm_end, pe
        #pn, pspc, scomm_str, "OPERATION TYPE - ", sopnote, scomm_end, pe
        pn, pspc, scomm_str, "AXIS COMBINATION - ", *axcomb, scomm_end, pe
        #if swcsplname <> snull, pn, pspc, scomm_str, "WCS NAME - ", swcsplname, scomm_end, pe
        #if swcsplcomm <> snull, pn, pspc, scomm_str, "WCS COMMENT - ", swcsplcomm, scomm_end, pe
        #if stoolplname <> snull, pn, pspc, scomm_str, "TOOLPLANE NAME - ", stoolplname, scomm_end, pe
        #if stoolplcomm <> snull, pn, pspc, scomm_str, "TOOLPLANE COMMENT - ", stoolplcomm, scomm_end, pe
        #if sconstplname <> snull, pn, pspc, scomm_str, "CPLANE NAME - ", sconstplname, scomm_end, pe
        #if sconstplcomm <> snull, pn, pspc, scomm_str, "CPLANE COMMENT - ", sconstplcomm, scomm_end, pe
        #if stpgrpname <> snull, pn, pspc, scomm_str, "TOOLPATH GROUP - ", stpgrpname, scomm_end, pe
        #if opcode$ <> 3 & opcode$ <> 16,
        #  [
        #  if opcode$ = 4, pn, pspc, scomm_str, "COMPENSATION TYPE - ", *spockcomp_type, scomm_end, pe
        #  else, pn, pspc, scomm_str, "COMPENSATION TYPE - ", *scomp_type, scomm_end, pe
        #  ]
        spaces$ = sav_spc
        ]
      if toolchng0 & startop,
        [
        spaces$ = 0
        pn, pspc, scomm_str, "OPERATION NO - ", *opmgr_opno, scomm_end, pe
        #pn, pspc, scomm_str, "OPERATION TYPE - ", sopnote, scomm_end, pe
        pn, pspc, scomm_str, "AXIS COMBINATION - ", *axcomb, scomm_end, pe
        #if swcsplname <> snull, pn, pspc, scomm_str, "WCS NAME - ", swcsplname, scomm_end, pe
        #if swcsplcomm <> snull, pn, pspc, scomm_str, "WCS COMMENT - ", swcsplcomm, scomm_end, pe
        #if stoolplname <> snull, pn, pspc, scomm_str, "TOOLPLANE NAME - ", stoolplname, scomm_end, pe
        #if stoolplcomm <> snull, pn, pspc, scomm_str, "TOOLPLANE COMMENT - ", stoolplcomm, scomm_end, pe
        #if sconstplname <> snull, pn, pspc, scomm_str, "CPLANE NAME - ", sconstplname, scomm_end, pe
        #if sconstplcomm <> snull, pn, pspc, scomm_str, "CPLANE COMMENT - ", sconstplcomm, scomm_end, pe
        #if stpgrpname <> snull, pn, pspc, scomm_str, "TOOLPATH GROUP - ", stpgrpname, scomm_end, pe
        #if opcode$ <> 3 & opcode$ <> 16,
        #  [
        #  if opcode$ = 4, pn, pspc, scomm_str, "COMPENSATION TYPE - ", *spockcomp_type, scomm_end, pe
        #  else, pn, pspc, scomm_str, "COMPENSATION TYPE - ", *scomp_type, scomm_end, pe
        #  ]
        spaces$ = sav_spc
        ]
      if toolchng0 & op_id$ = last_op_id & opcode$ = 4,
        [
        spaces$ = 0
        #if opcode$ <> 3 & opcode$ <> 16,
        #  [
        #  if opcode$ = 4, pn, pspc, scomm_str, "COMPENSATION TYPE - ", *spockcomp_type, scomm_end, pe
        #  else, pn, pspc, scomm_str, "COMPENSATION TYPE - ", *scomp_type, scomm_end, pe
        #  ]
        spaces$ = sav_spc
        ]

pstock     #Comment amount of stock to leave
      spaces$ = 0
      if opcode$ = 13 | opcode$ = 14,
        [
        if tool_op$ = 132,
          [
          #pn, pspc, scomm_str, "TOOLPATH - ", *stoper, scomm_end, pe
          #if vers_no$ > 20, pstockinfo  #unpound to get 2019 and above stock to leave comments
          if vers_no$ < 20, pn, pspc, scomm_str, "STOCK LEFT ON WALLS = ", *stock_walls, scomm_end, pe
          if vers_no$ < 20, pn, pspc, scomm_str, "STOCK LEFT ON FLOORS = ", *stock_floors, scomm_end, pe
          ]
        else,
          [
          #pn, pspc, scomm_str, "TOOLPATH - ", *stoper, scomm_end, pe
          pn, pspc, scomm_str, "STOCK LEFT ON DRIVE SURFS = ", *stock, scomm_end, pe
          if check <> 0, pn, pspc, scomm_str, "STOCK LEFT ON CHECK SURFS = ", *check, scomm_end, pe
          ]
        ]
      spaces$ = sav_spc

pstockinfo #Stock information from stockinfo query
      stck_avoid = 0
      while stck_avoid < 2,
        [
        rowctr = 0
        stcktolv = "TEMP"
        while stcktolv <> snull,
          [
          #stcktolv = stockinfo(stck_avoid,op_id$,rowctr)  #unpound to get 2019 and above stock to leave comments
          if stcktolv <> snull,
            [
            rowctr = rowctr + 1
            wall_stock = rpar(stcktolv,7)
            counter = 1
            while counter < 8,
              [
              result = strstr(" ", stcktolv)
              srowname = brksps(end_str_ix$,stcktolv)
              stcktolv = srowname
              counter = counter + 1
              ]
            srowname = ucase(srowname)
            spaces$ = 0
            if num_ent, pn, pspc, scomm_str, "NAME = ", *srowname, " - WALL STOCK = ", *wall_stock, " - FLOOR STOCK = ", *floor_stock, scomm_end, pe
            spaces$ = sav_spc
            ]
          ]
        stck_avoid = stck_avoid + 1
        ]

ppostcompcomment #Output comment if postcomp is used
      if postcomp = 1,
        [
        complgth = pivotdis + toollen
        spaces$ = 0
        #pn, pspc, scomm_str, "POSTED WITH ", *pivotdis, " PIVOT DISTANCE", scomm_end, pe
        pn, pspc, scomm_str, "POSTED WITH ", *toollen, " TOOL GAUGE LENGTH", scomm_end, pe
        pn, pspc, scomm_str, "POSTED WITH ", *complgth, " TOTAL COMP LENGTH", scomm_end, pe
        spaces$ = sav_spc
        ]

pcomment$       #Comment from manual entry (must call pcomment2 if booleans)
      pcomment2

pcomment_probe$ #Renishaw probe 'comment' output postblock
      scomm$, pe

pstrtool        #Comment for tool
      if strtool$ <> snull,
        [
        strtool$ = ucase(strtool$)
        *strtool$, " "
        ]

ptoolcomm       #Comments from tool library
      spaces$ = 0
      strtool$ = ucase(strtool$)
      if strtool$ <> snull, pspc1, "* - ", *strtool$
      else, pspc1, "* - ", "DEFINE TOOL NAMES"
      spaces$ = sav_spc

plistcomm       #Comments from tool library
      strtool$ = ucase(strtool$)
      if strtool$ = snull, strtool$ = snocomm
      *strtool$

      nstrlen = strlen(strtool$)
      counter = 1
      while counter <= (20-nstrlen), pspace

pspace          #Creates spaces based on tool comment length
      " "
      counter = counter + 1

ptspace         #Creates spaces based on tool number
      if t$ < 10, "  "
      if t$ >= 10 & t$ < 100, " "

phspace         #Creates spaces based on length offset number
      if tlngno$ < 10, "  "
      if tlngno$ >= 10 & tlngno$ < 100, " "

pdspace         #Creates spaces based on diameter offset number
      if tloffno$ < 10, "  "
      if tloffno$ >= 10 & tloffno$ < 100, " "

pdiamspc        #Creates spaces based on diameter
      #if tldia$ < 10, "  "

psopnotefill    #Comments from tool library
      nstrlen = strlen(sopnote)
      counter = 1
      while counter <= (17-nstrlen), pdot

pdot            #Creates dot fill based on tool comment length
      "."
      counter = counter + 1

pspc            #Creates spaces based tool level setting
      if sav_spc = 1 & spaces$ = 0 & omitseq$ = no$, " "

pspc1           #Creates spaces based tool level setting
      if sav_spc = 1 & spaces$ = 0, " "

psopnoteset     #Operation note
      if opcode$ = 3 | opcode$ = 16,
        [
        if nextdc$ >= 0, !sdrnote
        sopnote = sdrnote
        ]
      else,
        [
        if tool_op$ = 132,  #Highspeed Surface
          [
          !sopnotehst
          sopnote = sopnotehst
          ]
        else, sopnote = frange(100,tool_op$)
        ]

punit           #Tool unit
      if met_tool$, "mm"
      else, 34

pparameter_custom  #Customizable portion of parameter table
      #"-->pparameter", ~prmcode$, "  ", ~sparameter$, pe

pwrttparam_custom  #Customizable portion of information from parameters
      #"-->pwrttparam", ~prmcode$, "  ", ~sparameter$, pe

pmachineinfo_custom  #Customizable portion of machine information from parameters
      #"-->pmachineinfo", ~prmcode$, "  ", ~sparameter$, pe

pdrill_time        #Calculate the approximate time to preform drilling operations
      #"!", ~initht_i, ~initht_a, ~refht_a, ~refht_i, ~tosz_a, ~tosz_i, ~depth_i, ~depth_a, pe
      #"!", ~peck1$, ~peck2$, ~peckclr$, ~retr$, ~dwell$, ~shftdrl$, pe

      if cuttime_out,
        [
        len = 0
        rap_len = 0
        lin_len = 0
        dwell_time = 0
        cur_depth = 0
        #rapid to XY position
        dx = xabs - prv_xabs
        dy = yabs - prv_yabs
        dz = 0
        rap_len = rap_len + sqrt(dx^2 + dy^2 + dz^2)
        #Rapid to retract plane
        dx = 0
        dy = 0
        dz = refht_i
        rap_len = rap_len + sqrt(dx^2 + dy^2 + dz^2)

        if drillcyc$ = 1 | drillcyc$ = 2 | (drillcyc$ = 3 & peck1$),        #Peck, chip break, and peck tap cycles
          [
          peck_cnt = 1
          if peck1$ > 0 | peck2$ > 0,
            [
            if peck2$ = 0,
              [
              npeck = int((drl_ref_zabs - drl_depth_zabs)/peck1$)
              if frac((drl_ref_zabs - drl_depth_zabs)/peck1$) > 0, npeck = npeck + 1
              ]
            else,
              [
              result = drl_ref_zabs - drl_depth_zabs
              if result <= peck1$, npeck = 1
              else,
                [
                result = result - peck1$
                npeck = int((result)/peck2$) + 1
                if frac((result)/peck2$) > 0, npeck = npeck + 1
                ]
              ]
            ]
          else, npeck = 1
          cur_depth = refht_a
          while peck_cnt <= npeck,
            [
            #linear move to peck depth
            if peck_cnt = 1 | (peck_cnt > 1 & peck2$ = 0),
              [
              if cur_depth - depth_a > peck1$, dz = peck1$
              else, dz = cur_depth - depth_a
              ]
            else,
              [
              if cur_depth - depth_a > peck2$, dz = peck2$
              else, dz = cur_depth - depth_a
              ]
            cur_depth = cur_depth - dz
            if peck_cnt <> 1, dz = dz + peckclr$
            lin_len = lin_len + sqrt(dx^2 + dy^2 + dz^2)
            #dwell at bottom of peck
            if dwell$, dwell_time = dwell_time + (dwell$/60)
            #rapid to refht/ by retract amount
            if drillcyc$ = 1 | (drillcyc$ = 3 & peck1$), dz = refht_i + (tosz_a - cur_depth)
            else, dz = retr$
            if (drillcyc$ = 3 & peck1$), lin_len = lin_len + sqrt(dx^2 + dy^2 + dz^2)
            else, rap_len = rap_len + sqrt(dx^2 + dy^2 + dz^2)
            if peck_cnt <> npeck,
              [
              #rapid back down to peck clearance height
              if drillcyc$ = 1 | (drillcyc$ = 3 & peck1$), dz = refht_a - (cur_depth + peckclr$)
              else, dz = refht_a - peckclr$
              if (drillcyc$ = 3 & peck1$), lin_len = lin_len + sqrt(dx^2 + dy^2 + dz^2)
              else, rap_len = rap_len + sqrt(dx^2 + dy^2 + dz^2)
              ]
            peck_cnt = peck_cnt + 1
            ]
          ]
        else,
          [
          if drillcyc$ <> 8,                     #Do not include external subprogram
            [
            #feed to depth
            dz = depth_i
            lin_len = lin_len + sqrt(dx^2 + dy^2 + dz^2)
            #dwell at bottom of hole
            if dwell$, dwell_time = dwell_time + (dwell$/60)
            #rapid back to reference height
            dz = depth_i + refht_i
            if drillcyc$ = 3 | drillcyc$ = 4, lin_len = lin_len + sqrt(dx^2 + dy^2 + dz^2)  #Tap cycles and pbore1 feed back to retract height
            else, rap_len = rap_len + sqrt(dx^2 + dy^2 + dz^2)
            ]
          ]
        if posttype$ = 1 | (posttype$ = 2 & css_actv$ = 0 & ipr_type <> 3), feed_rpm = fr_pos$
        else,
          [
          #if posttype is 2, X has to be on center, so if css feed will be maxss$, else will be entered speed
          if css_actv$, css_speed_rpm = abs(maxss$)
          else, css_speed_rpm = abs(ss$)
          feed_rpm = fr_pos$ * css_speed_rpm
          ]
        trtime = rap_len / pst_rpd_fr$
        tltime = (lin_len / feed_rpm) + dwell_time

        #Add rapid/linear time to total cut time
        tot_rtime = tot_rtime + trtime
        tot_ltime = tot_ltime + tltime
        ]

# --------------------------------------------------------------------------------------------------
# MACHINE/CONTROL VARIABLE INITIALIZATIONS AND SETUP
# --------------------------------------------------------------------------------------------------

# Misc G/M Code Strings ----------------------------------------------------------------------------
strg00         : "L"
strg01         : "L"
strg02         : "DR-"
strg03         : "DR+"
strg17         : "Z"
strg18         : "Y"
strg19         : "X"
strg41         : "RL"
strg42         : "RR"
sg43           : ""      #Tool Length Offset
sg43_4         : "M128 F8000"  #Tool Length Offset (TCP)
sg49           : "M129"  #Cancel tool length offset
strns_mir_on   : "G51.1" #Programmable mirror image code
strns_mir_off  : "G50.1" #Programmable mirror image cancel code
strns_rot_on   : "G68"   #Coordinate System Rotation
strns_rot_off  : "G69"   #Coordinate System Rotation Cancel
sg112          : "G12.1" #Mill-turn Face Interpolation On
sg113          : "G13.1" #Mill-turn Face Interpolation Off
sg107_on       : "G07.1" #Mill-turn OD Rotary Interpolation On
sg107_off      : "G07.1" #Mill-turn OD Rotary Interpolation Off
sg41           : "RL"    #Radius comp
sg42           : "RR"    #Radius comp
sg41_2         : ""      #Multi-axis radius comp
sg42_2         : ""      #Multi-axis radius comp
sg50           : "G50"   #Max spindle speed clamp

sm29           : ""      #Rigid Tapping

srad           : "R"     #Positive Radius
srminus        : "R-"    #Negative Radius

strln          : "LN"
strspa         : "SPA"
strspb         : "SPB"
strspc         : "SPC"
strdwell       : "DWELL"
strix          : "IX"
striy          : "IY"
striz          : "IZ"

strq200        : "Q200="
strq201        : "Q201="
strq202        : "Q202="
strq203        : "Q203="
strq204        : "Q204="
strq205        : "Q205="
strq206        : "Q206="
strq207        : "Q207="
strq208        : "Q208="
strq209        : "Q209="
strq210        : "Q210="
strq211        : "Q211="
strq212        : "Q212="
strq213        : "Q213="
strq214        : "Q214="
strq239        : "Q239="
strq249        : "Q249="
strq250        : "Q250="
strq251        : "Q251="
strq252        : "Q252="
strq253        : "Q253="
strq254        : "Q254="
strq255        : "Q255="
strq256        : "Q256="
strq257        : "Q257="
strq258        : "Q258="
strq259        : "Q259="
strq334        : "Q334="
strq335        : "Q335="
strq336        : "Q336="
strq342        : "Q342="
strq351        : "Q351="
strq355        : "Q355="
strq358        : "Q358="
strq359        : "Q359="
strq379        : "Q379="
strq403        : "Q403="

# Cantext String Definitions -----------------------------------------------------------------------
sm00           : "M0"
sm01           : "M1"
strtextno      : ""
strcantext     : ""

# G Code String Selects ----------------------------------------------------------------------------
sg00           : "L"         #Rapid
sg01           : "L"         #Linear feed
sg02           : "DR-"       #Circular interpolation CW
sg03           : "DR+"       #Circular interpolation CCW
sg04           : "DWELL"     #Dwell
sgcode         : ""          #Target for string

fstrsel sg00 gcode$ sgcode 5 -1
# --------------------------------------------------------------------------------------------------
# Select work plane G code
sg17           : "Z"         #XY plane code
sg19           : "X"         #YZ plane code
sg18           : "Y"         #XZ plane code
sgplane        : ""          #Target string

fstrsel sg17 plane$ sgplane 3 -1
# --------------------------------------------------------------------------------------------------
#Select english/metric code
sg20           : "INCH"      #Inch code
sg21           : "MM"        #Metric code
smetric        : ""          #Target string

fstrsel sg20 met_tool$ smetric 2 -1
# --------------------------------------------------------------------------------------------------
# Cutter compensation G code selection
scc0           : "R0"        #Cancel cutter compensation
scc1           : "RL"        #Cutter compensation left
scc2           : "RR"        #Cutter compensation right
sccomp         : ""          #Target for string

fstrsel scc0 cc_pos$ sccomp 3 -1
# --------------------------------------------------------------------------------------------------
# Canned drill cycle string select
sg81           : ""          #drill      - no dwell
sg81d          : ""          #drill      - with dwell
sg83           : ""          #peck drill - no dwell
sg83d          : ""          #peck drill - with dwell
sg73           : ""          #chip break - no dwell
sg73d          : ""          #chip break - with dwell
sg84           : ""          #tap        - right hand
sg84d          : ""          #tap        - left hand
sg85           : ""          #bore #1    - no dwell
sg85d          : ""          #bore #1    - with dwell
sg86           : ""          #bore #2    - no dwell
sg86d          : ""          #bore #2    - with dwell
sgm1           : ""          #misc #1    - no dwell
sgm1d          : ""          #misc #1    - with dwell
sgm2           : ""          #misc #2    - no dwell
sgm2d          : ""          #misc #2    - with dwell
sgc9           : ""          #custom #9  - no dwell
sgc9d          : ""          #custom #9  - with dwell
sgdrill        : ""          #Target for string

fstrsel sg81 drlgsel sgdrill 18 -1
# --------------------------------------------------------------------------------------------------
# Select incremental or absolute G code
sg90           : ""          #Absolute code
sg91           : ""          #Incremental code
sgabsinc       : ""          #Target string

fstrsel sg90 absinc$ sgabsinc 2 -1
# --------------------------------------------------------------------------------------------------
# Feed mode G code selection
sg94           : "M137"      #UPM #M137
sg94d          : "M137"      #DPM, See pfcalc_deg if you use another gcode
sg93           : ""          #Inverse
sg95           : "M136"      #UPR        #set with mi6$ #M136
sgfeed         : ""          #Target for string

fstrsel sg94 ipr_type sgfeed 4 -1
# --------------------------------------------------------------------------------------------------
#Canned drill cycle reference height
sg98           : ""          #Reference at initht
sg99           : ""          #Reference at refht
sgdrlref       : ""          #Target for string

fstrsel sg98 drillref sgdrlref 2 -1
# --------------------------------------------------------------------------------------------------
# RPM/CSS code selection
sg97           : "G97"       #RPM
sg96           : "G96"       #CSS
sg9697         : ""          #Target for string

fstrsel sg97 css_actv$ sg9697 2 -1
# --------------------------------------------------------------------------------------------------
#Home position G-code selection
sg53           : "M91"       #Machine coordinate system
sg28           : "M91"       #Machine home position through point
sg30           : "M92"       #Secondary home position through point
sgabshm        : ""          #Absolute home position, work coordinate system
sghome         : ""          #Target for string

fstrsel sg53 home_style sghome 4 -1

# M Code String Selects ----------------------------------------------------------------------------

# Generate string for spindle - Turning Spindle
sm04           : "M304"      #Spindle reverse
sm05           : "M305"      #Spindle off
sm03           : "M303"      #Spindle forward
spindle        : ""          #Target for string

fstrsel sm04 spdir2 spindle 3 -1
# --------------------------------------------------------------------------------------------------
# Generate string for spindle - Mill Spindle
sm04m          : "M04"        #Spindle reverse
sm05m          : "M05"        #Spindle off
sm03m          : "M03"        #Spindle forward
spindlem       : ""          #Target for string

fstrsel sm04m spdir2 spindlem 3 -1
# --------------------------------------------------------------------------------------------------
# Coolant M code selection
sm09           : "M09"       #Coolant Off (Use sm09_0 through sm09_2)
sm08           : "M08"       #Coolant Flood
sm08_1         : "M08"       #Coolant Mist
sm08_2         : "M07"       #Coolant Tool
sm09_0         : "M09"       #Coolant Flood Off
sm09_1         : "M09"       #Coolant Mist Off
sm09_2         : "M09"       #Coolant Tool Off
scoolant       : ""          #Target for string

fstrsel sm09 coolant$ scoolant 7 -1
# --------------------------------------------------------------------------------------------------
# Coolant output code selection for X style coolant
# Note: To enable X style coolant, click on the General Machine Parameters icon
#   in the Machine Definition Manager, Coolant tab, disable first check box
#   Output of X style coolant commands in this post is controlled by pcan, pcan1, & pcan2
#   This string select is setup using the "Coolant Commands" tab in the "General Machine Parameters"
scool0         : ""          #Coolant 1 on value
scool1         : ""          #Coolant 1 off value
scool2         : ""          #Coolant 2 on value
scool3         : ""          #Coolant 2 off value
scool4         : ""          #Coolant 3 on value
scool5         : ""          #Coolant 3 off value
scool6         : ""          #Coolant 4 on value
scool7         : ""          #Coolant 4 off value
scool8         : ""          #Coolant 5 on value
scool9         : ""          #Coolant 5 off value
scool10        : ""          #Coolant 6 on value
scool11        : ""          #Coolant 6 off value
scool12        : ""          #Coolant 7 on value
scool13        : ""          #Coolant 7 off value
scool14        : ""          #Coolant 8 on value
scool15        : ""          #Coolant 8 off value
scool16        : ""          #Coolant 9 on value
scool17        : ""          #Coolant 9 off value
scool18        : ""          #Coolant 10 on value
scool19        : ""          #Coolant 10 off value
scoolantx      : ""          #Target for string

fstrsel scool0 coolantx scoolantx 20 -1
# --------------------------------------------------------------------------------------------------
#X coolant has the option - First coolant off command shuts off ALL coolant options
sall_cool_off  : ""          #Coolant off command output with all_cool_off
# --------------------------------------------------------------------------------------------------
# Rotation direction, rot_index
sindx_cwr      : "M22"       #Rotate CW code
sindx_ccwr     : "M21"       #Rotate CCW code
sindx_mcr      : ""          #Target for string

fstrsel sindx_cwr indx_mcr sindx_mcr 2 -1
# --------------------------------------------------------------------------------------------------
# Tilt direction, tilt_index
sindx_cwt      : "M22"       #Rotate CW code
sindx_ccwt     : "M21"       #Rotate CCW code
sindx_mct      : ""          #Target for string

fstrsel sindx_cwt indx_mct sindx_mct 2 -1
# --------------------------------------------------------------------------------------------------
#Rotary Locking M-Codes
sm10           : "M65"       #Lock On
sm11           : "M64"       #Brake/Mid-Lock On
sm12           : "M55"       #Lock Off
srotlock       : ""          #Target String

fstrsel sm10 rotlock srotlock 3 -1
# --------------------------------------------------------------------------------------------------
#Tilt Locking M-Codes
sm20           : "M66"       #Lock On
sm21           : "M65"       #Brake/Mid-Lock On
sm22           : "M56"       #Lock Off
stiltlock      : ""          #Target String

fstrsel sm20 tiltlock stiltlock 3 -1
# --------------------------------------------------------------------------------------------------
#Milling/Turning Mode Selection M-Codes - Main Spindle
sm120          : "FUNCTION MODE MILL"      #Milling
sm121          : "FUNCTION MODE TURN"      #Turning
sm122          : "FUNCTION MODE TURN"      #Turning
smodesel       : ""          #Target String

fstrsel sm120 modesel smodesel 3 -1
# --------------------------------------------------------------------------------------------------
#Radius/Diameter Selection M-Codes
sm130          : ""
sm131          : ""  #Radius
sm132          : ""  #Diameter
sdiasel        : ""          #Target String

fstrsel sm130 diasel sdiasel 3 -1
# --------------------------------------------------------------------------------------------------
# Define the gear selection code
flktbl  1       3       #Lookup table definition - table no. - no. entries
        40      0       #Low gear range
        41      400     #Med gear range
        42      2250    #Hi gear range

# Format Statements --------------------------------------------------------------------------------
#n=nonmodal, l=leading, t=trailing, i=inc, d=delta
fs2 1   0.7 0.6     #Decimal, absolute, 7 place, default for initialize (:)
fs2 2  +0^4 0^3     #Decimal, absolute, 4/3 place
fs2 3  +0^4 0^3d    #Decimal, delta, 4/3 place
fs2 4   1 0 1 0     #Integer, not leading
fs2 5   2 0 2 0l    #Integer, force two leading
fs2 6   3 0 3 0l    #Integer, force three leading
fs2 7   4 0 4 0l    #Integer, force four leading
fs2 8   5 0 5 0l    #Integer, force five leading
fs2 9   0.1 0.1     #Decimal, absolute, 1 place
fs2 10  0.2 0.2     #Decimal, absolute, 2 place
fs2 11 +0^3 0^3     #Decimal, absolute, 3 place
fs2 12  0.4 0.4     #Decimal, absolute, 4 place
fs2 13  0.5 0.5     #Decimal, absolute, 5 place
fs2 14 +0^3 0^3d    #Decimal, delta, 3 place
fs2 15  0 1 0 0t    #Integer, force trailing inch mode
fs2 16  1 0 1 0n    #Integer, forced output
fs2 17  1.4 1.3lt   #Decimal, absolute, 4/3 trailing
fs2 22  0.4 0.3     #Decimal, absolute, 4/3 place
fs2 23  0.3 0.3     #Decimal, absolute, 3 place
fs2 24  1.4 1.3l    #Decimal, absolute, 4/3 place, leading
fs2 25 +1.7 1.7lt   #Decimal, absolute, 7 place
fs2 26  0 4 0 3t    #No decimal, absolute, 4 trailing - Full format for Ps and Qs in Fanuc
fs2 27 +0.4 0.3     #Decimal, absolute, 4/3 place, force sign
fs2 28  0.4 0.4d    #Decimal, delta, 4 place
fs2 29 +0 1 0 1t    #Integer, force trailing inch mode
fs2 30 +0^5 0^4     #Decimal, absolute, 5/4 place
fs2 31 +0^5 0^4d    #Decimal, delta, 5/4 place
fs2 32 +0^4 0^4d    #Decimal, delta, 4 place
fs2 33 +0 4 0 3     #Decimal, absolute, 4/3 place
fs2 34  1^4 1^3l    #Decimal, absolute, 4/3 place

# Variable Formatting ------------------------------------------------------------------------------
#Misc
fmt ""  4   t$          #Tool No
fmt ""  4   first_tool$ #First Tool Used
fmt ""  4   next_tool$  #Next Tool Used
fmt  "D" 4  tloffno$    #Diameter Offset No
fmt  "H" 4  tlngno$     #Length Offset No
fmt  "G" 4  g_wcs       #WCS G address
fmt ""  4   p_wcs       #WCS P address
fmt ""  4   workofs_out
fmt  "S" 4  speed       #Spindle Speed
fmt  "M" 4  gear        #Gear range
fmt ""  4   n$          #Sequence number
fmt  "R" 14 rt_cinc     #C axis position, G68
fmt  "F" 15 feed        #Feedrate
fmt "DWELL" 11 dwell$   #Dwell
fmt  "M" 5  cantext$    #Canned text
fmt "T" 24  mr2$        #HSM tol
fmt ""  4   mr3$        #HSM mode
fmt "TA" 24 mr4$        #TA value
fmt     2   toollen     #5-Axis tool length
fmt     2   pivotdis    #5-Axis pivot length
fmt     2   complgth    #5-Axis compensation length

#Mill-Turn Misc
fmt     2   rotdia$     #OD Rotary Interpolation Diameter
fmt  "C" 2  rotrad      #OD Rotary Interpolation Radius
fmt  "S" 4  speedcss    #Spindle Speed for css_start_rpm
fmt  "SMAX" 4  maxss$      #Max Spindle Speed
fmt  "T" 4  tool        #Tool number output, formatted at ptoolcall
fmt  "T" 4  nexttool    #Next tool number output, formatted at pnexttool

#Coordinate Variable Formatting
fmt  "X" 2  xabs        #X position output
fmt  "Y" 2  yabs        #Y position output
fmt  "Z" 2  zabs        #Z position output
fmt "IX" 3  xinc        #X position output
fmt "IY" 3  yinc        #Y position output
fmt "IZ" 3  zinc        #Z position output
fmt  "X" 2  x$          #X position output
fmt  "Y" 2  y$          #Y position output
fmt  "Z" 2  z$          #Z position output
fmt  "X" 2  drl_init_x$ #X position output
fmt  "Y" 2  drl_init_y$ #Y position output
fmt  "Z" 2  drl_init_z$ #Z position output
fmt  "X" 2  drl_ref_x$  #X position output
fmt  "Y" 2  drl_ref_y$  #Y position output
fmt  "Z" 2  drl_ref_z$  #Z position output
fmt  "X" 2  drl_tos_x$  #X position output
fmt  "Y" 2  drl_tos_y$  #Y position output
fmt  "Z" 2  drl_tos_z$  #Z position output
fmt  "X" 2  drl_depth_x$ #X position output
fmt  "Y" 2  drl_depth_y$ #Y position output
fmt  "Z" 2  drl_depth_z$ #Z position output
fmt  "X" 2  x_home      #X home position
fmt  "Y" 2  y_home      #Y home position
fmt  "Z" 2  z_home      #Z home position
fmt  "X" 2  tox$        #X position output
fmt  "Y" 2  toy$        #Y position output
fmt  "Z" 2  toz$        #Z position output
fmt  "X" 2  tox4$       #X position output
fmt  "Y" 2  toy4$       #Y position output
fmt  "Z" 2  toz4$       #Z position output
fmt  "X" 2  tox4_wcs    #X position output
fmt  "Y" 2  toy4_wcs    #Y position output
fmt  "Z" 2  toz4_wcs    #Z position output
fmt    2   t_orgin_x$  #Z position output
fmt    2   t_orgin_y$  #Z position output
fmt    2   t_orgin_z$  #Z position output
fmt    2   last_t_orgin_x #Z position output
fmt    2   last_t_orgin_y #Z position output
fmt    2   last_t_orgin_z #Z position output
fmt  "X" 2  toxout      #X position output
fmt  "Y" 2  toyout      #Y position output
fmt  "Z" 2  tozout      #Z position output
fmt  "X" 2  last_toxout #X position output
fmt  "Y" 2  last_toyout #Y position output
fmt  "Z" 2  last_tozout #Z position output
fmt  "X" 2  xtop        #X position output
fmt  "Y" 2  ytop        #Y position output
fmt  "Z" 2  ztop        #Z position output
fmt  "X" 2  xtop_g68    #X position output
fmt  "Y" 2  ytop_g68    #Y position output
fmt  "Z" 2  ztop_g68    #Z position output
fmt  "X" 2  xabs_tcp
fmt  "Y" 2  yabs_tcp
fmt  "Z" 2  zabs_tcp
fmt  "X" 2  last_xabs_tcp
fmt  "Y" 2  last_yabs_tcp
fmt  "Z" 2  last_zabs_tcp
fmt     11  cabs        #C axis position
fmt     14  cinc        #C axis position
fmt     14  movec       #C axis position
fmt     11  aabs        #A axis position
fmt     14  ainc        #A axis position
fmt     14  movea       #A axis position
fmt     16  indx_mcr    #Rotation direction calculation
fmt     16  indx_mct    #Tilt direction calculation
fmt  "I" 2  xcabs       #Arc centre, X
fmt  "J" 2  ycabs       #Arc centre, Y
fmt  "K" 2  zcabs       #Arc centre, Z
fmt  "R" 2  arcrad1     #Arc radius, start to centre
fmt  "R" 2  arcrad2     #Arc radius, end to centre
fmt     1   org_tlvecx  #Original Tool Vector X
fmt     1   org_tlvecy  #Original Tool Vector Y
fmt     1   org_tlvecz  #Original Tool Vector Z
fmt     2   ret_tlvecx  #Retract Tool Vector X
fmt     2   ret_tlvecy  #Retract Tool Vector Y
fmt     2   ret_tlvecz  #Retract Tool Vector Z
fmt "TX" 25 tlvecx_out  #Output Tool Vector X
fmt "TY" 25 tlvecy_out  #Output Tool Vector Y
fmt "TZ" 25 tlvecz_out  #Output Tool Vector Z
fmt "NX" 25 norm_tlvecx #Normal Vector X
fmt "NY" 25 norm_tlvecy #Normal Vector Y
fmt "NZ" 25 norm_tlvecz #Normal Vector Z
fmt  "A" 11 spa         #Spatial angle about X
fmt  "B" 11 spb         #Spatial angle about Y
fmt  "C" 11 spc         #Spatial angle about Z
fmt  "A" 11 spa_out     #Spatial angle about X
fmt  "B" 11 spb_out     #Spatial angle about Y
fmt  "C" 11 spc_out     #Spatial angle about Z
fmt     2   planerot    #Plane rotation, Mastercam toolplane vs. machine toolplane
fmt     25  domain      #Domain of X (arccos function)
fmt     11  asav
fmt     11  csav
fmt     11  uw_asav
fmt     11  uw_csav

#Arc Variable Formatting
fmt  "X" 3  iout        #Arc center description in X
fmt  "Y" 3  jout        #Arc center description in Y
fmt  "Z" 3  kout        #Arc center description in Z
fmt  "K" 2  lead        #Helical lead
fmt  "R" 2  arcrad$     #Arc Radius
fmt "IPA" 11 sweep$     #Arc sweep angle

#Program Number Formatting
fmt ""  4   progno$     #Program number
fmt ""  4   main_prg_no$ #Program number
fmt ""  4   sub_prg_no$ #Program number
fmt ""  4   sub_prg_call #Program number
fmt  "X" 2  sub_trnsx$  #Rotation point
fmt  "Y" 2  sub_trnsy$  #Rotation point
fmt  "Z" 2  sub_trnsz$  #Rotation point

#Drill Formatting
fmt     2   peck1$      #First peck increment (positive)
fmt     2   peck2$      #Second or last peck (positive)
fmt     2   peckclr$    #Safety distance
fmt     2   retr$       #Retract height
fmt     2   shftdrl$    #Fine bore tool shift
fmt     2   zdrl$       #Depth of drill point
fmt     4   n_tap_thds$ #Number of threads per inch (tpi) / Pitch (mm)
fmt     2   pitch       #Tap pitch (inches per thread)
fmt     2   initht_a    #Initial height
fmt     2   initht_i    #Initial height
fmt     2   refht_a     #Reference height
fmt     2   refht_i     #Reference height
fmt     2   tosz_a      #Drilling top of stock
fmt     2   tosz_i      #Drilling top of stock
fmt     2   depth_a     #Drilling depth
fmt     2   depth_i     #Drilling depth
fmt     2   drl_prm1$
fmt     2   drl_prm2$
fmt     2   drl_prm3$
fmt     2   drl_prm4$
fmt     4   drl_prm5$
fmt    11   drl_prm6$
fmt     2   drl_prm7$
fmt     2   drl_prm8$
fmt     2   drl_prm9$
fmt     2   drl_prm10$

fmt     2   last_peck1
fmt     2   last_peck2
fmt     2   last_peckclr
fmt     2   last_retr
fmt    11   last_dwell
fmt     2   last_shftdrl
fmt     2   last_initht_a
fmt     2   last_initht_i
fmt     2   last_refht_a
fmt     2   last_refht_i
fmt     2   last_tosz_a
fmt     2   last_depth_a
fmt     2   last_depth_i
fmt     2   last_drl_prm1
fmt     2   last_drl_prm2
fmt     2   last_drl_prm3
fmt    15   last_drl_prm4
fmt     2   last_drl_prm5
fmt    11   last_drl_prm6
fmt     2   last_drl_prm7
fmt     2   last_drl_prm8
fmt     2   last_drl_prm9
fmt     2   last_drl_prm10

fmt  "X" 2  drl_init_xabs  #Initial drill height X
fmt  "Y" 2  drl_init_yabs  #Initial drill height Y
fmt  "Z" 2  drl_init_zabs  #Initial drill height Z
fmt  "X" 2  drl_ref_xabs   #Reference drill height X
fmt  "Y" 2  drl_ref_yabs   #Reference drill height Y
fmt  "Z" 2  drl_ref_zabs   #Reference drill height Z
fmt  "X" 2  drl_tos_xabs   #Top of stock drill height X
fmt  "Y" 2  drl_tos_yabs   #Top of stock drill height Y
fmt  "Z" 2  drl_tos_zabs   #Top of stock drill height Z
fmt  "X" 2  drl_depth_xabs #Drill depth X
fmt  "Y" 2  drl_depth_yabs #Drill depth Y
fmt  "Z" 2  drl_depth_zabs #Drill depth Z

#Misc Formatting
fmt  "X" 2  x_blkform_min
fmt  "Y" 2  y_blkform_min
fmt  "Z" 2  z_blkform_min
fmt  "X" 2  x_blkform_max
fmt  "Y" 2  y_blkform_max
fmt  "Z" 2  z_blkform_max

fmt   "" 4  last_tool_num

fmt  "Q1502=" 11 aout_a
fmt  "Q1502=+Q" 30 aout_a2
fmt  "Q1503="  2 reposition
fmt  "Q1525="  2 tool_weight

fmt  "B"      11 babs

fmt      2  dist_x
fmt      2  dist_y
fmt      2  dist_z

fmt  "R" 2  stck_rad
fmt  "L" 2  stck_length

fmt  "R" 2  tlrad$

fmt     34  m140dist

fmt      2  start_rad
fmt      2  clear_side
fmt      2  clear_height

fmt      4  b6_workofs_out
fmt      4  b6_op_id
fmt      2  b6_xoffset
fmt      2  b6_yoffset
fmt      2  b6_zoffset

fmt      4  axcomb

fmt     5 thour_out ":"
fmt     5 tmin_out  ":"
fmt     5 tsec_out

#misc initialization
last_tool_num : 0
hel_count  : 0
m140flg    : 0
m140dist   : 100
xyhomeflg  : 1
spnd_frc_flg : 0

odid         : 0
orient_out   : 0

start_xabs   : 0
start_yabs   : 0
start_zabs   : 0

stock_comp_id : 0

a_resolution   : 0.001
c_resolution   : 0.001

bsav       : 0
tilt_bsav_flg : 0
b_axis_table : 0

last_syncaxis : 0
sav_n_number  : 0

#Cut time variables
tol            : 0.0001      #Tolerence for feed rates set to zero
dx             : 0           #Delta x
dy             : 0           #Delta y
dz             : 0           #Delta z
tltime         : 0           #Feed time
trtime         : 0           #Rapid time
total          : 0           #Total machine time
tot_ltime      : 0           #Total FEED time
tot_rtime      : 0           #Total RAPID time
len            : 0           #Length for calculation
llen           : 0
rlen           : 0
avg_xpos       : 0
css_speed_rpm  : 0
feed_rpm       : 0
cuttime_out    : 1
thour_out      : 0
tmin_out       : 0
tsec_out       : 0
temp_feed      : 0
arc_len        : 0
rap_len        : 0
lin_len        : 0
dwell_time     : 0
cur_depth      : 0
peck_cnt       : 0
npeck          : 0

#Misc Strings
serr_plane     : "ERROR - POST CANNOT ACHIEVE PROGRAMMED TOOL PLANE - POST WILL EXIT"
stiltlim_baxis_warn : "WARNING - TILT LIMITS EXCEEDED FOR SPECIFIED B-AXIS POSITION. POST OVERRIDING B-AXIS POSITION."
stiltlim_baxis_error : "ERROR - POSITION UNACHEIVABLE FOR GIVEN B-AXIS POSITION IN MULTIAX OPERATION."

serr_lmd       : "ERROR - LATHE MACHINE DEFINITION ONLY USED TO PROGRAM TURNING OPERATIONS - MILL OPERATION DETECTED"
scut_time      : ""

#Misc Questions
fq 8 m140dist "Enter M140 retraction distance for B > 90"
fq 9 xyhomeflg "Move in XY M91 at toolchange? [0=No,1=Yes]"
fq 10 b_axis_table "B-Axis Table [0=Off,1=Active] (Only applies to A/C Axis Combination)"

# String Setup -------------------------------------------------------------------------------------

pset_rot_label  #Set rotary axis label
      result = nwadrs(srot_label,cabs)
      result = nwadrs(srot_label,cinc)
      if use_g_inc = 0, result = nwadrs(strrotinc,cinc)

pset_rot_label_sign #Set rotary axis label for signed output direction
      if not(use_rotmcode),
        [
        if indx_mcr = 0 & absinc$ = 0, srot_label = sav_srot_label + sminus
        else, srot_label = sav_srot_label
        ]
      result = nwadrs(srot_label,cabs)
      result = nwadrs(srot_label,cinc)
      if use_g_inc = 0, result = nwadrs(strrotinc,cinc)

pset_tilt_label #Set tilt axis label
      result = nwadrs(stilt_label,aabs)
      result = nwadrs(stilt_label,ainc)
      if use_g_inc = 0, result = nwadrs(strtiltinc,ainc) #There is no incremental string for A and B addresses!

pset_tilt_label_sign #Set tilt axis label for signed output direction
      if not(use_tiltmcode),
        [
        if indx_mct = 0 & absinc$ = 0, stilt_label = sav_stilt_label + sminus
        else, stilt_label = sav_stilt_label
        ]
      result = nwadrs(stilt_label,aabs)
      result = nwadrs(stilt_label,ainc)
      if use_g_inc = 0, result = nwadrs(strtiltinc,ainc) #There is no incremental string for A and B addresses!

# --------------------------------------------------------------------------------------------------
# MACHINE/CONTROL SPECIFIC BLOCKS
# --------------------------------------------------------------------------------------------------

# Motion Prep Blocks -------------------------------------------------------------------------------

ptcpsetup       #Set tcp based on current cuttype, dyndatum, tiltplane settings
      #The following variables must be set in the switches section of the post header
      #cuttype (0 = Tool Plane, 1 = Axis Subs,  2 = Polar, 3 = 4/5 axis)
      #dyndatum (0 = No, 1 = Yes)
      #tiltplane (0=Off, 1=On, 2=On, not used for Z/X tool axes, 3=On, not used for Z tool axis)

      #Initialize tcp
      tcp = 0

      #Set the following selections to tcp = 0 or tcp = sav_tcp
      if cuttype = 0,
        [
        if dyndatum, tcp = 0
        if (tiltplane & not(machsimflg)) | (post_tiltplane & machsimflg), tcp = 0
        #else, tcp = sav_tcp
        ]
      if cuttype = 1, tcp = 0 #sav_tcp
      if cuttype = 2,
        [
        #if tool_op$ = 55, tcp = 0
        #else, tcp = sav_tcp
        tcp = 0
        ]
      if cuttype = 3, tcp = sav_tcp
      if machsimflg,
        [
        if tcp = 0, post_tcp = 0
        else, post_tcp = sav_post_tcp
        tcp = sav_tcp
        ]

# Motion Output Blocks -----------------------------------------------------------------------------

protposition    #Physical positioning of rotaries
      pbld, pn, protunlock, pe
      pbld, pn, ptiltunlock, pe
      #Avoid G code output on line by itself
      if tiltplane & (cuttype = 0 | ((cuttype = 1 | cuttype = 2) & tiltplane <> 2)),
        [
        if cuttype = 0 | cuttype = 1, pbld, pn, `sgabsinc, *sgcode, [if b_axis_table & axcomb = 2, *babs], [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
        if toolchng | unwind | retflg,
          [
          pbld, pn, "M138 A C", pe
          #pbld, pn, "M336", pe
          ]
        ]
      if stilt_label <> snull | srot_label <> snull,
        [
        #pspatialcancel #not req'd but often a preference
        if not(tiltplane) & not(vector) & cuttype <> 4, pbld, pn, `sgabsinc, *sgcode, pfrotout, [if b_axis_table & axcomb = 2, *babs], [if gcode$ = 1, *feed], [if gcode$ = 0, 'FQ0'], pe
        else, !aabs, !ainc, !cabs, !cinc
        if vector & (toolchng | (retflg & mr8$ <> 3)), pbld, pn, `sgabsinc, *sgcode, "X+0", "Y+0", [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
        #if vector & (toolchng | (retflg & mr8$ <> 3)), pbld, pn, `sgabsinc, *sgcode, *xtop, *ytop, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
        ]
      else, !aabs, !ainc, !cabs, !cinc
      if machsimflg,
        [
        smachsim_comment = smachsim_block_comment + " rotposition"
        tilt_machsim = aabs
        rot_machsim = cabs
        if not(machmove_flg) & post_tcp = 0,
          [
          if cutpos$ <> 6,
            [
          xmachsim = vequ(sav_xmachsim_mach)
          !xmachsim, !ymachsim, !zmachsim
            ]
          else,
            [
            xmachsim = vequ(xmachsim_mach)
            !xmachsim, !ymachsim, !zmachsim
            ]
          machmovex_flg = vequ(onex)
          machmove_flg = 1
          ]
        if machmove_flg, pmachsim_mach_out
        else, pmachsim_rel_out
        smachsim_comment = ""
        ]
      if tiltplane & (cuttype = 0 | (cuttype = 1 & tiltplane <> 2)),
        [
        if cuttype = 0 | cuttype = 1,
          [
          if axcomb = 2 & b_axis_table, pbld, pn, `sgabsinc, *sgcode, *babs, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
          else, if axcomb = 1, pbld, pn, `sgabsinc, *sgcode, pfcout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
          ]
        pspatial
        ]
      else, !spa, !spb, !spc
      if cuttype <> 4,
        [
        pbld, pn, protlock, pe
        pbld, pn, ptiltlock, pe
        ]

pspatial        #Spatial plane output
      if planeflg = 0 & (fmtrnd(spa) | fmtrnd(spb) | fmtrnd(spc) | yes$ |  #org_tlvecz = 1 to force output on Top Plane
        (shiftlocation = 1 & (fmtrnd(toxout) | fmtrnd(toyout) | fmtrnd(tozout)))),
        [
        if shiftlocation <> 1,
          [
          sav_toxout = vequ(toxout)
          toxout = 0
          toyout = 0
          tozout = 0
          ]
        if plane_spatial,
          [
          result = nwadrs(strspa,spa)
          result = nwadrs(strspb,spb)
          result = nwadrs(strspc,spc)
          result = nwadrs(strspa,spa_out)
          result = nwadrs(strspb,spb_out)
          result = nwadrs(strspc,spc_out)
          spa_out = vequ(spa)
          if spc_out > 180, spc_out = spc_out - 360
          #COORD ROT vs. TABLE ROT
          #pbld, pn, "PLANE SPATIAL", *spa, *spb, *spc, "TURN", "FMAX", [if tiltsol = 1, "SEQ-"], [if tiltsol = 0, "SEQ+"], "TABLE ROT", pe
          #pbld, pn, "PLANE SPATIAL", *spa, *spb, *spc, "TURN", "FMAX", "TABLE ROT", pe

          #pbld, pn, "PLANE SPATIAL", *spa, *spb, *spc, "STAY", [if tiltsol = 1, "SEQ-"], [if tiltsol = 0, "SEQ+"], "TABLE ROT", pe
          #pbld, pn, "PLANE SPATIAL", *spa, *spb, *spc, "STAY", "TABLE ROT", pe
          #pbld, pn, "PLANE SPATIAL", *spa_out, *spb_out, *spc_out, "STAY", [if tiltsol = 1, "SEQ+"], [if tiltsol = 0, "SEQ-"], pe
          pbld, pn, "PLANE SPATIAL", *spa_out, *spb_out, *spc_out, "STAY", pe #[if tiltsol = 1, "SEQ+"], [if tiltsol = 0, "SEQ-"], pe
          !spa, !spb, !spc
          if tiltax = 1,
            [
            pbld, pn, *sgcode, "A+Q120", "R0", "F MAX", pe
            pbld, pn, *sgcode, "C+Q122", "R0", "F MAX", pe
            ]
           else,
            [
            pbld, pn, *sgcode, "A+Q120", "R0", "F MAX", pe #@#
            pbld, pn, *sgcode, "C+Q122", "R0", "F MAX", pe
            ]
          prv_feed = maxfeedpm
          ]
        else,
          [
          result = nwadrs(stra,spa)
          result = nwadrs(strb,spb)
          result = nwadrs(strc,spc)
          result = nwadrs(stra,spa_out)
          result = nwadrs(strb,spb_out)
          result = nwadrs(strc,spc_out)
          pbld, pn, "CYCL DEF", "19.0", "WORKING PLANE", pe
          pbld, pn, "CYCL DEF", "19.1", *spa, *spb, *spc, pe
          if tiltax = 1,
            [
            pbld, pn, *sgcode, "A+Q120", "FMAX", pe
            pbld, pn, *sgcode, "C+Q122", "FMAX", pe
            ]
          else,
            [
            pbld, pn, *sgcode, "B+Q121", "FMAX", pe
            pbld, pn, *sgcode, "C+Q122", "FMAX", pe
            ]
          prv_feed = maxfeedpm
          if org_tlvecz = 1,
            [
            pbld, pn, "CYCL DEF", "19.0", "WORKING PLANE", pe
            pbld, pn, "CYCL DEF", "19.1", pe
            ]
          ]
        planeflg = 1
        if shiftlocation = 1 & (fmtrnd(toxout) | fmtrnd(toyout) | fmtrnd(tozout)), shiftflg = 3
        !spa, !spb, !spc
        if shiftlocation <> 1, toxout = vequ(sav_toxout)
        ]
      !spa, !spb, !spc

pspatialcancel  #Spatial plane cancel
      if planeflg = 1,
        [
        if plane_spatial, pbld, pn, "PLANE RESET", "STAY", pe
        else,
          [
          pbld, pn, "CYCL DEF", "19.0", "WORKING PLANE", pe
          pbld, pn, "CYCL DEF", "19.1", pe
          ]
        planeflg = 0
        if shiftflg = 3, shiftflg = 0
        ]

pfspatialcancel  #Force spatial plane cancel
      if tiltplane,
        [
        planeflg = 1
        pspatialcancel
        ]

phome_init      #Initialize variables for home positioning
      sav_absinc = absinc$
      if home_style > 0 & home_style < 3, absinc$ = 1
      else, absinc$ = 0
      if absinc$ & not(use_g_inc),
        [
        result = nwadrs(strxinc,x_home)
        result = nwadrs(stryinc,y_home)
        result = nwadrs(strzinc,z_home)
        ]
      else,
        [
        result = nwadrs(strx,x_home)
        result = nwadrs(stry,y_home)
        result = nwadrs(strz,z_home)
        ]

phome_end       #Reset variables for home positioning
      absinc$ = sav_absinc

pxhome          #Home X
      phome_init
      sgabsinc, *sgcode, [if gcode$ = 1, sgfeed], *x_home, *scc0, [if gcode$ = 1, feed], [if gcode$ = 0, 'F MAX'], *sghome
      phome_end

      if machsimflg,
        [
        pfe
        smachsim_comment = smachsim_block_comment + " xhome"
        if not(machmovex_flg | machmovey_flg | machmovez_flg), pmachsim_mach_out
        xmachsim = xmachsim_home
        machmovex_flg = 1
        pmachsim_mach_out
        smachsim_comment = ""
        ]

pyhome          #Home Y
      if lin_ax_cnt = 3,  #If Y-axis exists
        [
        phome_init
        sgabsinc, *sgcode, [if gcode$ = 1, sgfeed], *y_home, *scc0, [if gcode$ = 1, feed], [if gcode$ = 0, 'F MAX'], *sghome
        phome_end

        if machsimflg,
          [
          pfe
          smachsim_comment = smachsim_block_comment + " yhome"
          if not(machmovex_flg | machmovey_flg | machmovez_flg), pmachsim_mach_out
          ymachsim = ymachsim_home
          machmovey_flg = 1
          pmachsim_mach_out
          smachsim_comment = ""
          ]
        ]

pxyhome         #Home X and Y
      if lin_ax_cnt = 3,  #If Y-axis exists
        [
        phome_init
        sgabsinc, *sgcode, [if gcode$ = 1, sgfeed], *x_home, *y_home, *scc0, [if gcode$ = 1, feed], [if gcode$ = 0, 'F MAX'], *sghome
        phome_end

        if machsimflg,
          [
          pfe
          smachsim_comment = smachsim_block_comment + " xyhome"
          if not(machmovex_flg | machmovey_flg | machmovez_flg), pmachsim_mach_out
          xmachsim = xmachsim_home
          ymachsim = ymachsim_home
          machmovex_flg = 1
          machmovey_flg = 1
          pmachsim_mach_out
          smachsim_comment = ""
          ]
        ]
      else, pxhome

pyzhome         #Home Y and Z
      if lin_ax_cnt = 3,  #If Y-axis exists
        [
        phome_init
        sgabsinc, *sgcode, [if gcode$ = 1, sgfeed], *y_home, *z_home, *scc0, [if gcode$ = 1, feed], [if gcode$ = 0, 'F MAX'], *sghome
        phome_end

        if machsimflg,
          [
          pfe
          smachsim_comment = smachsim_block_comment + " yzhome"
          if not(machmovex_flg | machmovey_flg | machmovez_flg), pmachsim_mach_out
          ymachsim = ymachsim_home
          zmachsim = zmachsim_home
          machmovey_flg = 1
          machmovez_flg = 1
          pmachsim_mach_out
          smachsim_comment = ""
          ]
        ]
      else, pzhome

pzhome          #Home Z
      phome_init
      sgabsinc, *sgcode, [if gcode$ = 1, sgfeed], *z_home, *scc0, [if gcode$ = 1, feed], [if gcode$ = 0, 'F MAX'], *sghome
      phome_end

      if machsimflg,
        [
        pfe
        smachsim_comment = smachsim_block_comment + " zhome"
        if not(machmovex_flg | machmovey_flg | machmovez_flg), pmachsim_mach_out
        zmachsim = zmachsim_home
        machmovez_flg = 1
        pmachsim_mach_out
        smachsim_comment = ""
        ]

paxishome       #Retract from part along current tool axis
      #"ret along axis" - e.g. M140
      #"M140", "MB", "MAX"

papproachtop    #Move to a machine mapped location
      #M130 may only be used if inside cycle 19, plane spatial, or M128
      #head/head machines needs for non-top toolplanes and not for tcp
      @org_tlvecz
      if toolchng,
        [
        ##if (tiltplane | machsimflg) & not(org_tlvecz = 1 | org_tlvecz = 0),
        #if (tiltplane) & not(org_tlvecz = 1 | org_tlvecz = 0),
        #  [
        #  pbld, pn, *sgcode, *xtop, *ytop, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, "M130", scomm_str, no_spc$, "MAPPED TOP POSITION", no_spc$, scomm_end, pe  #M130 can be used after rotation
        #  if machsimflg,
        #    [
        #    xmachsim = xtop
        #    ymachsim = ytop
        #    ]
        #  ]
        #else, pbld, pn, pfspindleout, pe
        ]
      else,
        [
        ##if (tiltplane | machsimflg) & not(org_tlvecz = 1 | org_tlvecz = 0),
        #if (tiltplane) & not(org_tlvecz = 1 | org_tlvecz = 0),
        #  [
        #  pbld, pn, *sgcode, *xtop, *ytop, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], "M130", scomm_str, no_spc$, "MAPPED TOP POSITION", no_spc$, scomm_end, pe  #M130 can be used after rotation
        #  if machsimflg,
        #    [
        #    xmachsim = xtop
        #    ymachsim = ytop
        #    ]
        #  ]
        #pspindleout
        ]
      #prv_feed = maxfeedpm

papproach0      #Approach for cuttype 0, Toolplane Positioning
      if toolchng & ((not(tcp) & not(machsimflg)) | (not(post_tcp) & machsimflg)),
        [
        if axcomb = 2,
          [
          if org_tlvecz = 1,
            [
            pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfxout, pfyout,
              [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
            prv_feed = maxfeedpm
            pbld, pn, *sgcode, pfzout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], !next_tool$, pe
            ]
          else,
            [
            pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfzout,
              [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
            prv_feed = maxfeedpm
            pbld, pn, *sgcode, pfxout, pfyout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], !next_tool$, pe
            ]
          ]
        else,
          [
          pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfzout,
            [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
          prv_feed = maxfeedpm
          pbld, pn, *sgcode, pfxout, pfyout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], !next_tool$, pe
          ]
        if machsimflg,
          [
          xmachsim = xmachsim_mach
          ymachsim = ymachsim_mach
          tilt_machsim = aabs
          rot_machsim = cabs
          pmachsim_mach_out

          xmachsim = vequ(xmachsim_mach)
          pmachsim_mach_out

          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          pmachsim_rel_out
          ]
        ]
      if (toolchng0 | unwind) & ((not(tcp) & not(machsimflg)) | (not(post_tcp) & machsimflg)),
        [
        if axcomb = 2,
          [
          if org_tlvecz = 1,
            [
            pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfxout, pfyout,
              [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
            prv_feed = maxfeedpm
            pbld, pn, *sgcode, pfzout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
            ]
          else,
            [
            pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfzout,
              [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
            prv_feed = maxfeedpm
            pbld, pn, *sgcode, pfxout, pfyout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
            ]
          ]
        else,
          [
          pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfzout,
            [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
          prv_feed = maxfeedpm
          pbld, pn, *sgcode, pfxout, pfyout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
          ]
        if machsimflg,
          [
          xmachsim = xmachsim_mach
          ymachsim = ymachsim_mach
          tilt_machsim = aabs
          rot_machsim = cabs
          pmachsim_mach_out

          xmachsim = vequ(xmachsim_mach)
          pmachsim_mach_out

          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          pmachsim_rel_out
          ]
        ]
      if toolchng & ((tcp & not(machsimflg)) | (post_tcp & machsimflg)),
        [
        pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfxout, pfyout, pfzout,
          [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, !next_tool$, pe
        prv_feed = maxfeedpm
        if machsimflg,
          [
          tilt_machsim = aabs
          rot_machsim = cabs
          if not(ppos_cax_lin_flg) | machmove_flg,
            [
            xmachsim = vequ(xmachsim_mach)
            pmachsim_mach_out
            ]

          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          pmachsim_rel_out
          ]
        ]
      if (toolchng0 | unwind) & ((tcp & not(machsimflg)) | (post_tcp & machsimflg)),
        [
        pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfxout, pfyout, pfzout,
          [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
        prv_feed = maxfeedpm
        if machsimflg,
          [
          tilt_machsim = aabs
          rot_machsim = cabs
          if not(ppos_cax_lin_flg) | machmove_flg,
            [
            xmachsim = vequ(xmachsim_mach)
            pmachsim_mach_out
            ]

          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          pmachsim_rel_out
          ]
        ]

papproach1      #Approach for cuttype 1, Axis Substitution
      papproach0

papproach2      #Approach for cuttype 2, Polar Conversion
      papproach0

papproach3      #Approach for cuttype 3, Simultaneous 4/5 axis (Multi-axis)
      if toolchng,
        [
        pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfxout, pfyout, pfrotout,
          [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
          prv_feed = maxfeedpm
        pbld, pn, *sgcode, pfzout, pfrotout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], next_tool$, pe
        if machsimflg,
          [
          xmachsim = xmachsim_mach
          ymachsim = ymachsim_mach
          tilt_machsim = aabs
          rot_machsim = cabs
          pmachsim_mach_out

          xmachsim = vequ(xmachsim_mach)
          pmachsim_mach_out

          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          pmachsim_rel_out
          ]
        ]
      if (toolchng0 | unwind),
        [
        pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pfxout, pfyout, pfrotout,
          [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pfspindleout, scoolant, pcan3, strcantext, pe
        prv_feed = maxfeedpm
        pbld, pn, *sgcode, pfzout, pfrotout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
        if machsimflg,
          [
          xmachsim = xmachsim_mach
          ymachsim = ymachsim_mach
          tilt_machsim = aabs
          rot_machsim = cabs
          pmachsim_mach_out

          xmachsim = vequ(xmachsim_mach)
          pmachsim_mach_out

          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          pmachsim_rel_out
          ]
        ]

papproach4      #Approach for cuttype 4, Turning
      if toolchng,
        [
        pbld, pn, pdyndatum, pe
        pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], sgabsinc, ptlen, pfxout, pfyout, pfzout
          [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], scoolant, pcan3, strcantext, pe
        #pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], sgabsinc, pfzout,
        #  [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
        prv_feed = maxfeedpm
        if machsimflg,
          [
          tilt_machsim = aabs
          rot_machsim = cabs
          if not(ppos_cax_lin_flg) | machmove_flg,
            [
            xmachsim = vequ(xmachsim_mach)
            pmachsim_mach_out
            ]

          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          pmachsim_rel_out
          ]
        ]
      if toolchng0,
        [
        pspindchng2
        pbld, pn, pdyndatum, pe
        pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], sgabsinc, ptlen, pfxout, pfyout, pfzout,
          [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pcan3, scoolant, strcantext, pe
        #pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], sgabsinc, pfzout,
        #  [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
        if machsimflg,
          [
          tilt_machsim = aabs
          rot_machsim = cabs
          if not(ppos_cax_lin_flg) | machmove_flg,
            [
            xmachsim = vequ(xmachsim_mach)
            pmachsim_mach_out
            ]

          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          machmovex_flg = vequ(zerox)
          pmachsim_rel_out
          ]
        ]

papproach_safety #
      pbld, pn, pdyndatum, pe
      pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], sgabsinc, ptlen, *last_xabs_tcp, *last_yabs_tcp, *last_zabs_tcp, pspindleout,
        [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pcan3, strcantext, scoolant, pe
      pbld, pn, *sgcode, pfxout, pfyout, pfzout, pfrotout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe

ptlen           #Tool length on
      tlen = 0
      #Tool length code output criteria
      if toolchng,
        [
        tlen = 1
        ]
      if toolchng0 | unwind | ((cutpos$ = 6 | cutpos$ = -1) & ppos_cax_lin_flg),
        [
        tlen = 1
        ]

      if tlen & tlenflg = 0,  #Toolchange, null toolchange with recall, after any G28 retract
        [
        if tcp,
          [
          *sg43_4, !tlngno$ #"F1000" #Usually set by MP7471 linear compensation motion feed (mm/min) can also be placed here
          tlenflg = 2
          ]
        else,
          [
          *sg43, !tlngno$
          tlenflg = 1
          ]
        ]

ptlen_off       #Tool length cancel
      if tlenflg,
        [
        pbld, pn, *sg49, pe
        ]
      tlenflg = 0

pftlen_off      #Force Tool length cancel
      tlenflg = 2
      ptlen_off

ptool_insp      ##Tool inspection point
      #Modify following lines to customize output for tool inspection points
      if posttype$ = 2, #Lathe tool inspection point
        [
        scomm_str, no_spc$, "TOOL INSPECTION POINT - POST CUSTOMIZATION MAY BE REQUIRED", no_spc$, scomm_end, pe
        if prmcode$ = 29999, #Only output tool insp comment if one was entered with this insp point
          [
          sparameter$ = ucase(sparameter$)
          pbld, pn, sm00, scomm_str, no_spc$, sparameter$, no_spc$, scomm_end, pe
          ]
        else, pbld, pn, sm00, pe      #Output just the stop if no comment
        pbld, pn, *sgcode, *t$, pe  #Restate tool number
        pbld, pn, pgear, pe
        pbld, pn, pfspindleout, pe
        result = force(feed,feed)
        result = force(gcode$,gcode$)
        result = force(plane$,plane$)
        result = force(workofs$,workofs$)
        if coolant$, result = force(coolant$,coolant$)
        ]
      else, #Mill tool inspection point
        [
        toolchng = 1
        pretract
        indexflg = 1
        movecnt = 0
        pbld, pn, sm00, scomm_str, no_spc$, "TOOL INSPECTION POINT - POST CUSTOMIZATION REQUIRED", no_spc$, scomm_end, pe
        sav_absinc = absinc$
        if wcstype > 1, absinc$ = 0
        pbld, pn, pwcs, !plane$, sgabsinc, pe
        pshiftbefore
        protposition
        pshiftafter
        pbld, pn, pgear, pe
        if convert_rpd$ = 1,
          [
          gcode$ = 1
          feed = maxfeedpm
          ipr_type = 0
          ]
        phsm1_on        #must remain before G43
        if cuttype = 0, papproach0    #Toolplane Positioning
        if cuttype = 1, papproach1    #Axis Substitution
        if cuttype = 2, papproach2    #Polar Conversion
        if cuttype = 3, papproach3    #Simultaneous 4/5 axis (Multi-axis)
        toolchng = 0
        absinc$ = sav_absinc
        ]

prapidout       #Output to NC of linear movement - rapid
      if fmtrnd(xabs) <> fmtrnd(prv_xabs)
       | fmtrnd(yabs) <> fmtrnd(prv_yabs)
       | fmtrnd(zabs) <> fmtrnd(prv_zabs)
       | fmtrnd(ainc) <> 0
       | fmtrnd(cinc) <> 0,
        [
        pbld, pn, [if gcode$ = 1, sgfeed], pe
        pcan1, pbld, pn, !plane$, *sgcode, sgabsinc,
          pxout, pyout, pzout, protout, pccdia, [if gcode$ = 1, `feed], [if gcode$ = 0, 'F MAX'], strcantext, scoolant, pe
        prv_feed = maxfeedpm
        ]
      else,
        [
        !xabs, !xinc, !yabs, !yinc, !zabs, !zinc  #, !aabs, !ainc, !cabs, !cinc
        ]

plinout         #Output to NC of linear movement - feed
      if fmtrnd(xabs) <> fmtrnd(prv_xabs)
       | fmtrnd(yabs) <> fmtrnd(prv_yabs)
       | fmtrnd(zabs) <> fmtrnd(prv_zabs)
       | fmtrnd(ainc) <> 0
       | fmtrnd(cinc) <> 0,
        [
        pbld, pn, sgfeed, pe
        pcan1, pbld, pn, !plane$, *sgcode, sgabsinc,
          pxout, pyout, pzout, protout, pccdia, `feed, strcantext, scoolant, pe
        ]
      else,
        [
        !xabs, !xinc, !yabs, !yinc, !zabs, !zinc  #, !aabs, !ainc, !cabs, !cinc
        ]

pcirout         #Output to NC of circular interpolation
      if not(arccomp), pcompwarn
      if full_arc_flg$,
        [
        if xyarc, result = force(xabs,yabs)  #force coordinate on full arc
        if yzarc, result = force(yabs,zabs)  #force coordinate on full arc
        if xzarc,
          [
          result = force(xabs,xabs)          #force coordinate on full arc
          result = force(zabs,zabs)          #force coordinate on full arc
          ]
        ]
      #Check for mismatched arc data
      if xyarc,
        [
        arcrad1 = sqrt((fmtrnd(xcabs)-prv_xabs)^2+(fmtrnd(ycabs)-prv_yabs)^2)
        arcrad2 = sqrt((fmtrnd(xcabs)-xabs)^2+(fmtrnd(ycabs)-yabs)^2)
        ]
      if yzarc,
        [
        arcrad1 = sqrt((fmtrnd(ycabs)-prv_yabs)^2+(fmtrnd(zcabs)-prv_zabs)^2)
        arcrad2 = sqrt((fmtrnd(ycabs)-yabs)^2+(fmtrnd(zcabs)-zabs)^2)
        ]
      if xzarc,
        [
        arcrad1 = sqrt((fmtrnd(xcabs)-prv_xabs)^2+(fmtrnd(zcabs)-prv_zabs)^2)
        arcrad2 = sqrt((fmtrnd(xcabs)-xabs)^2+(fmtrnd(zcabs)-zabs)^2)
        ]
      if fmtrnd(arcrad1) <> fmtrnd(arcrad2),
        [
        #if arcwarnflg = 0, result = mprint(sarcwarn)
        #spaces$ = 0
        #pn, pspc, sm00, " ", scomm_str, sarcwarn, scomm_end, pe
        #spaces$ = sav_spc
        #arcwarnflg = 1

        #result = fexist(snircmd)
        #sparams = 'speak text "' + sarcwarn + '"'
        #if result, result = launch(snircmd,sparams)
        ]
      arc_len = 0
      arc_len = abs((sweep$ * pi$ / 180) * arcrad$)
      #TNC to avoid output on axis
      if xyarc, !zabs, !zinc, !kout
      if yzarc, !xabs, !xinc, !iout
      if xzarc, !yabs, !yinc, !jout

      pbld, pn, "CC", parc, pe
      if hel_lead = 1 & cuttype <> 4, pcirout2
      else, pcirout1

pcirout1        #Output to NC of circular interpolation
      if xyarc, !kout
      if xzarc, !jout
      if yzarc, !iout
      pbld, pn, sgfeed, pe
      pcan1, pbld, pn, "C", !plane$, sgabsinc,
        pxout, pyout, pzout, *sgcode, paout, pcout, pccdia, feed, strcantext, scoolant, pe

pcirout2        #Output to NC of circular interpolation
      if tiltplane | abs(fmtrnd(ret_tlvecz)) = 1, #Helix in current Z
        [
        if fmtrnd(zinc) <> 0 & plane$ = 0, phelout
        else, pcirout1
        ]
      else,
        [
        if abs(fmtrnd(ret_tlvecx)) = 1, #Helix in machine X
          [
          if fmtrnd(xinc) <> 0 & plane$ = 0, phelout
          else, pcirout1
          ]
        if abs(fmtrnd(ret_tlvecy)) = 1, #Helix in machine Y
          [
          if fmtrnd(yinc) <> 0 & plane$ = 0, phelout
          else, pcirout1
          ]
        ]

phelout         #Output to NC of helical interpolation
      hel_count = hel_count + 1
      if tiltplane | abs(fmtrnd(ret_tlvecz)) = 1, #Helix in current Z
        [
        pbld, pn, sgfeed, pe
        pcan1, pbld, pn, "CP", !plane$, sgabsinc, *sweep$,
          pfzout, *sgcode, !lead, paout, pcout, pccdia, feed, strcantext, scoolant, pe
        !xabs, !xinc, !yabs, !yinc, !i$, !iout, !j$, !jout, !k$, !kout
        ]
      else,
        [
        if abs(fmtrnd(ret_tlvecx)) = 1, #Helix in machine X
          [
          pbld, pn, sgfeed, pe
          pcan1, pbld, pn, "CP", !plane$, sgabsinc, *sweep$,
            pfxout, *sgcode, !lead, paout, pcout, pccdia, feed, strcantext, scoolant, pe
          !yabs, !yinc, !zabs, !zinc, !i$, !iout, !j$, !jout, !k$, !kout
          ]
        if abs(fmtrnd(ret_tlvecy)) = 1, #Helix in machine Y
          [
          pbld, pn, sgfeed, pe
          pcan1, pbld, pn, "CP", !plane$, sgabsinc, *sweep$,
            pfyout, *sgcode, !lead, paout, pcout, pccdia, feed, strcantext, scoolant, pe
          !xabs, !xinc, !zabs, !zinc, !i$, !iout, !j$, !jout, !k$, !kout
          ]
        ]

      #TNC helix counter, repeat position afer 999 IPA moves
      if hel_count > 999,
        [
        pbld, pn, *sg01, pfxout, pfyout, pfzout, pccdia, feed, strcantext, scoolant, pe
        result = force(gcode$,gcode$)
        hel_count = 0
        ]

pbld            #Canned text - block delete
      if bld, '/', no_spc$

pfbld           #Force - block delete
      "/", no_spc$

pe              #End of line
      e$

pfe             #Forced end of line
      *e$

pn              #Line numbering
      n$

pfn             #Forced line numbering
      *n$

pcompwarn       #Cutter Compensation Check
      if prv_cc_pos$ <> cc_pos$ & cc_pos$ & gcode$ > 1,
        [
        if compwarnflg = 0, result = mprint(scompwarn + " - OP" + no2str(opmgr_opno))
        spaces$ = 0
        pn, pspc, sm00, " ", scomm_str, scompwarn, scomm_end, pe
        spaces$ = sav_spc
        compwarnflg = 1
        ]

pccdia          #Cutter Compensation
      #cc_pos$ does not work with multi-axis paths
      if cuttype = 3 & tcp,                           #5-axis cutter comp only works in tcp mode
        [
        if tool_op$ <> 154,
          [
          if ccomp$ & cutpos2$ < 4 & gcode$ = 1, cc_pos$ = ccomp$ - 1
          else, cc_pos$ = 0
          ]
        ]
      else,
        [
        if gnci$ = 11 & tool_op$ <> 154,
          [
          if ccomp$ & cutpos2$ < 4 & gcode$ = 1, cc_pos$ = ccomp$ - 1
          else, cc_pos$ = 0
          ]
        ]
      if cutpos$ = 6, cc_pos$ = 0
      sccomp
      if cc_pos$, !tloffno$

pfxout          #Force X axis output
      if absinc$ = 0, *xabs, !xinc
      else, *xinc, !xabs

pxout           #X output
      if tcp, pfxout
      else,
        [
        if absinc$ = 0, xabs, !xinc
        else, xinc, !xabs
        ]

pfyout          #Force Y axis output
      #If Y-axis exists, If turning output Y, If face interpolation is active
      if (lin_ax_cnt = 3 & not(cuttype = 4 & yturn = 0)) | faceinterp = 1,
        [
        if absinc$ = 0, *yabs, !yinc
        else, *yinc, !yabs
        ]
      else,
        [
        if fmtrnd(yabs) <> 0 & lin_ax_cnt = 2 & yerrorflg = 0,
          [
          result = mprint(syerror + " - OP" + no2str(opmgr_opno))
          yerrorflg = 1
          ]
        !yabs, !yinc
        ]

pyout           #Y output
      #If Y-axis exists, If turning output Y, If face interpolation is active
      if (lin_ax_cnt = 3 & not(cuttype = 4 & yturn = 0)) | faceinterp = 1,
        [
        if tcp, pfyout
        else,
          [
          if absinc$ = 0, yabs, !yinc
          else, yinc, !yabs
          ]
        ]
      else,
        [
        if fmtrnd(yabs) <> 0 & lin_ax_cnt = 2 & yerrorflg = 0,
          [
          result = mprint(syerror + " - OP" + no2str(opmgr_opno))
          yerrorflg = 1
          ]
        !yabs, !yinc
        ]

pfzout          #Force Z axis output
      if absinc$ = 0, *zabs, !zinc
      else, *zinc, !zabs

pzout           #Z output
      if tcp, pfzout
      else,
        [
        if absinc$ = 0, zabs, !zinc
        else, zinc, !zabs
        ]

pfrotout        #Force Rotary output
      if vector & cuttype = 3, [if gcode$ = 1, pnormal], pvector
      else, pfaout, pfcout

protout         #Rotary output
      if vector & cuttype = 3, [if gcode$ = 1, pnormal], pvector
      else,
        [
        if tcp, pfaout, pfcout
        else,
          [
          if tiltplane = 1 & cuttype <> 1 & cuttype <> 2, !aabs, !ainc, !cabs, !cinc
          else, paout, pcout
          ]
        ]

pfaout          #Force A axis output
      if not(planeflg) & stilt_label <> snull & cuttype <> 4,                   #axis is currently used
        [
        if use_tiltmcode & (fmtrnd(movea) | sof), *sindx_mct
        if absinc$ = 0, *aabs, !ainc
        else, *ainc, !aabs
        ]
      else, !aabs, !ainc

paout           #A axis output
      if not(planeflg) & stilt_label <> snull & cuttype <> 4,                   #axis is currently used
        [
        if use_tiltmcode & (fmtrnd(movea) | sof), *sindx_mct
        if absinc$ = 0, aabs, !ainc
        else, ainc, !aabs
        ]
      else, !aabs, !ainc

pfcout          #Force C axis output
      if (not(planeflg) | cuttype = 2 ) & srot_label <> snull & (cuttype <> 4 | nextop$ = 1003),
        [
        if use_rotmcode & (fmtrnd(movec) | sof), *sindx_mcr
        if absinc$ = 0, *cabs, !cinc
        else, *cinc, !cabs
        ]
      else, !cabs, !cinc

pcout           #C axis output
      if (not(planeflg) | cuttype = 2) & srot_label <> snull & cuttype <> 4,                    #axis is currently used
        [
        if use_rotmcode & (fmtrnd(movec) | sof), *sindx_mcr
        if absinc$ = 0, cabs, !cinc
        else, cinc, !cabs
        ]
      else, !cabs, !cinc

pvector         #Vector output
      tlvecx_out = vequ(org_tlvecx)
      *tlvecx_out, *tlvecy_out, *tlvecz_out
      !aabs, !ainc, !cabs, !cinc

pnormal         #Surface normal vector
      if mi3$, *norm_tlvecx, *norm_tlvecy, *norm_tlvecz

parc            #Select the arc output
      if (xyarc & (arctype$ = 1 | arctype$ = 4)) |   #XY Plane
        (yzarc & (arctypeyz$ = 1 | arctypeyz$ = 4)) | #YZ Plane
        (xzarc & (arctypexz$ = 1 | arctypexz$ = 4)),  #XZ Plane
        [
        result = newfs(2,iout)
        result = newfs(2,jout)
        result = newfs(2,kout)
        ]
      else,
        [
        result = newfs(3,iout)
        result = newfs(3,jout)
        result = newfs(3,kout)
        ]
      if larctypexz$ = 2 & posttype$ = 2,
        [
        result = nwadrs(strix,iout)
        result = nwadrs(striy,jout)
        result = nwadrs(striz,kout)
        ]
      else,
        [
        result = nwadrs(strx,iout)
        result = nwadrs(stry,jout)
        result = nwadrs(strz,kout)
        ]
      if (((xyarc & arctype$ < 5) | (yzarc & arctypeyz$ < 5) |
        (xzarc & arctypexz$ < 5)) & posttype$ = 1) |
        (posttype$ = 2 & larctypexz$ < 5) | full_arc_flg$,
        [
        #Arc output for IJK
        if xyarc, *iout, *jout, kout
        if yzarc, iout, *jout, *kout
        if xzarc, *iout, jout, *kout
        !i$, !j$, !k$
        !iout, !jout, !kout
        ]
      else,
        [
        #Arc output for R
        if abs(sweep$) <= 180 | (xyarc & arctype$ = 5) | (yzarc & arctypeyz$ = 5) |
          (xzarc & arctypexz$ = 5), result = nwadrs(srad,arcrad$)
        else, result = nwadrs(srminus,arcrad$)
        *arcrad$
        ]

ppos_cax_lin    #Position the rotary axis before move - rapid
      if abs(fmtrnd(movea)) <> 0 | abs(fmtrnd(movec)) <> 0 | ((cutpos$ = 6 | cutpos$ = -1) & ((drlcommonb_flg & not(machsimflg)) | (not(machsim_drlcyc_flg) & machsimflg)))
        | (sav_safezone_flg & (cutpos$ = 6 | cutpos$ = -1 | tool_op$ <> 28) & last_cutpos = 6) | (safezone_flg & tcp <> last_tcp),
        [
        ppos_cax_lin_flg = 1
        if cuttype = 0,
          [
          sav_gcode = gcode$
          gcode$ = 0
          if circle_mill_op | drill_5ax_op,
            [
            if gnci$ = 100 & drlcyc = 1, pcanceldc$
            pretdec_mid  #catch 5-Axis to 3+2 operations
            if mr8$ = 3 & not(safezone_flg), retflg = 2
            if retflg = 2,
              [
              if cutpos$ = -1 | (cutpos$ <> 6 & last_cutpos = 6), ptlen_off
              spa_sav = vequ(spa)
              pspatialcancel
              pdyndatumcancel
              spa = vequ(spa_sav)
              ]
            if (not(sav_safezone_flg) & vers_no_xx <= 2018) | not(safezone_flg), pbld, pn, pwcs, !plane$, sgabsinc, pe
            pcom_moveb
            ]
          pbld, pn, ptlen, pe
          if not(safezone_flg),
            [
            if cutpos$ = 6, ptlen_off
            toolchng0 = 1
            protposition
            pshiftafter
            if circle_mill_op | drill_5ax_op,
              [
              if drill_5ax_op & drlcommonb_flg,
                [
                if drillref = 0, xabs = vequ(drl_init_xabs)
                else, xabs = vequ(drl_ref_xabs)
                ]
              papproach0    #Toolplane Positioning
              ]
            toolchng0 = 0
            ]
          else,
            [
            gcode$ = sav_gcode
            if tlenflg = 0, pbld, pn, ptlen, *sgcode, *last_xabs_tcp, *last_yabs_tcp, *last_zabs_tcp, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
            if gcode$ = 0, prapidout
            else, plinout
            ]
          if opcode$ = 16 & not(safezone_flg | sav_safezone_flg), result = force(xabs,zabs)
          pe_cinc_calc
          ps_cinc_calc
          gcode$ = sav_gcode
          ]
        if cuttype = 3 & ((tcp & not(machsimflg)) | (post_tcp & machsimflg)) & indexflg = 0 & not(nextop$ = 1011 | nextop$ = 1003),
          [                             #Need to cancel G43.4, index, recall
          #popstate
          toolchng0 = 1
          startop = 0
          midop = 1
          xformop = 0
          #pcuttype
          pretdec_mid
          #if mi4$, tiltsol = 0
          #else, tiltsol = 1
          pcom_moveb
          #prottiltcalc
          if (gcode$ = 0 | gnci$ = 0) & convert_rpd$ = 1,
            [
            gcode$ = 1
            if ipr_type = 2, feed = minfrinv
            else, feed = maxfeedpm
            if ipr_type = 2, prv_feed = c9k
            if tool_op$ < 440,
              [
              ipr_type = 0
              feed = maxfeedpm
              ]
            ]
          if retflg,
            [
            phsm1_on
            protposition
            if mill5$ = 1 & vector,
              [
              sg00 = strln
              sg01 = strln
              ]
            else,
              [
              sg00 = strl
              sg01 = strl
              ]
            pbld, pn, pdyndatum, pe
            pbld, pn, ptlen, pe
            papproach3                             #Simultaneous 4/5 axis (Multi-axis)
            phsm2_on
            ]
          else,
            [
            if gcode$ = 1, plinout
            else, prapidout
            ]
          pe_inc_calc
          ps_inc_calc
          toolchng0 = 0
          ]
        ppos_cax_lin_flg = 0
        ]

pinterp_on      #Interpolation on
      if cuttype = 5 & faceinterp = 0,
        [
        #pbld, pn, *sgplane, pfxout, pfcout, pe
        pbld, pn, "G17", "XC", pe
        pbld, pn, *sg112, pe
        faceinterp = 1
        !convert_rpd$                             #comment out for rapids inside interpolation cycle
        convert_rpd$ = 1                          #comment out for rapids inside interpolation cycle
        if g12add,
          [
          if spindle_no$ = 0, result = nwadrs(strc,yabs)     #Use C address during interpolation
          #else, result = nwadrs(strc,yabs)     #Use C address during interpolation - i-Series with lower
          else, result = nwadrs(stru,yabs)     #Use U address during interpolation - i-Series no lower
          #else, result = nwadrs(stry,yabs)     #Use Y address during interpolation
          ]
        ]
      if cuttype = 6 & odinterp = 0,
        [
        yinc = 0
        zinc = 0
        cinc = 0
        if axcomb = 1 | axcomb  = 3, pbld, pn, *sgabsinc, *sgplane, *zinc, *cinc, pe
        if axcomb = 2 | axcomb  = 4, pbld, pn, *sgabsinc, *sgplane, *yinc, *cinc, pe
        rotrad = rotdia$/2
        pbld, pn, *sg107_on, *rotrad, pe
        odinterp = 1
        !convert_rpd$                             #comment out for rapids inside interpolation cycle
        convert_rpd$ = 1                          #comment out for rapids inside interpolation cycle
        !arctype$                  #Force R output for arcs, comment out to allow ctrl def selection
        arctype$ = 5               #Force R output for arcs, comment out to allow ctrl def selection
        !arctypeyz$                #Force R output for arcs, comment out to allow ctrl def selection
        arctypeyz$ = 5             #Force R output for arcs, comment out to allow ctrl def selection
        ]
      result = force(gcode$,gcode$)

pinterp_off     #Interpolation cancel
      if faceinterp = 1,
        [
        pbld, pn, *sg113, pe
        faceinterp = 0
        convert_rpd$ = prv_convert_rpd$           #comment out for rapids inside interpolation cycle
        if g12add, result = nwadrs(stry,yabs)     #Use C address during interpolation
        result = force(plane$,plane$)
        ]
      if odinterp = 1,
        [
        rotrad = 0
        pbld, pn, *sg107_off, *rotrad, pe
        odinterp = 0
        convert_rpd$ = prv_convert_rpd$           #comment out for rapids inside interpolation cycle
        arctype$ = prv_arctype$    #Force R output for arcs, comment out to allow ctrl def selection
        arctypeyz$ = prv_arctypeyz$
        ]

# Drilling -----------------------------------------------------------------------------------------

pdrill0$        #Pre-process before drill call
      if gnci$ = 81, sav_dwell = dwell$
      if gnci$ = 100, dwell$ = sav_dwell
      if posttype$ <> 2 & gnci$ = 81, peck1$ = opinfo(10108,0)
      sav_dgcode = gcode$ #Capture gcode for 5 axis drill
      #Gcode changes to 0 instead of 100 for rotary axis subsequent points
      if sav_dgcode = 0, sav_dgcode = 100
      if (cuttype = 0 | cuttype = 2) & not(machsimflg), pusecannedyes
      else, pusecannedno

pdrlcommonb     #Canned Drill Cycle common call, before
      drlcommonb_flg = 1
      if sav_dgcode = 81 | sav_dgcode = 100,
        [
        if drillcyc$ = 3, drlgsel = fsg1(-ss$) + drillcyc$ * 2
        #if drillcyc$ = 3, drlgsel = fsg1(-spdir$) + drillcyc$ * 2
        else, drlgsel = fsg2(dwell$) + drillcyc$ * 2
        if clearflg = 1 & clearstrt = 0, drillref = 0
        else, drillref = 1
        ]
      result = newfs(30,zinc)

      if drillcyc$ = 3,
        [
        if mi6$, use_pitch = 1
        else, use_pitch = sav_use_pitch
        ]

      if tlenflg = 2,
        [
        if cuttype = 0,
          [
          tiltplane = sav_tiltplane
          dyndatum = sav_dyndatum
          ]
        ptcpsetup
        sav_safezone_flg = 1
        ]
      pcom_moveb
      feed = fr_pos$
      comment$
      pcan
      if (fmtrnd(movea) | fmtrnd(movec) | sav_safezone_flg) & (tiltplane | dyndatum),
        [
        if sav_safezone_flg, ptlen_off
        else, pcanceldc$
        ppos_cax_lin
        ]
      pbld, pn, sgabsinc, pe

      #Set coordinates to initial height (either clearance or retract)
      if drillref = 0, xabs = vequ(drl_init_xabs)
      else, xabs = vequ(drl_ref_xabs)

      #Update XYZ coordinates
      if sav_dgcode <> 100 & (fmtrnd(zabs) <> fmtrnd(prv_zabs) | (retflg & tlenflg = 0)),
        [
        zinc = zabs - prv_zabs
        sav_gcode = gcode$
        if convert_rpd$ = 1,
          [
          gcode$ = 1
          feed = maxfeedpm
          ipr_type = 0
          ]
        else, gcode$ = 0
        toolchng0 = 1
        pbld, pn, ptlen, pe
        pbld, pn, sgabsinc, *sgcode, [if gcode$ = 1, sgfeed], pxout, pyout, pfzout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'],  pe
        toolchng0 = 0
        gcode$ = sav_gcode
        ]

      #ABSOLUTE
      if drillref = 0, initht_a = drl_init_zabs
      else, initht_a = drl_ref_zabs
      refht_a = drl_ref_zabs
      tosz_a = drl_tos_zabs
      depth_a = drl_depth_zabs

      #Determine if cycle needs to be recalled
      if drlcyc,
        [
        #Recallflg = 1 for canned cycle cancel/recall, recallflg = 2 for cancel/retract/approach/recall
        if fmtrnd(initht_a) <> fmtrnd(last_initht_a), recallflg = 1
        if fmtrnd(refht_a) <> fmtrnd(last_refht_a), recallflg = 1
        #tos_z is not reporting properly in X2 MR2 with rotary axis drilling
        #if fmtrnd(tosz_a) <> fmtrnd(last_tosz_a), recallflg = 1
        if fmtrnd(depth_a) <> fmtrnd(last_depth_a), recallflg = 1

        if fmtrnd(peck1$) <> fmtrnd(last_peck1), recallflg = 1
        if fmtrnd(peck2$) <> fmtrnd(last_peck2), recallflg = 1
        if fmtrnd(peckclr$) <> fmtrnd(last_peckclr), recallflg = 1
        if fmtrnd(dwell$) <> fmtrnd(last_dwell), recallflg = 1
        if fmtrnd(retr$) <> fmtrnd(last_retr), recallflg = 1
        if fmtrnd(shftdrl$) <> fmtrnd(last_shftdrl), recallflg = 1
        if fmtrnd(drl_prm1$) <> fmtrnd(last_drl_prm1), recallflg = 1
        if fmtrnd(drl_prm2$) <> fmtrnd(last_drl_prm2), recallflg = 1
        if fmtrnd(drl_prm3$) <> fmtrnd(last_drl_prm3), recallflg = 1
        if fmtrnd(drl_prm4$) <> fmtrnd(last_drl_prm4), recallflg = 1
        if fmtrnd(drl_prm5$) <> fmtrnd(last_drl_prm5), recallflg = 1
        if fmtrnd(drl_prm6$) <> fmtrnd(last_drl_prm6), recallflg = 1
        if fmtrnd(drl_prm7$) <> fmtrnd(last_drl_prm7), recallflg = 1
        #if fmtrnd(drl_prm8$) <> fmtrnd(last_drl_prm8), recallflg = 1
        #if fmtrnd(drl_prm9$) <> fmtrnd(last_drl_prm9), recallflg = 1
        #if fmtrnd(drl_prm10$) <> fmtrnd(last_drl_prm10), recallflg = 1

        if axcomb <> last_axcomb, recallflg = 1
        if opcode$ = 16,       #mr8 only applies to drill5ax
          [
          if mr8$ <> 3 & (fmtrnd(movea) | fmtrnd(movec)), recallflg = 2
          if mr8$ = 3 & (fmtrnd(movea) | fmtrnd(movec)) & planeflg, recallflg = 2
          ]
        else,
          [
          if fmtrnd(movea), recallflg = 2
          ]
        #Uncomment this if you need a cancel and recall when tiltplane is active
        if tiltplane & fmtrnd(movec), recallflg = 2
        if tiltplane & fmtrnd(movea), recallflg = 2
        ]

      #Cancel drill cycle if active
      if recallflg,
        [
        pcanceldc$
        if recallflg = 1,
          [
          zinc = zabs - prv_zabs
          sav_gcode = gcode$
          if convert_rpd$ = 1,
            [
            gcode$ = 1
            feed = maxfeedpm
            ipr_type = 0
            ]
          else, gcode$ = 0
          toolchng0 = 1
          pbld, pn, sgabsinc, *sgcode, [if gcode$ = 1, sgfeed], ptlen, pxout, pyout, pfzout, [if gcode$ = 1, *feed], [if gcode$ = 0, 'F MAX'], pe
          toolchng0 = 0
          gcode$ = sav_gcode
          ]
        ]
      if recallflg = 2,
        [
        pcuttype
        toolchng0 = 1

        #Must remain here to update tilt and rot values for decisions
        pcom_moveb

        pretdec_mid                       #Make decision on whether to retract

        #recall so that approach moves are updated after retracts
        pcom_moveb

        #Set coordinates to initial height
        if drillref = 0, xabs = vequ(drl_init_xabs)
        else, xabs = vequ(drl_ref_xabs)

        if retflg | (tiltplane & (fmtrnd(movea) | fmtrnd(movec))),
          [
          if retflg = 0, pspatialcancel
          sav_absinc = absinc$
          absinc$ = 0
          pwcs
          phsm1_on                                 #must remain before G43
          pshiftbefore
          protposition
          pshiftafter
          pbld, pn, pdyndatum, pe
          pbld, pn, ptlen, pe
          if gcode$ = 0 & convert_rpd$ = 1 & not(cuttype = 0 & tlvecz = 1),
            [
            gcode$ = 1
            feed = maxfeedpm
            ipr_type = 0
            ]
          if cuttype = 0, papproach0    #Toolplane Positioning
          if cuttype = 1, papproach1    #Axis Substitution
          if cuttype = 2, papproach2    #Polar Conversion
          absinc$ = sav_absinc
          pcan2        #Added so M and G codes in canned text will output before phsm2_on
          phsm2_on                                 #must remain after G43
          pe_inc_calc
          ps_inc_calc
          ]
        toolchng0 = 0
        ]

      #INCREMENTAL (references absolute calcs)
      if drillref = 1,       #(Inc from refht)
        [
        initht_i = initht_a - refht_a                              #Initial Height Inc
        refht_i = 0                                                #Reference Height Inc
        tosz_i = tosz_a - refht_a                                  #Top of Stock Inc
        ]
      else,                  #(Inc from initht)
        [
        initht_i = 0                                               #Initial Height Inc
        if org_tlvecz = 0 & not(tiltplane),                        #Drilling along X
          [
          refht_i = refht_a/xmult4 - initht_a/xmult4               #Ref Height Inc
          ]
        else, refht_i = refht_a - initht_a                         #Ref Height Inc
        tosz_i = tosz_a - initht_a                                 #Top of Stock Inc
        ]

      #TNC overrides
      initht_i = initht_a - tosz_a
      refht_i = refht_a - tosz_a
      depth_i = depth_a - tosz_a                                   #Depth Inc

      if convert_rpd$ = 1 & not(cuttype = 0 & tlvecz = 1),
        [
        gcode$ = 1
        feed = maxfeedpm
        ipr_type = 0
        ]
      else, gcode$ = 0
      feed = fr_pos$
      #if (drillcyc$ = 3 & use_pitch),
      #  [
      #  ipr_type = 3
      #  result = newfs(2,feed)
      #  if speed <> 0, feed = feed / speed
      #  else, feed = 0
      #  ]

      pdrill_time

      pbld, pn, sgfeed, pe
      plastdrill
      sav_safezone_flg = 0
      drlcommonb_flg = 0

plastdrill      #Last drill parameters
      last_initht_a = initht_a
      last_refht_a = refht_a
      last_tosz_a = tosz_a
      last_depth_a = depth_a
      last_peck1 = peck1$
      last_peck2 = peck2$
      last_peckclr = peckclr$
      last_retr = retr$
      last_dwell = dwell$
      last_shftdrl = shftdrl$
      last_drl_prm1 = drl_prm1$
      last_drl_prm2 = drl_prm2$
      last_drl_prm3 = drl_prm3$
      last_drl_prm4 = drl_prm4$
      last_drl_prm5 = drl_prm5$
      last_drl_prm6 = drl_prm6$
      last_drl_prm7 = drl_prm7$
      last_drl_prm8 = drl_prm8$
      last_drl_prm9 = drl_prm9$
      last_drl_prm10 = drl_prm10$
      last_drl_init_xabs = vequ(drl_init_xabs)
      last_drl_ref_xabs = vequ(drl_ref_xabs)

prdrlout        #R drill position
      if absinc$ = 0,
        [
        if recallflg | drlcyc = 0, result = force(refht_a,refht_a)
        refht_a, !refht_i
        ]
      else,
        [
        if recallflg | drlcyc = 0, result = force(refht_i,refht_i)
        refht_i, !refht_a
        ]

pdepth          #Drilling Depth output
      if absinc$ = 0,
        [
        if recallflg | drlcyc = 0, result = force(depth_a,depth_a)
        depth_a, !depth_i
        ]
      else,
        [
        if recallflg | drlcyc = 0, result = force(depth_i,depth_i)
        depth_i, !depth_a
        ]

pdrlxyz         #Drill XYZ coordinates
      if abs(ret_tlvecz) = 1 | tiltplane | not(abs(ret_tlvecx) = 1 | abs(ret_tlvecy) = 1),  #Drilling along Z
        [
        if force_dpts, pfxout, pfyout, !zabs, !zinc
        else, pxout, pyout, !zabs, !zinc
        ]
      else,
        [
        if abs(ret_tlvecx) = 1,  #Drilling along X
          [
          if force_dpts, pfyout, pfzout, !xabs, !xinc
          else, pyout, pzout, !xabs, !xinc
          ]
        if abs(ret_tlvecy) = 1,  #Drilling along Y
          [
          if force_dpts, pfxout, pfzout, !yabs, !yinc
          else, pxout, pzout, !yabs, !yinc
          ]
        ]

pdrill$         #Canned Drill Cycle
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq206,feed)
        result = nwadrs(strq202,peck1$)
        result = nwadrs(strq210,shftdrl$)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq211,dwell$)

        result = newfs(11,dwell$)
        result = newfs(11,last_dwell)

        if peck1$ > abs(depth_i), peck1$ = abs(depth_i)
        if fmtrnd(peck1$) = 0, peck1$ = abs(depth_i)
        last_peck1 = peck1$

        pbld, pn, "CYCL DEF", "200 DRILLING ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH ~", pe
        "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR PLNGNG ~", pe
        "      ", *peck1$, scomm_str, no_spc$, "PLUNGING DEPTH ~", pe
        "      ", *shftdrl$, scomm_str, no_spc$, "DWELL TIME AT TOP ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *dwell$, scomm_str, no_spc$, "DWELL TIME AT DEPTH", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

ppeck$          #Canned Peck Drill Cycle
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq206,feed)
        result = nwadrs(strq202,peck1$)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq212,peck2$)
        result = nwadrs(strq205,peckclr$)
        result = nwadrs(strq258,retr$)
        result = nwadrs(strq259,shftdrl$)
        result = nwadrs(strq257,drl_prm1$)
        result = nwadrs(strq256,drl_prm2$)
        result = nwadrs(strq211,dwell$)
        result = nwadrs(strq379,drl_prm3$)
        result = nwadrs(strq253,drl_prm4$)

        result = newfs(2,drl_prm1$)
        result = newfs(2,drl_prm2$)
        result = newfs(11,dwell$)
        result = newfs(2,drl_prm3$)
        result = newfs(29,drl_prm4$)
        result = newfs(2,last_drl_prm1)
        result = newfs(2,last_drl_prm2)
        result = newfs(11,last_dwell)
        result = newfs(2,last_drl_prm3)
        result = newfs(29,last_drl_prm4)

        if peck1$ > abs(depth_i), peck1$ = abs(depth_i)
        if fmtrnd(peck1$) = 0, peck1$ = abs(depth_i)
        last_peck1 = peck1$
        if peck2$ > abs(depth_i), peck2$ = abs(depth_i)
        if peckclr$ > abs(depth_i), peckclr$ = abs(depth_i)
        if retr$ > abs(depth_i), retr$ = abs(depth_i)
        if shftdrl$ > abs(depth_i), shftdrl$ = abs(depth_i)

        pbld, pn, "CYCL DEF", "205 UNIVERSAL PECKING ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH ~", pe
        "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR PLUNGING ~", pe
        "      ", *peck1$, scomm_str, no_spc$, "PLUNGING DEPTH ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *peck2$, scomm_str, no_spc$, "DECREMENT ~", pe
        "      ", *peckclr$, scomm_str, no_spc$, "MIN. PLUNGING DEPTH ~", pe
        "      ", *retr$, scomm_str, no_spc$, "UPPER ADV. STOP DIST. ~", pe
        "      ", *shftdrl$, scomm_str, no_spc$, "LOWER ADV.STOP DIST. ~", pe
        "      ", *drl_prm1$, scomm_str, no_spc$, "DEPTH FOR CHIP BRKNG ~", pe
        "      ", *drl_prm2$, scomm_str, no_spc$, "DIST. FOR CHIP BRKNG ~", pe
        "      ", *dwell$, scomm_str, no_spc$, "DWELL TIME AT DEPTH ~", pe
        "      ", *drl_prm3$, scomm_str, no_spc$, "STARTING POINT ~", pe
        "      ", *drl_prm4$, scomm_str, no_spc$, "F PRE-POSITIONING", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pchpbrk$        #Canned Chip Break Cycle
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq206,feed)
        result = nwadrs(strq202,peck1$)
        result = nwadrs(strq210,shftdrl$)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq212,peck2$)
        result = nwadrs(strq213,retr$)
        result = nwadrs(strq205,peckclr$)
        result = nwadrs(strq211,dwell$)
        result = nwadrs(strq208,drl_prm1$)
        result = nwadrs(strq256,drl_prm2$)

        result = newfs(11,dwell$)
        result = newfs(29,drl_prm1$)
        result = newfs(11,last_dwell)
        result = newfs(29,last_drl_prm1)

        if peck1$ > abs(depth_i), peck1$ = abs(depth_i)
        if fmtrnd(peck1$) = 0, peck1$ = abs(depth_i)
        last_peck1 = peck1$
        if peck2$ > abs(depth_i), peck2$ = abs(depth_i)
        if peckclr$ > abs(depth_i), peckclr$ = abs(depth_i)
        #if retr$ > abs(depth_i), retr$ = abs(depth_i)
        retr$ = int(retr$)
        if shftdrl$ > abs(depth_i), shftdrl$ = abs(depth_i)
        if met_tool$, drl_prm1$ = 99999  #forced rapid retract
        else, drl_prm1$ = 3000  #forced rapid retract
        plastdrill

        pbld, pn, "CYCL DEF", "203 UNIVERSAL DRILLING ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH ~", pe
        "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR PLUNGING ~", pe
        "      ", *peck1$, scomm_str, no_spc$, "PLUNGING DEPTH ~", pe
        "      ", *shftdrl$, scomm_str, no_spc$, "DWELL TIME AT TOP ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *peck2$, scomm_str, no_spc$, "DECREMENT ~", pe
        "      ", *retr$, scomm_str, no_spc$, "NR OF BREAKS ~", pe
        "      ", *peckclr$, scomm_str, no_spc$, "MIN. PLUNGING DEPTH ~", pe
        "      ", *dwell$, scomm_str, no_spc$, "DWELL TIME AT DEPTH ~", pe
        "      ", *drl_prm1$, scomm_str, no_spc$, "RETRACTION FEED RATE ~", pe
        "      ", *drl_prm2$, scomm_str, no_spc$, "DIST. FOR CHIP BRKNG", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

ptap$           #Canned Tap Cycle
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        #RH/LH based on spindle direction
        #if rigid_tap, pbld, pn, *sm29, *speed, pe           #Rigid Tapping
        if use_pitch = 0,
          [
          result = nwadrs(strq200,refht_i)
          result = nwadrs(strq201,depth_i)
          result = nwadrs(strq206,feed)
          result = nwadrs(strq211,dwell$)
          result = nwadrs(strq203,tosz_a)
          result = nwadrs(strq204,initht_i)

          result = newfs(11,dwell$)
          result = newfs(11,last_dwell)

          pbld, pn, "CYCL DEF", "206 TAPPING NEW ~", pe
          "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
          "      ", *depth_i, scomm_str, no_spc$, "DEPTH ~", pe
          "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR PLUNGING ~", pe
          "      ", *dwell$, scomm_str, no_spc$, "DWELL TIME AT DEPTH ~", pe
          "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
          "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE", pe

          pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
          ]
        else,
          [
          if n_tap_thds$ <> 0,
            [
            if met_tool$, pitch = n_tap_thds$  # Tap pitch (mm  per thread)
            else, pitch = 1/n_tap_thds$        # Tap pitch (inches per thread)
            ]
          if tool_typ$ = 4, pitch = abs(pitch)
          else, pitch = -abs(pitch)

          result = nwadrs(strq200,refht_i)
          result = nwadrs(strq201,depth_i)
          result = nwadrs(strq239,pitch)
          result = nwadrs(strq203,tosz_a)
          result = nwadrs(strq204,initht_i)

          pbld, pn, "CYCL DEF", "207 RIGID TAPPING NEW ~", pe
          "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
          "      ", *depth_i, scomm_str, no_spc$, "DEPTH OF THREAD ~", pe
          "      ", *pitch, scomm_str, no_spc$, "THREAD PITCH ~", pe
          "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
          "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE", pe

          pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
          ]
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pbore1$         #Canned Bore #1 Cycle
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq206,feed)
        result = nwadrs(strq211,dwell$)
        result = nwadrs(strq208,drl_prm1$)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)

        result = newfs(11,dwell$)
        result = newfs(29,drl_prm1$)
        result = newfs(11,last_dwell)
        result = newfs(29,last_drl_prm1)

        if met_tool$, drl_prm1$ = 99999  #forced rapid retract
        else, drl_prm1$ = 3000  #forced rapid retract
        plastdrill

        pbld, pn, "CYCL DEF", "201 REAMING ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH ~", pe
        "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR PLUNGING ~", pe
        "      ", *dwell$, scomm_str, no_spc$, "DWELL TIME AT DEPTH ~", pe
        "      ", *drl_prm1$, scomm_str, no_spc$, "RETRACTION FEED RATE ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pbore2$         #Canned Bore #2 Cycle
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq206,feed)
        result = nwadrs(strq211,dwell$)
        result = nwadrs(strq208,drl_prm1$)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq214,drl_prm5$)
        result = nwadrs(strq336,drl_prm6$)

        result = newfs(11,dwell$)
        result = newfs(29,drl_prm1$)
        result = newfs(11,last_dwell)
        result = newfs(29,last_drl_prm1)

        if met_tool$, drl_prm1$ = 99999  #forced rapid retract
        else, drl_prm1$ = 3000  #forced rapid retract
        plastdrill

        pbld, pn, "CYCL DEF", "202 BORING ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH ~", pe
        "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR PLUNGING ~", pe
        "      ", *dwell$, scomm_str, no_spc$, "DWELL TIME AT DEPTH ~", pe
        "      ", *drl_prm1$, scomm_str, no_spc$, "RETRACTION FEED RATE ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *drl_prm5$, scomm_str, no_spc$, "DISENGAGING DIRECTN ~", pe
        "      ", *drl_prm6$, scomm_str, no_spc$, "ANGLE OF SPINDLE", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pmisc1$         #Canned Misc #1 Cycle
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq249,peck2$)
        result = nwadrs(strq250,depth_i)
        result = nwadrs(strq251,peck1$)
        result = nwadrs(strq252,peckclr$)
        result = nwadrs(strq253,shftdrl$)
        result = nwadrs(strq254,feed)
        result = nwadrs(strq255,dwell$)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq214,drl_prm5$)
        result = nwadrs(strq336,drl_prm6$)

        result = newfs(29,shftdrl$)
        result = newfs(11,dwell$)
        result = newfs(29,drl_prm1$)
        result = newfs(29,last_shftdrl)
        result = newfs(11,last_dwell)
        result = newfs(29,last_drl_prm1)

        depth_i = abs(depth_i)

        pbld, pn, "CYCL DEF", "204 BACK BORING ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *peck2$, scomm_str, no_spc$, "DEPTH OF COUNTERBORE ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "MATERIAL THICKNESS ~", pe
        "      ", *peck1$, scomm_str, no_spc$, "OFF-CENTER DISTANCE ~", pe
        "      ", *peckclr$, scomm_str, no_spc$, "TOOL EDGE HEIGHT ~", pe
        "      ", *shftdrl$, scomm_str, no_spc$, "F PRE-POSITIONING ~", pe
        "      ", *feed, scomm_str, no_spc$, "F COUNTERSINKING ~", pe
        "      ", *dwell$, scomm_str, no_spc$, "DWELL TIME ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *drl_prm5$, scomm_str, no_spc$, "DISENGAGING DIRECTN ~", pe
        "      ", *drl_prm6$, scomm_str, no_spc$, "ANGLE OF SPINDLE", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pmisc2$         #Canned Misc #2 Cycle (User Option)
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq335,retr$)
        result = nwadrs(strq239,pitch)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq355,peck2$)
        result = nwadrs(strq253,shftdrl$)
        result = nwadrs(strq351,peckclr$)
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq207,feed)

        result = newfs(29,shftdrl$)
        result = newfs(29,last_shftdrl)

        if n_tap_thds$ <> 0,
          [
          if met_tool$, pitch = n_tap_thds$  # Tap pitch (mm  per thread)
          else, pitch = 1/n_tap_thds$        # Tap pitch (inches per thread)
          ]
        if tool_typ$ = 4 | tool_typ$ = 24, pitch = abs(pitch)
        else, pitch = -abs(pitch)

        pbld, pn, "CYCL DEF", "262 THREAD MILLING ~", pe
        "      ", *retr$, scomm_str, no_spc$, "NOMINAL DIAMETER ~", pe
        "      ", *pitch, scomm_str, no_spc$, "PITCH ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH OF THREAD ~", pe
        "      ", *peck2$, scomm_str, no_spc$, "THREADS PER STEP ~", pe
        "      ", *shftdrl$, scomm_str, no_spc$, "F PRE-POSITIONING ~", pe
        "      ", *peckclr$, scomm_str, no_spc$, "CLIMB OR UP-CUT ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR MILLNG", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pdrill_2$       #Canned Drill Cycle, additional points
      pdrill$

ppeck_2$        #Canned Peck Drill Cycle
      ppeck$

pchpbrk_2$      #Canned Chip Break Cycle
      pchpbrk$

ptap_2$         #Canned Tap Cycle
      ptap$

pbore1_2$       #Canned Bore #1 Cycle
      pbore1$

pbore2_2$       #Canned Bore #2 Cycle
      pbore2$

pmisc1_2$       #Canned Misc #1 Cycle
      pmisc1$

pmisc2_2$       #Canned Misc #2 Cycle
      pmisc2$

pdrlcst$        #Custom drill cycles 8 - 19 (user option)
      #Use this postblock to customize drilling cycles 8 - 19
      if not(machsimflg),
        [
        if drillcyc$ = 8, pdrlcyc9
        if drillcyc$ = 9, pdrlcyc10
        if drillcyc$ = 10, pdrlcyc11
        if drillcyc$ = 11, pdrlcyc12
        if drillcyc$ >= 12, pdrill$
        ]
      else,
        [
        pdrlcommonb
        pmachsim_drl_cst
        pcom_movea
        ]

pdrlcyc9        #Drill Cycle 9
      pdrlcommonb
      #if drillcyc = 8, pcan1, pbld, pn, *sgdrlref, pdrlxyz, pdepth, paout, pcout,
      #  prdrlout, dwell, *feed, strcantext, pe
      if drillcyc$ = 8,
        [
        sub_prg_call = peck1$
        pcan1, pbld, pn, *sg00, *sgabsinc, pfxout, pfyout, pfaout, pfcout, strcantext, pe
        #pbld, pn, "CALL LBL ", *sub_prg_call, pe  #Internal
        if scomm_sav <> snull, pbld, pn, "CALL PGM", *scomm_sav, pe  #External
        else, pbld, pn, "CALL PGM", *sub_prg_call, pe  #External
        ]
      pcom_movea

pdrlcyc10       #Drill Cycle 10
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq335,retr$)
        result = nwadrs(strq239,pitch)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq355,peck2$)
        result = nwadrs(strq253,shftdrl$)
        result = nwadrs(strq351,peckclr$)
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq358,drl_prm2$)
        result = nwadrs(strq359,dwell$)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq254,drl_prm1$)
        result = nwadrs(strq207,feed)

        result = newfs(29,shftdrl$)
        result = newfs(29,drl_prm1$)
        result = newfs(2,dwell$)
        result = newfs(29,last_shftdrl)
        result = newfs(29,last_drl_prm1)
        result = newfs(2,last_dwell)

        if n_tap_thds$ <> 0,
          [
          if met_tool$, pitch = n_tap_thds$  # Tap pitch (mm  per thread)
          else, pitch = 1/n_tap_thds$        # Tap pitch (inches per thread)
          ]
        if tool_typ$ = 4, pitch = abs(pitch)
        else, pitch = -abs(pitch)

        pn, "CYCL DEF", "267 OUTSIDE THREAD MLLNG ~", pe
        "      ", *retr$, scomm_str, no_spc$, "NOMINAL DIAMETER ~", pe
        "      ", *pitch, scomm_str, no_spc$, "PITCH ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH OF THREAD ~", pe
        "      ", *peck2$, scomm_str, no_spc$, "THREADS PER STEP ~", pe
        "      ", *shftdrl$, scomm_str, no_spc$, "F PRE-POSITIONING ~", pe
        "      ", *peckclr$, scomm_str, no_spc$, "CLIMB OR UP-CUT ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *drl_prm2$, scomm_str, no_spc$, "DEPTH AT FRONT ~", pe
        "      ", *dwell$, scomm_str, no_spc$, "OFFSET AT FRONT ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *drl_prm1$, scomm_str, no_spc$, "F COUNTERSINKING ~", pe
        "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR MILLNG", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pdrlcyc11       #Drill Cycle 11
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq206,feed)
        result = nwadrs(strq334,peck1$)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq335,retr$)
        result = nwadrs(strq342,peck2$)
        result = nwadrs(strq351,peckclr$)

        pbld, pn, "CYCL DEF", "208 BORE MILLING ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH ~", pe
        "      ", *feed, scomm_str, no_spc$, "FEED RATE FOR PLUNGING ~", pe
        "      ", *peck1$, scomm_str, no_spc$, "PLUNGING DEPTH ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *retr$, scomm_str, no_spc$, "NOMINAL DIAMETER ~", pe
        "      ", *peck2$, scomm_str, no_spc$, "ROUGHING DIAMETER ~", pe
        "      ", *peckclr$, scomm_str, no_spc$, "CLIMB OR UP-CUT", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pdrlcyc12       #Drill Cycle 12
      pdrlcommonb
      if recallflg | drlcyc = 0,
        [
        if n_tap_thds$ <> 0,
          [
          if met_tool$, pitch = n_tap_thds$  # Tap pitch (mm  per thread)
          else, pitch = 1/n_tap_thds$        # Tap pitch (inches per thread)
          ]
        if tool_typ$ = 4, pitch = abs(pitch)
        else, pitch = -abs(pitch)

        result = nwadrs(strq200,refht_i)
        result = nwadrs(strq201,depth_i)
        result = nwadrs(strq239,pitch)
        result = nwadrs(strq203,tosz_a)
        result = nwadrs(strq204,initht_i)
        result = nwadrs(strq257,peck1$)
        result = nwadrs(strq256,drl_prm2$)
        result = nwadrs(strq336,drl_prm6$)
        result = nwadrs(strq403,drl_prm7$)

        pbld, pn, "CYCL DEF", "209 TAPPING W/ CHIP BRKG ~", pe
        "      ", *refht_i, scomm_str, no_spc$, "SET-UP CLEARANCE ~", pe
        "      ", *depth_i, scomm_str, no_spc$, "DEPTH ~", pe
        "      ", *pitch, scomm_str, no_spc$, "PITCH ~", pe
        "      ", *tosz_a, scomm_str, no_spc$, "SURFACE COORDINATE ~", pe
        "      ", *initht_i, scomm_str, no_spc$, "2ND SET-UP CLEARANCE ~", pe
        "      ", *peck1$, scomm_str, no_spc$, "DEPTH FOR CHIP BRKNG ~", pe
        "      ", *drl_prm2$, scomm_str, no_spc$, "DIST. FOR CHIP BRKNG ~", pe
        "      ", *drl_prm6$, scomm_str, no_spc$, "ANGLE OF SPINDLE", pe
        #"      ", *drl_prm7$, scomm_str, no_spc$, "RPM FACTOR", pe

        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        drlcyc = 1
        recallflg = 0
        ]
      else,
        [
        pcan1, pbld, pn, *sg00, *sgdrlref, pdrlxyz, paout, pcout, "F MAX", "M99", strcantext, pe
        ]
      pcom_movea

pdrlcst_2$      #Custom drill cycles 8 - 19, additional points (user option)
      pdrlcst$

pcanceldc$      #Cancel canned drill cycle
      result = newfs(3,zinc)
      result = nwadrs(strf,feed)
      result = nwadrs(strdwell,dwell$)
      if drillref = 0, zabs = initht_a               #Make the initht the modal Z value
      else, zabs = refht_a
      prv_zia = zabs
      !zabs

      #Update coordinates when ending cycle and using clearance only at the start/end of cycle
      if opcode$ = 16 | (recallflg = 0 & clearflg = 1 & clearstrt = 1), xabs = vequ(last_drl_init_xabs)

      ps_inc_calc
      prv_gcode$ = 0
      pcan
      pcan1, pbld, pn, scoolant, strcantext, pe
      if opcode$ = 16 | (recallflg = 0 & clearflg = 1 & clearstrt = 1),
        [
        gcode$ = 0
        if convert_rpd$ = 1,
          [
          gcode$ = 1
          feed = maxfeedpm
          ipr_type = 0
          ]
        pbld, pn, *sgcode, [if gcode$ = 1, sgfeed], pxout, pyout, pfzout, [if gcode$ = 1, feed], [if gcode$ = 0, 'F MAX'], pe
        prv_feed = maxfeedpm
        if not(drlcommonb_flg) | recallflg | opcode$ <> 16, pcom_moveb   #Coords overwritten above so need to reset them
        ]
      if recallflg > 0,
        [
        #Set coordinates to initial height of current hole
        if drillref = 0, xabs = vequ(drl_init_xabs)
        else, xabs = vequ(drl_ref_xabs)
        ]
      pbld, pn, sgfeed, pe
      pcan2
      drlcyc = 0
      sav_dgcode = 0
      #result = force(gcode$,gcode$)

# Misc Output Blocks -------------------------------------------------------------------------------

ptoolcall       #Tool Call
      if stagetool >= 0,
        [
        if toolchng = 1, pn, ptoolcomm, pe
        else, pn, ptoolcomm, "- REPEAT", pe

        result = nwadrs(strs, speed)
        if cuttype <> 4,
          [
          pbld, pn, "TOOL CALL", no_spc$, " ", *t$, "Z", !plane$, *speed, "F1000", pe
          #pbld, pn, 'TOOL DEF', no_spc$, ' ', next_tool$, pe
          ]
        else,
          [
          pbld, pn, "TOOL CALL", no_spc$, " ", *t$, !plane$, pe
          ]
        if cuttime_out,    #Output cuttype from last tool, last tool to this op, output main file to the sub
          [
          if not(sof),
            [
            subout$ = 0
            result = fclose(scut_time)
            #Cycle Time Calc output
            total = tot_rtime + tot_ltime
            thour_out = int(total / 60)
            total = total - (thour_out * 60)
            tmin_out = int(total)
            tsec_out = frac(total) * 60
            @tsec_out
            n$ = sav_n_number
            pn, scomm_str, no_spc$, "Tool Cycle Time - ", no_spc$, *thour_out, no_spc$, *tmin_out, no_spc$, *tsec_out, no_spc$, scomm_end, pe

            #Reset counters
            tot_rtime = 0
            tot_ltime = 0

            sbufname10$ = scut_time
            size10 = rbuf(10,0)
            rc10 = 1
            while rc10 <= size10,
              [
              sresult = rbuf(10,rc10)
              if sresult = snull, pfe
              else, sresult, pe
              ]
            result = fclose(10)
            result = remove(scut_time)
            ]
          spathext$ = spathnc$
          snameext$ = "Cut Time"
          sextext$ = sextext
          scut_time = spathext$ + snameext$ + sextext$
          extprg$ = 1
          newext$
          subout$ = 3
          sav_n_number = n$
          n$ = n$ + seqinc$
          ]

        if cuttype = 4,
          [
          pbld, pn, scomm_str, scomm_end, pe
          pbld, pn, pzhome, pe
          if posttype$ = 2, pbld, pn, pxhome, pe
          pbld, pn, pyhome, pe
          pbld, pn, scomm_str, scomm_end, pe
          ]
        #pbld, pn, "M06", pe
        #pbld, pn, "TOOL DEF", no_spc$, " ", next_tool$, pe
        !next_tool$
        ]

pwcs            #G54+ coordinate setting at toolchange
      if wcstype <= 3,
        [
        sav_frc_wcs = force_wcs
        if sub_level$ > 0, force_wcs = 0
        pworkofs
        if workofs$ <> prv_workofs$ | (force_wcs & (toolchng | retflg)) | sof,
          [
          p_wcs = workofs$ + 1

          if wcstype = 0,
            [
            #Values before plane rotation format
            pbld, pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
            pbld, pn, "CYCL DEF", "7.1", *tox4$, pe
            pbld, pn, "CYCL DEF", "7.2", *toy4$, pe
            pbld, pn, "CYCL DEF", "7.3", *toz4$, pe

            #Values after plane rotation format
            #pbld, pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
            #pbld, pn, "CYCL DEF", "7.1", *tox$, pe
            #pbld, pn, "CYCL DEF", "7.2", *toy$, pe
            #pbld, pn, "CYCL DEF", "7.3", *toz$, pe
            ]

          if wcstype = 1,
            [
            #Table format - 7.0
            pbld, pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
            pbld, pn, "CYCL DEF", "7.1", 35, no_spc$, *p_wcs, pe

            #Table format with variables - 7.0
            #pbld, pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
            #pbld, pn, "CYCL DEF", "7.1", 35, no_spc$, "Q", no_spc$, *p_wcs, pe
            #where FN 0: Q0 = +0
            ]

          if wcstype = 2,
            [
            #Table format - 247
            pbld, pn, "CYCL DEF", "247", "PRESETTING", "~", pe
            "      ", "Q339=", no_spc$, "+", no_spc$, *p_wcs, no_spc$, "    ", no_spc$, scomm_str, no_spc$, "DATUM NUMBER", no_spc$, scomm_end, pe
            shiftflg = 0
            ]
          spaces$ = sav_spc #no_spc$ above is changing the spaces so the " " and this line have been added.
          ]
        force_wcs = sav_frc_wcs
        !workofs$
        ]

pworkofs        #Find current work offset separate from output for use in ptlchg0, etc
      if workofs_out >= 0, workofs$ = workofs_out
      if workofs$ = -1, workofs$ = 0

plocaloffset    #Set local work offset output
      pfbld, pn, "G92", *xh$, *yh$, *zh$, pe

pshiftbefore    #Shift plane based on world coords
      if shiftlocation = 0 & shiftflg = 0 & (fmtrnd(toxout) | fmtrnd(toyout) | fmtrnd(tozout)),
        [
        if wcstype >= 2,
          [
          pbld, pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
          pbld, pn, "CYCL DEF", "7.1", *tox4$, pe
          pbld, pn, "CYCL DEF", "7.2", *toy4$, pe
          pbld, pn, "CYCL DEF", "7.3", *toz4$, pe
          shiftflg = 1    #world
          ]
        ]

pshiftafter     #Shift plane based on plane coords
      if shiftlocation = 2, toxout = vequ(tox$) #shiflocation 0 and 1 have calc in pxyzcout
      if shiftlocation = 2 & shiftflg = 0 & (fmtrnd(toxout) | fmtrnd(toyout) | fmtrnd(tozout)),
        [
        if wcstype >= 2,
          [
          pbld, pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
          pbld, pn, "CYCL DEF", "7.1", *tox$, pe
          pbld, pn, "CYCL DEF", "7.2", *toy$, pe
          pbld, pn, "CYCL DEF", "7.3", *toz$, pe
          shiftflg = 2    #plane
          ]
        ]

pshiftcancel    #Cancel plane shift
      if shiftflg = 1 | shiftflg = 2,
        [
        pbld, pn, "CYCL DEF", "7.0", "DATUM SHIFT", pe
        pbld, pn, "CYCL DEF", "7.1", "X+0", pe
        pbld, pn, "CYCL DEF", "7.2", "Y+0", pe
        pbld, pn, "CYCL DEF", "7.3", "Z+0", pe
        shiftflg = 0
        ]

pfshiftcancel   #Force cancel plane shift
      shiftflg = 1
      pshiftcancel

phsm1_on        #High speed functions before G43
      if opcode$ = 3 | opcode$ = 16 | safezone_flg,
        [
        mr1$ = 0
        mr2$ = 0
        ]
      if mr1$ = 1 & mr1flg <> 1 | (mr1$ = 1 & (mr2$ <> last_mr2 | mr3$ <> last_mr3)),
        [
        if mr1flg = 1, phsm_off
        if mr2$ = 0,
          [
          if met_tool$, mr2$ = 0.003
          else, mr2$ = 0.0001
          ]
        pbld, pn, "CYCL DEF", "32.0", "TOLERANCE", pe
        pbld, pn, "CYCL DEF", "32.1", *mr2$, pe
        #pbld, pn, "CYCL DEF", "32.2", "HSC-MODE:", *mr3$, [if cctotip$ = 0 & tcp, "TA2"], pe  #TA is angular slop, must be in M128
        pbld, pn, "CYCL DEF", "32.2", "HSC-MODE:", *mr3$, [if mr4$, *mr4$], pe  #TA is angular slop, must be in M128
        mr1flg = 1
        ]

phsm2_on        #High speed functions after G43
      if opcode$ = 3 | opcode$ = 16 | safezone_flg,
        [
        mr1$ = 0
        mr2$ = 0
        ]

phsm_off        #High speed functions off
      if mr1flg = 1,
        [
        pbld, pn, "CYCL DEF", "32.0", "TOLERANCE", pe
        pbld, pn, "CYCL DEF", "32.1", pe
        mr1flg = 0
        ]
      hsmflg = 0

prestart        #Restart coolant and spindle after M01
      if strcantext = sm00 | strcantext = sm01,
        [
        if v9_coolant,
          [
          if coolant$, pbld, pn, *scoolant, pe
          ]
        else,
          [
          if coolantx, pbld, pn, *scoolantx, pe
          ]
        if speed,
          [
          pbld, pn, pgear, pe
          pbld, pn, pfspindleout, pe
          ]
        !speed, !spdir2
        ]

pcss_start_rpm  #Start the spindle in RPM mode - css_start_rpm
      css_actv$ = 0
      !css_actv$
      if not(opcode$ = 106 & suppress_point_spindle), *sg9697, *speedcss, pfspindlecode
      css_actv$ = 1
      result = force(speed,speed)     #make sure speed comes out afterwards on g96 line

pcssg50         #Output max spindle speed clamp
      if not(opcode$ = 106 & suppress_point_spindle), *sg50, *maxss$

pspindlecode       #Spindle M code output
      if cuttype <> 4, spindlem
      else, spindle

pfspindlecode      #Force spindle M code output
      if cuttype <> 4, *spindlem
      else, *spindle

plspindlecode      #Force spindle M code output for last axcomb
      if last_cuttype <> 4, spindlem
      else, spindle

pspindchng1     #Spindle change, shut off spindle
      spdir2 = 1
      pbld, pn, pspindlecode, pe
      pspindle                                 #recalc spdir2
      prv_speed = c9k                          #Force speed

pspindchng2     #Spindle change, restart spindle
      if prv_speed <> speed | prv_spdir2 <> spdir2 | (css_actv$ & retflg),
        [
        if prv_spdir2 <> spdir2, pspindchng1
        if speed,
          [
          pbld, pn, pgear, pe
          if css_actv$ & css_start_rpm & (retflg | prv_spdir2 <> spdir2), pbld, pn, pcss_start_rpm, pe
          else,
            [
            "FUNCTION TURNDATA SPIN"
            if css_actv$,
              [
              result = nwadrs("VC:", speed)
              speed = speed * 12
              "VCONST:ON", *speed, *maxss$, pe
              speed = speed/12
              !speed
              ]
            else,
              [
              result = nwadrs(strs, speed)
              "VCONST:OFF", *speed, pe
              ]
            spnd_frc_flg = 1
            if prv_spdir2 <> spdir2, pbld, pn, pfspindleout, pe
            else, pbld, pn, pspindleout, pe
            ]
          ]
        ]
      else,
        [
        if fmtrnd(maxss$) <> prv_maxss$ & css_actv$, pbld, pn, pcssg50, pe
        ]
      !speed, !spdir2

pfspindleout    #Spindle speed and M code output forced
      if not((opcode$ = 3 | opcode$ = 16 | opcode$ = 105) & nextdc$ = 3 & rigid_tap),
        [
        pfspindlecode
        ]

pspindleout     #Spindle speed and M code output modal
      if speed <> prv_speed,
        [
        if spdir2 <> prv_spdir2,
          [
          if prv_spdir2 <> 1, pbld, pn, *sm05, pe
          prv_spdir2 = 1
          ]
        #if cuttype <> 4,
        #  [
        #  if toolchng | toolchng0, ptoolcall
        #  else, pbld, pn, "TOOL CALL ", no_spc$, "Z ", !plane$, no_spc$, *speed, pe  #if not clear of the part, do not recall the tool number
        #  pbld, pn, pfspindlecode, pe
        #  ]
        #else, pfspindlecode
        speed, pspindlecode
        ]

ptiltrothome    #Reset the Tilt and Rotary axis revolution counter
      tiltrothome_flg = 1
      ptilthome, [if b_axis_table & axcomb = 2, "B+0"], prothome, [if axcomb = 1, "C+0"]

      if machsimflg,
        [
        pfe
        smachsim_comment = smachsim_block_comment + " tiltrothome"
        tilt_machsim = aabs

        #ABSOLUTE ZERO RETURN
        #rot_machsim = cabs
        #pmachsim_mach_out

        #CLOSEST ZERO RETURN
        rot_machsim = round(rot_machsim/360.) * 360.
        pmachsim_mach_out

        #UNCOMMENT BELOW FOR ROTARY TO SNAP TO C0 WITHOUT INTERPOLATION AFTER CLOSEST ZERO RETURN
        rot_machsim = cabs  #Full zero return
        skipinterp_flg = 1
        pmachsim_mach_out
        skipinterp_flg = 0
        smachsim_comment = ""
        ]
      tiltrothome_flg = 0

prothome        #Reset the Rotary axis revolution counter
      revr = 0
      prv_revr = 0
      sav_revr = 0
      tmp_revr = 0
      cabs = 0
      cinc = 0
      csav = 0
      movec = 0
      if srot_label <> snull, pfcout
      prvcabs = 0
      !csav, !cabs

      if machsimflg & not(tiltrothome_flg),
        [
        pfe
        smachsim_comment = smachsim_block_comment + " rothome"
        #ABSOLUTE ZERO RETURN
        #rot_machsim = cabs
        #pmachsim_mach_out

        #CLOSEST ZERO RETURN
        rot_machsim = round(rot_machsim/360.) * 360.
        pmachsim_mach_out

        #UNCOMMENT BELOW FOR ROTARY TO SNAP TO C0 WITHOUT INTERPOLATION AFTER CLOSEST ZERO RETURN
        rot_machsim = cabs  #Full zero return
        skipinterp_flg = 1
        pmachsim_mach_out
        skipinterp_flg = 0
        smachsim_comment = ""
        ]

prothome1       #Reset the Rotary axis revolution counter, no output
      revr = 0
      prv_revr = 0
      sav_revr = 0
      tmp_revr = 0
      cabs = 0
      cinc = 0
      csav = 0
      movec = 0
      #pfcout
      prvcabs = 0
      !csav, !cabs

ptilthome       #Reset the Tilt axis revolution counter
      revt = 0
      sav_revt = 0
      tmp_revt = 0
      aabs = 0
      asav = 0
      movea = 0
      if stilt_label <> snull, pfaout
      prvaabs = 0
      !asav, !aabs

      if machsimflg & not(tiltrothome_flg),
        [
        pfe
        smachsim_comment = smachsim_block_comment + " tilthome"
        tilt_machsim = aabs
        pmachsim_mach_out
        smachsim_comment = ""
        ]

ptilthome1      #Reset the Tilt axis revolution counter, no output
      revt = 0
      sav_revt = 0
      tmp_revt = 0
      aabs = 0
      asav = 0
      movea = 0
      #pfaout
      prvaabs = 0
      !asav, !aabs

pcheckaxis      #Check for valid rotary axis
      #If axis combination has changed
      #if axcomb <> last_axcomb & not(sof),
      #  [
      #  pbld, pn, *sgcode, ptiltrothome, "F MAX", pe
      #  prv_feed = maxfeedpm
      #  ]

pdyndatum       #Dynamic datum on
      if dyndatum & tcp = 0 & dyndatumflg = 0,    #No G54.2 with G43.4
        [
        "G54.2", "P1"
        dyndatumflg = 1
        ]

pdyndatumcancel #Cancel dynamic datum
      if dyndatumflg,
        [
        pbld, pn, "G54.2", "P0", *sg53, *z_home, pe
        dyndatumflg = 0
        ]

pmodesel        #Output code for milling/turning mode selection
      if cuttype = 4 | nextop$ = 1003,
        [
        #if orient$ = 1, asav = asav + 90   #Vertical tool - insert down, left
        #if orient$ = 2, asav = asav + 90   #Vertical tool - insert down, right
        #if orient$ = 3 & vertical_tool = 1, asav = asav - 90  #Vertical tool - insert up, right
        #if orient$ = 3 & vertical_tool = 0, asav = asav + 0   #Vertical tool - insert up, right
        #if orient$ = 4 & vertical_tool = 1, asav = asav - 90  #Vertical tool - insert up, left
        #if orient$ = 4 & vertical_tool = 0, asav = asav + 0   #Vertical tool - insert up, left
        #if orient$ = 5, asav = asav + 0    #Horizontal tool - insert down, left
        #if orient$ = 6, asav = asav + 180  #Horizontal tool - insert down, right
        #if orient$ = 7, asav = asav + 180  #Horizontal tool - insert up, right
        #if orient$ = 8, asav = asav + 0    #Horizontal tool - insert up, left

        if orient$ = 5 | orient$ = 6 | orient$ = 7 | orient$ = 8,
          [
          modesel = 1  #Vertical
          ]
        else,
          [
          modesel = 2  #Horizontal
          ]
        #based on tool angle or orientation
        rotlockflg = 2         #Lathe mode selection unlocks rotary axis
        rotlock = 2
        !rotlock
        ]
      else, modesel = 0
      #~modesel, prv_modesel, ~axcomb, ~last_axcomb, pe
      if modesel <> prv_modesel | sof,
        [
        #pbld, pn, "M145", pe
        #pbld, pn, smodesel, pe
        #if posttype$ = 2, pbld, pn, "M144", pe
        if modesel = 0,
          [
          pbld, pn, "CYCL DEF 350 Turn-Mill ~", pe
          "      ", "Q1530=+0", no_spc$, scomm_str, "0=Mill 1=Turn ~", pe
          "      ", "Q1535=+0", no_spc$, scomm_str, "Insert 6 degree mult ~", pe
          "      ", "Q1536=+0", no_spc$, scomm_str, "0=Hori 1=Vert ~", pe
          "      ", "Q1537=+0", no_spc$, scomm_str, "0=No 1=Yes", pe
          ]
        if modesel = 1,
          [
          pbld, pn, "M129", "M145", "M137", pe
          pbld, pn, "CYCL DEF 350 Turn-Mill ~", pe
          "      ", "Q1530=+1", no_spc$, scomm_str, "0=Mill 1=Turn ~", pe
          "      ", "Q1535=+0", no_spc$, scomm_str, "Insert 6 degree mult ~", pe
          "      ", "Q1536=+1", no_spc$, scomm_str, "0=Hori 1=Vert ~", pe
          "      ", "Q1537=+0", no_spc$, scomm_str, "0=No 1=Yes", pe
          pbld, pn, "M136", "M144", pe
          ]
        if modesel = 2,
          [
          pbld, pn, "CYCL DEF 350 Turn-Mill ~", pe
          "      ", "Q1530=+1", no_spc$, scomm_str, "0=Mill 1=Turn ~", pe
          "      ", "Q1535=+0", no_spc$, scomm_str, "Insert 6 degree mult ~", pe
          "      ", "Q1536=+0", no_spc$, scomm_str, "0=Hori 1=Vert ~", pe
          "      ", "Q1537=+0", no_spc$, scomm_str, "0=No 1=Yes", pe
          ]
        #if posttype$ = 2, pbld, pn, "M144", pe
        ]

pdiasel         #Output code for radius/diameter mode selection
      if cuttype = 4, diasel = xmult4    #Turning
      else, diasel = 1
      #~diasel, prv_diasel, ~cuttype, pe
      sdiasel

ptoolbreak      #Check for broken tool
      if last_mi9,
        [
        revt = 0
        sav_revt = 0
        aabs = 0
        asav = 0
        movea = 0
        pbld, pn, *sg00, *aabs, "F MAX", pe
        prvaabs = 0
        !asav, !aabs, !ainc
        pbld, pn, "TCH PROBE 586 TOOL BREAKAGE DETECT ~", pe
        "      ", "Q356=+1", no_spc$, scomm_str, "MEAS. DIRECTION ~", pe
        "      ", "Q357=+0", no_spc$, scomm_str, "RADIAL OFFSET ~", pe
        "      ", "Q359=+0", no_spc$, scomm_str, "ADD. LENGTH CORRECT ~", pe
        "      ", "Q375=+0", no_spc$, scomm_str, "APPROACH STRATEGY ~", pe
        "      ", "Q376=+20", no_spc$, scomm_str, "SAFETY DISTANCE", pe
        #if last_mi9 = 1, pfbld, pn, "TCH PROBE 481 TOOL BREAKAGE DETECT ~", pe
        #if last_mi9 = 2, pfbld, pn, "TCH PROBE 481 TOOL LENGTH ~", pe
        #if last_mi9 = 1, "      ", "Q340=+1", no_spc$, scomm_str, "CHECK ~", pe
        #if last_mi9 = 2, "      ", "Q340=+0", no_spc$, scomm_str, "MEASURE ~", pe
        #"      ", "Q260=+100", no_spc$, scomm_str, "CLEARANCE HEIGHT~", pe
        #"      ", "Q341=+0", no_spc$, scomm_str, "PROBING THE TEETH.", pe
        pfbld, pn, pzhome, pe
        #pfbld, pn, "TOOL CALL", no_spc$, " ", *t$, "Z", !plane$, *speed, pe
        ]

pfdyndatumcancel #Force cancel dynamic datum
      if dyndatum,
        [
        dyndatumflg = 1
        pdyndatumcancel
        ]

# Subprogram Blocks --------------------------------------------------------------------------------

#psub_call_tt$   #Call to transform of transform sub
#      #need to uncomment mrg_subfile$ in peof$
#      result = nwadrs(strp,main_prg_no$)
#      main_prg_no$ = main_prg_no$ + sav_progno             #Add sub number offset
#      if sav_progno = main_prg_no$, result = mprint(sprgnerror)
#      pbld, pn, "M98", *main_prg_no$, pe
#      subprgflg = 1

#psub_st_tt$     #Header in transform of transform sub
#      result = nwadrs(stro,main_prg_no$)
#      pfe
#      spaces$ = 0
#      #adding comment to the sub line makes it show up on the control
#      *main_prg_no$, " ", scomm_str, *sprogname$, *main_prg_no$, scomm_end, pe
#      if scomm_sav <> snull, scomm_str, no_spc$, *scomm_sav, no_spc$, scomm_end, pe
#      spaces$ = sav_spc
#      pbld, pn, sgabsinc, pe

#psub_end_tt$    #End in transform of transform sub
#      pn, "M99", pe
#      prv_absinc$ = -1
#      subprgflg = 0

psub_call_m$    #Call to main level, single tool
      psub_call_trans

psub_call_mm$   #Call to main level, multiple tools
      psub_call_trans

psub_call_trans #Translate level calls from toolchange, user
      if wcstype <= 1, result = mprint(shomeserror)
      sav_absinc = absinc$
      #Mirror or Rotate Coord's
      if sub_trnstyp$ = 0 | (sub_trnstyp$ = 1 & mr_rt_actv),
        [
        #The original pattern is not mirrored or rotated
        if sub_sec_no$,
          [
          absinc$ = 0
          if sub_trnstyp$, psub_rotate
          else, psub_mirror
          ]
        mr_rt_actv = 3
        ]
      else, #Translate
        [
        if sub_mny_t$,
          [
          absinc$ = 0
          pbld, pn, protunlock, pe
          pbld, pn, ptiltunlock, pe
          pwcs
          pbld, pn, *sgcode, *sgabsinc, pfxout, pfyout, pfzout, pfaout, pfcout, pe
          pbld, pn, protlock, pe
          pbld, pn, ptiltlock, pe
          if machsimflg,
            [
            pmachsim_calc
            xmachsim = vequ(xmachsim_calc)
            machmovex_flg = vequ(zerox)
            tilt_machsim = aabs
            rot_machsim = cabs
            pmachsim_rel_out
            ]
          pe_inc_calc
          ps_inc_calc
          ]
        ]
      absinc$ = sav_absinc
      main_prg_no$ = main_prg_no$ + sav_progno #Add sub number offset
      if sav_progno = main_prg_no$, result = mprint(sprgnerror)
      pbld, pn, "CALL LBL ", *main_prg_no$, pe
      prv_feed = c9k #Force feed in sub
      subprgflg = 1

psub_mirror     #Mirror start code, user
      #Mirror Y axis
      if sub_trnmthd$, pbld, pn, *sgabsinc, strns_mir_on, *sub_trnsx$, pe
      #Mirror X axis
      else, pbld, pn, *sgabsinc, strns_mir_on, *sub_trnsy$, pe

psub_rotate     #Rotate start code, user
      pbld, pn, *sgcode, *sgabsinc, strns_rot_on, *sub_trnsx$, *sub_trnsy$,
        [absinc$ = 1], *sgabsinc, *rt_cinc, pe

psub_st_m$      #Header in main level
      #if sub_sec_no$ = 0, psubname_m  #external file
      #if sub_sec_no$ = 0, psubname_m_int  #internal file
      pn, scomm_str, pe
      pn, "LBL ", *main_prg_no$, pe
      spaces$ = 0
      if scomm_sav <> snull, pn, pspc, scomm_str, no_spc$, *scomm_sav, no_spc$, scomm_end, pe
      spaces$ = sav_spc
      #G51/G68 requires absolute position on first move
      if mr_rt_actv & absinc$ = 1,
        [
        sav_absinc = absinc$
        absinc$ = 0
        prv_absinc$ = -1
        prv_xabs = -1
        prv_yabs = -1
        ]
      else, pbld, pn, sgabsinc, pe

psub_end_m$     #End in main level
      pn, "LBL 0", pe
      prv_absinc$ = -1
      #Reset update variables for subs at main level
      #Mirror or Rotate cancel, output is forced
      if (sub_trnstyp$ = 0 & esub_sec_no$ > 0)
        | (sub_trnstyp$ = 1 & esub_sec_no$ = esub_totl_no$-1
        & sub_trnmthd$ = 2),
        [
        subout$ = 0
        no_nc_out$ = -1
        sav_absinc = absinc$
        #Mirror cancel
        if sub_trnstyp$ = 0,
          [
          absinc$ = 0
          pbld, pn, *sgabsinc, strns_mir_off, *sub_trnsx$, *sub_trnsy$, pe
          ]
        #Rotate cancel
        else,
          [
          pbld, pn, strns_rot_off, pe
          ]
        absinc$ = sav_absinc
        no_nc_out$ = 0
        ]
      end_sub_mny = sub_mny_t$
      subprgflg = 0

psub_end_mny    #End in main level for many tools sub, user
      #Check for coming out of xform with stage tool.
      if end_sub_mny & stagetool = 1,
        [
        *t$
        end_sub_mny = 0
        ]

psub_call_s$    #Call to sub level
      result = nwadrs(snull,sub_prg_no$)
      sub_prg_no$ = sub_prg_no$ + sav_progno + 1000             #Add sub number offset
      if sav_progno = sub_prg_no$, result = mprint(sprgnerror)
      pbld, pn, "CALL LBL ", *sub_prg_no$, pe
      subprgflg = 1

psub_st_s$      #Header in sub level
      #if sub_sec_no$ = 1, psubname_s  #external file
      #if sub_sec_no$ = 1, psubname_s_int  #internal file
      pn, scomm_str, pe
      pn, "LBL ", *sub_prg_no$, pe
      spaces$ = 0
      #adding comment to the sub line makes it show up on the control
      if scomm_sav <> snull, scomm_str, no_spc$, *scomm_sav, no_spc$, scomm_end, pe
      spaces$ = sav_spc
      pbld, pn, sgabsinc, pe

psub_end_s$     #End in sub level
      pn, "LBL 0", pe
      prv_absinc$ = -1
      subprgflg = 0

psubname_m      #Name the main subprogram
      snamesub$ = no2str(main_prg_no$)
      sextsub$ = sextnc$
      subprg$ = 1
      newsub$
      subprglaunch = 1

psubname_s      #Name the sub subprogram
      snameaux$ = no2str(sub_prg_no$)
      sextaux$ = sextnc$
      auxprg$ = 1
      newaux$
      subprglaunch = 2

psubname_m_int  #Name the main subprogram
      snamesub$ = snamenc$
      sextsub$ = sextsub
      subprg$ = 1
      newsub$

psubname_s_int  #Name the sub subprogram
      snameaux$ = snamenc$
      sextaux$ = sextaux
      auxprg$ = 1
      newaux$

psublaunch      #Open external sub in editor
      if subprglaunch = 1 & subprgflg = 0,
        [
        sfilesub = spathsub$ + snamesub$ + sextsub$
        result = fclose(sfilesub)
        sfilesub = squote + spathsub$ + snamesub$ + sextsub$ + squote
        result = launch("explorer.exe",sfilesub)
        subprglaunch = 0
        ]
      if subprglaunch = 2 & subprgflg = 0,
        [
        sfileaux = spathaux$ + snameaux$ + sextaux$
        result = fclose(sfileaux)
        sfileaux = squote + spathaux$ + snameaux$ + sextaux$ + squote
        result = launch("explorer.exe",sfileaux)
        subprglaunch = 0
        ]

# Renishaw Probe Variables -------------------------------------------------------------------------
sx_support_mc$ : "1"    #Enable new probe functionality
x_probe_opt$ : 1022
#force_tlchg$ : 3        #First operation marks input SOF as done; # ASCII NCI toolchange Gcodes are not altered - X8
#force_tlchg$ : 0        #First operation marks input SOF as done; # ASCII NCI toolchange Gcodes are not altered - X9 and up

# --------------------------------------------------------------------------------------------------
# LATHE CANNED CYCLE SETUP
# --------------------------------------------------------------------------------------------------

# LCC String Selects -------------------------------------------------------------------------------

# Select canned cycle type, profile is direction of finish profile vector
sthdg32     : "G32"    #Cycle type G32
sthdg76     : "G276"     #Cycle type G76
sthdg92     : "G292"     #Cycle type G92
sthdg33     : "G32"     #Cycle type G32 with alternating position
sthdgcode   : ""       #Target for string

fstrsel sthdg32 thdtype$ sthdgcode 4 -1
# --------------------------------------------------------------------------------------------------
# Select canned cycle type
sg70lcc     : "G270"     #Cycle type G70
sg71lcc     : "G271"     #Cycle type G71
sg72lcc     : "G272"     #Cycle type G72
sg73lcc     : "G273"     #Cycle type G73
sg74lcc     : "G274"     #Cycle type G74
sg75lcc     : "G275"     #Cycle type G75
scclgcode   : ""    #Target for string

fstrsel sg70lcc gcodecc scclgcode 6 -1

# LCC Format Statements ----------------------------------------------------------------------------

fmt   2  depthcc
fmt   2  clearcc
fmt   2  xstckcc
fmt   2  zstckcc
fmt   4  ncutscc
fmt     2   stepcc
fmt  ""  4  ng70s       #P line number in canned cycle
fmt  "Q" 4  ng70e       #Q line number in canned cycle
fmt  "U" 2  g73x        #Stored offset of canned cycle rough cut G73
fmt  "V" 2  g73y        #Stored offset of canned cycle rough cut G73
fmt  "W" 2  g73z        #Stored offset of canned cycle rough cut G73
fmt  "P" 2  grvspcc
fmt  "Q" 2  grvdpcc
fmt     2   patofsang

fmt  "P" 26  thddepth$    #Thread height absolute
fmt  "Q" 26  thdfirst$    #First depth cut in thread
fmt  "Q" 26  thdlast$     #Last depth cut in thread
fmt  "R" 2  thdfinish$   #G76 thread finish allowance
fmt  "R" 3  thdrdlt     #Thread R delta G92 and G76
fmt  "U" 3  thd_dirx    #Incremental X move for G76 mult starts
fmt  "W" 3  thd_dirz    #Incremental Z move for G76 mult starts
fmt  "P" 5  nspring$     #Number of spring cuts
fmt     5   thdpull     #G76 thread pull off
fmt     5   thdang      #G76 threading angle

# LCC Variables ------------------------------------------------------------------------------------

gcodecc      : 0      #Canned turning cycle gcode
y_axis       : 0      #Flag for Y axis machining (implies over center)
directcc     : 0      #Direction from parameters
dopeckcc     : 0      #Do peck from groove parameters
foundcc      : 0      #Return found from G70 read
cc_stop_fcc  : 0      #Stop output with rough only
lcc_cc_pos   : 0      #Position for lathe canned cycle cutter comp. enable
lccdirx      : 0      #Canned cycle X vector direction
lccdirz      : 0      #Canned cycle Z vector direction
lcc_xcst     : 0      #Lathe canned cycle contour start position
lcc_ycst     : 0      #Lathe canned cycle contour start position
lcc_zcst     : 0      #Lathe canned cycle contour start position
lcc_xcend    : 0      #Lathe canned cycle contour end position
lcc_ycend    : 0      #Lathe canned cycle contour end position
lcc_zcend    : 0      #Lathe canned cycle contour end position
lcc_move     : 0.05   #Enter the move in X, Z for lathe canned cycle comp.
lcc_move_m   : 1.25   #Enter the move in X, Z for lathe canned cycle comp.,mm
sextcan      : ".can"
copy_x       : 0
copy_y       : 0
copy_z       : 0
sav_subout   : 0
g71type      : 0      #lathe plunge for G71 type 1 or type 2 cycle
sav_bug2     : bug2$  #Saved setting for bug2
lathecc      : 0      #Flag for canned turning cycle type
                      #1 = G71/G72 rough cycle
                      #2 = G73 pattern repeating cycle
                      #3 = G74/G75 groove cycle
                      #4 = Finish pass for types 1 and 2
                      #Neg.=rough and finish, Pos.=rough only
latheccread  : 0      #param table number
sav_iprcc    : 0
sav_feedcc   : 0
sav_feed     : 0
sav_ipr      : 0

nstart_cnt  : 0     #Counter for multiple threads
thd_vlen    : 0     #Incremental X move for G76 mult starts
xmaj_thd    : 0     #X major dia. from parameters
zstrt_thd   : 0     #Z start from parameters
zend_thd    : 0     #Z end from parameters
face_thd    : 0     #Face thread from parameters

# LCC Parameter Tables -----------------------------------------------------------------------------

fprmtbl 101 5 #Rough cut parameters
        13343 depthcc
        10407 clearcc
        10202 xstckcc
        10203 zstckcc
        10214 directcc

fprmtbl 102 5 #Finish cut parameters
        13341 ncutscc
        10101 depthcc
        10102 xstckcc
        10103 zstckcc
        13149 patofsang

fprmtbl 103 5 #Groove cut parameters
        13358 stepcc
        13138 directcc
        13352 dopeckcc
        10316 depthcc
        13364 clearcc

fprmtbl 104 4 #Thread cut parameters
        10811 xmaj_thd
        10813 zstrt_thd
        10814 zend_thd
        10819 face_thd

# LCC Non Output Blocks ----------------------------------------------------------------------------

plccsetup       #One time setup items
      sbufname3$ = spathnci$ + snamenci$ + sextcan
      spathext$ = spathnci$
      snameext$ = snamenci$

      #Set metric defaults
      if met_tool$ = 1,
        [
        lcc_move = lcc_move_m
        ]
      #Setup for old or new style canned cycles
      if old_new_sw = 1,
        [
        result = newfs(26,thddepth$)
        result = newfs(26,thdfirst$)
        ]
      else,
        [
        result = nwadrs(stra,thdang)
        result = nwadrs(stri,thdrdlt)
        result = nwadrs(strk,thddepth$)
        result = nwadrs(strd,thdfirst$)
        #Lathe canned cycle old style conversion
        result = nwadrs(strd,depthcc)
        result = nwadrs(strd,ncutscc)
        result = nwadrs(stri,g73x)
        result = nwadrs(strk,g73z)
        result = nwadrs(stri,grvspcc)
        result = nwadrs(strk,grvdpcc)
        ]

plccop          #Operation level setup items
      gcodecc = 0
      lathecc = 0
      if tool_op$ > 201,
        [
        if tool_op$ = 202 | tool_op$ = 203,
          [
          gcodecc = 1
          lathecc = 1
          if tool_op$ = 203, lathecc = -1
          ]
        else,
          [
          if tool_op$ = 204 | tool_op$ = 205,
            [
            gcodecc = 2
            lathecc = 1
            if tool_op$ = 205, lathecc = -1
            ]
          else,
            [
            if tool_op$ = 206 | tool_op$ = 207,
              [
              gcodecc = 3
              lathecc = 2
              if tool_op$ = 207, lathecc = -2
              ]
            else,
              [
              if tool_op$ = 208,
                [
                gcodecc = 4
                lathecc = 3
                ]
              ]
            ]
          ]
        ]

pcur_recd       #Write to the current tool record
      #comp_type      : 0      #Cutter compensation type - 0=computer, 1=control, 2=wear, 3=reverse wear, 4=off
      #comp_side      : 0      #Cutter compensation direction - 0=left, 1=right
      #cc_pos$ is not working properly for lathe toolpaths
      if (comp_type = 1 | comp_type = 2 | comp_type = 3) & cuttype = 4,
        [
        if comp_side = 0, c4_cc_pos = 1
        else, c4_cc_pos = 2
        ]
      else, c4_cc_pos = 0
      #c4_cc_pos = cc_pos$
      c4_lathecc = lathecc
      c4_gcodecc = gcodecc
      c4_ss = abs(ss$)
      c4_fr_pos = fr_pos$
      c4_t = t$
      c4_ipr_actv = ipr_actv$
      c4_cc_pos = wbuf(4,wc4)

preadcur_nxt    #Read current and next tool record
      c4_cc_pos = rbuf(4,rc4)     #Current tool record and preload these variables for param reading
      lathecc = c4_lathecc
      gcodecc = c4_gcodecc

      n4_cc_pos = rbuf(4,nc4)     #Next tool record

      sav_feedcc = c4_fr_pos    #Use the buffered feed value for the operation, not the current fr_pos

prcc_setup$      #Lathe canned cycle setup, Capture values from rough
      sav_iprcc = c4_ipr_actv
      if orient$ = 1 | orient$ = 2 | orient$ = 5 | orient$ = 6, lccdirx = 1
      else, lccdirx = -1
      if axcomb = 3 | axcomb = 4, lccdirx = lccdirx * -1 #invert for lower turret
      if orient$ = 1 | orient$ = 4 | orient$ = 5 | orient$ = 8, lccdirz = 1
      else, lccdirz = -1
      if lathecc > 0, cc_stop_fcc = 1
      else, cc_stop_fcc = 0
      #G74/G75
      if lathecc = 3,
        [
        lcc_xcst = vequ(copy_x)
        if dopeckcc = 0,
          [
          depthcc = 0
          clearcc = 0
          ]
        if directcc > 1,
          [
          gcodecc = 4
          grvspcc = stepcc
          grvdpcc = depthcc
          ]
        else,
          [
          gcodecc = 5
          grvspcc = depthcc
          grvdpcc = stepcc
          ]
        ]
      else,
        [
        if n4_cc_pos,           #buffered cc_pos to look ahead
          [
          sav_xabs = vequ(copy_x)        #sav_xa = vequ(copy_x)
          #Shift for cutter comp. start position
          copy_x = copy_x + (lcc_move * lccdirx)
          copy_z = copy_z + (lcc_move * lccdirz)
          pcom_moveb
          lcc_cc_pos = 1
          ]
        else, lcc_cc_pos = 0
        ]

prcc_call_st$    #Rough canned cycle start
      if tool_op$ <> 208,
        [
        spathext$ = spathnci$
        snameext$ = snamenci$
        sextext$ = sextcan
        omitseq$ = 1
        extprg$ = 2
        newext$
        subout$ = 3
        prv_gcode$ = -1
        result = force(xabs,xabs)
        result = force(zabs,zabs)
        ]

prcc_call_end$   #Rough canned cycle end
      if tool_op$ <> 208,
        [
        omitseq$ = sav_omitseq
        #Close the ext file
        result = fclose(sbufname3$)
        #Open the ext file as a buffer
        #Use the size to determine the start and end sequence
        subout$ = sav_subout
        size3 = rbuf(3,0)
        if omitseq$ = 1,
          [
          ng70s = ng70s_init
          ng70e = ng70s_init + seqinc$
          ]
        else,
          [
          if old_new_sw = 0,
            [
            ng70s = ng70s_init + seqinc$
            ]
          else,
            [
            ng70s = ng70s_init + (seqinc$ * 2)
            ]
          ng70e = ng70s + (seqinc$ * (size3 - 1))
          ]
        pwrite_g70
        ng70s_init = ng70e + seqinc$
        ]
      #Setup the stock and clearance directions
      g73x = vsub(lcc_xcst,lcc_xcend)
      if old_new_sw = 0, g73x = g73x             #if old_new_sw = 0, g73x = g73x * pl_ax_m0x
      else, g73x = g73x * xmult4                 #else, g73x = g73x * dia_mult
      #g73z = g73z * pl_ax_m0z
      xstckcc = xstckcc * xmult4 #* lccdirx       #xstckcc =  xstckcc * dia_mult * lccdirx
      zstckcc = zstckcc * lccdirz                #zstckcc =  zstckcc * lccdirz * pl_ax_m0z
      clearcc = clearcc * lccdirz                #clearcc =  clearcc * lccdirz * pl_ax_m0z
      if axcomb = 3 | axcomb = 4,
        [
        clearcc = clearcc * -1 #invert clearcc for lower turret
        ]
      #Write the cycle definition
      sav_feed = feed
      sav_ipr = ipr_actv$
      feed = sav_feedcc
      feed = feed * 10
      ipr_actv$ = sav_iprcc
      result = force(ipr_type,ipr_type)
      if lathecc = 3,
        [
        #Setup the previous position for inc. in G74/G75 cycle
        sav_xabs = vequ(xabs)                        #sav_xa = vequ(xabs) #Save the cycle end
        copy_x = vequ(lcc_xcst)                  #The cycle start raw
        #pshft_map_xa
        pxyzcout                                 #The cycle start in machine terms
        ps_inc_calc                              #Recalculate incremental
        pe_inc_calc                              #Update previous at start
        xabs = vequ(sav_xabs)                    #xabs = vequ(sav_xa) #Restore the cycle end
        ps_inc_calc                              #Recalculate incremental
        ]
      if old_new_sw = 0,
        [
        if gcodecc < 3, pg71old
        if gcodecc = 3, pg73old
        if gcodecc > 3, pg74old
        ]
      else,
        [
        if gcodecc < 3, pg71new
        if gcodecc = 3, pg73new
        if gcodecc > 3, pg74new
        ]
      if lathecc = 3,
        [
        #Set the cycle end position at the original start
        copy_x = vequ(lcc_xcst) #The cycle start raw
        #pshft_map_xa
        pxyzcout  ##The cycle start in machine terms
        ps_inc_calc #Position at start
        pe_inc_calc #Update previous
        ps_inc_calc #Recalculate incremental
        ]
      feed = sav_feed
      ipr_actv$ = sav_ipr
      if tool_op$ <> 208,
        [
        n$ = ng70s
        #Bug2 is off to prevent execution crashes with long strings
        bug2$ = 0
        #Write the cycle profile, sequence are written now
        rc3 = 1
        while rc3 <= size3,
          [
          sav_eob = eob$           #save out eob character as it's getting lost
          eob$ = 32                #save out eob character as it's getting lost
          prv_eob$ = 32            #save out eob character as it's getting lost
          #Write the lathe canned cycle profile
          string3 = rbuf (3,rc3)
          if rc3 = 2,
            [
            #Add the finish spindle speed to the first move
            #n4_ss = n4_ss * 12
            speed = n4_ss
            #Mastercam is reporting 0 and 2 backwards for parameter 10124
            #Note that G71 type 1 and 3 are never allowed (can't change Z dir)
            #if gcodecc = 1 & (g71type = 1 | g71type = 0), pbld, pfn, *string3, *speed, "W0.", pe
            #else, pbld, pfn, *string3, speed, pe
            snameext$ = snamenc$
            sextext$ = sextext
            subout$ = 3
            pbld, pn, "LBL ", *ng70s, pe
            pbld, pn, *string3, pe
            if rc3 = (size3 + 1),
              [
              pbld, pn, "LBL 0", pe
              pfe
              subout$ = 0
              ]
            ]
          else,
            [
            if rc3 = (size3 + 1),
              [
              pbld, pn, *string3, pe
              pbld, pn, "LBL 0", pe
              pfe
              subout$ = 0
              ]
            else, pbld, pn, *string3, pe
            ]
          eob$ = sav_eob          #save out eob character as it's getting lost
          ]
        #Close the buffer
        result = fclose(3)
        result = fclose(sbufname3$)
        #Remove the ext file
        result = remove(sbufname3$)
        bug2$ = sav_bug2
        ]

plccstream      #Forced stream after lathe canned cycles
      #problem with lathe canned rough/finish returns to subout$ = 0 on
      #rcc_flg$ = 6, rcc_flg$ = 0, ptoolend$, peof$
      #must force back to appropriate stream
      if cuttype = 4 & tool_op$ >= 201 & tool_op$ <= 209 & (rcc_flg$ = 6 | rcc_flg$ = 0),
        [
        #paxcomb
        #pstream
        ]

pwrite_g70      #Write G70 recall buffer
      fcc_subid = sub_op_id$
      fcc_ng70s = ng70s
      fcc_ng70e = ng70e
      fcc_subid = wbuf(2,rc2)

pfcc_call$       #G70 recall output postblock
      if cc_stop_fcc = 0,
        [
        pread_g70
        if foundcc = 0, result = mprint(sfccerror)
        ]
      no_nc_out$ = 0
      cc_stop_fcc = 0

pfcc_end$       #G70 recall output postblock
      rcc_flg$ = 0

pread_g70       #Read G70 recall buffer
      foundcc = 0
      size2 = rbuf(2,0)
      wc2 = 1
      while wc2 <= size2 & foundcc = 0,
        [
        fcc_subid = rbuf(2,wc2)
        if fcc_subid = sub_op_id$,
          [
          gcodecc = 0
          ng70s = fcc_ng70s
          ng70e = fcc_ng70e
          #pbld, pn, *scclgcode, *ng70s, *ng70e, pe
          result = nwadrs(snull, feed)
          feed = abs(feed_rate)
          result = newfs(2,feed)
          pbld, pn, "CYCL DEF 14.0 CONTOUR", pe
          pbld, pn, "CYCL DEF 14.1 CONTOUR LABEL", *ng70s, pe
          pbld, pn, "CYCL DEF 810 TURN CONTOUR LONG. ~", pe
          "      ", "Q215=+2", ";MACHINING OPERATION ~", pe
          "      ", "Q460=", *clearcc, ";SAFETY CLEARANCE ~", pe
          "      ", "Q499=+0", ";REVERSE CONTOUR ~", pe
          "      ", "Q463=", *depthcc, ";MAX. CUTTING DEPTH ~", pe
          "      ", "Q478=", *feed, ";ROUGHING FEED RATE ~", pe
          "      ", "Q483=", *xstckcc, ";OVERSIZE FOR DIAMETER ~", pe
          "      ", "Q484=", *zstckcc, ";OVERSIZE IN Z ~", pe
          "      ", "Q505=", *feed, ";FINISHING FEED RATE ~", pe
          "      ", "Q487=+1", ";PLUNGE ~", pe
          "      ", "Q488=+0", ";PLUNGING FEED RATE ~", pe
          "      ", "Q479=+0", ";CUTTING LIMIT ~", pe
          "      ", "Q480=+0", ";LIMIT VALUE FOR DIAMETER ~", pe
          "      ", "Q482=+0", ";LIMIT VALUE IN Z ~", pe
          "      ", "Q506=+0", ";CONTOUR SMOOTHING", pe
          foundcc = 1
          xabs = vequ(start_xabs)
          pbld, pn, *sg00, *xabs, *yabs, *zabs, "F MAX", pe
          pbld, pn, "CYCL CALL", pe
          ]
        ]

plcc_cc_pos     #Position for lathe canned cycle cutter comp. enable
                #Position saved in prcc_setup
      pe_inc_calc   #Update previous
      copy_x = vequ(sav_xabs)
      pcom_moveb    #Get machine position, set inc. from previous
      #Force comp from the finish profile
      #All other Fanuc models
      cc_pos$ = n4_cc_pos #uncomment this line to have G41/G42 with final approach move
      if gcode$ = 0, prapidout
      else, plinout
      #Fanuc 31i and 32i
      #cc_pos$ = n4_cc_pos #uncomment these 3 lines to have G41/G42 with final approach move
      #pbld, pn, pccdia, pe  #uncomment these 3 lines to have G41/G42 with final approach move
      #prv_cc_pos$ = n4_cc_pos #uncomment these 3 lines to have G41/G42 with final approach move
      lcc_cc_pos = 0

pcc_capture     #Capture ends of canned turning path, stop output w/rough
      #Stop output in rough only lathe canned cycles
      #between rough and finish paths
      #if cc_stop_fcc & rcc_flg$ = 6, no_nc_out$ = 1          # 05/28/04
      if cc_stop_fcc & rcc_flg$ = 6 & lathecc <> 2, no_nc_out$ = 1
      #Capture vector for G73 cycle
      if rpd_typ$ = 6 & abs(lathecc) = 2,
        [
        if rcc_flg$ = 1, lcc_xcst = vequ(copy_x)
        if rcc_flg$ = 3, lcc_xcend = vequ(copy_x)
        ]
      #Uncomment to avoid G41/G42 output during canned rough/finish shape
      #if cuttype = 4 & rcc_flg$ = 4 & prv_rcc_flg$ <> 4,
      #  [
      #  prv_cc_pos$ = cc_pos$
      #  !rcc_flg$
      #  ]

pthread0$        #Pre-thread calculations
      # Calculate taper delta 'X' on Acceleration Clearance distance
      if (thdz1$ - thdz2$) <> 0 & thdzclr$ <> 0, thdrdlt = (((thdx2$ - thdx3$) / (thdz1$ - thdz2$)) * thdzclr$)
      # Add to the original thread 'X' difference calculation
      thdrdlt = (thdrdlt + (thdx2$ - thdx3$))                   #thdrdlt = (thdrdlt + (thdx2$ - thdx3$)) * pl_ax_m0x
      #thdang = rad2deg$ * thdangle$                            #lead-in angle
      #thdang = rad2deg$ * thda1$                               #half of the thread angle
      thdang = rad2deg$ * thda2$                                #thread angle (full included angle)
      thd_dirx = (thdx2$ - thdx3$)                              #thd_dirx = (thdx2$ - thdx3$) * pl_ax_m0x
      thd_dirz = (thdz1$ - thdz2$)                              #thd_dirz = (thdz1$ - thdz2$) * pl_ax_m0z
      thd_vlen = thdlead$/ nstarts$
      thd_dirx = vsa(thd_vlen,thd_dirx)
      if fr_pos$, pthreadpull
      else, thdpull = 0

pthreadpull     #Pre-thread calculations
      if thdpulloff$/(fr_pos$*10) > 0.99, thdpull = 99
      else, thdpull = (thdpulloff$/(fr_pos$*10))*100

pthdext$         #Calculation override for external thread
      #thddepth$ = thdlead$ * .61343         #Calc. thread depth
      #thdflat  = thdlead * .1667          #Calc. thread flat

pthdint$         #Calculation override for internal thread
      #thddepth$ = thdlead$ * .54127         #Calc. thread depth
      #thdflat  = thdlead * .125           #Calc. thread flat

pthdface$        #Calculation override for face thread
      #thddepth$ = thdlead$ * .61343         #Calc. thread depth
      #thdflat  = thdlead * .1667          #Calc. thread flat

# LCC Output Blocks ----------------------------------------------------------------------------

pg71old         #Output G71-G72 canned cycle routines, old style
      pbld, pn, sgfeed, pe
      pbld, pn, *scclgcode, *ng70s, *ng70e, *xstckcc, *zstckcc,
        *depthcc, *feed, pe

pg71new         #Output G71-G72 canned cycle routines, new style, first
      #if gcodecc = 1, result = nwadrs(stru,depthcc)
      #else, result = nwadrs(strw,depthcc)
      #pbld, pn, sgfeed, pe
      #pbld, pn, *scclgcode, *depthcc, *clearcc, pe
      #pbld, pn, *scclgcode, *ng70s, *ng70e, *xstckcc, *zstckcc, *feed, pe
      pbld, pn, *sgfeed, pe
      result = nwadrs(snull, feed)
      feed = abs(feed_rate)
      result = newfs(2,feed)
      if mi1$,
        [
        start_rad = start_xabs/2
        clear_height = start_zabs
        if not(machsimflg), no_nc_out$ = 0
        pbld, pn, "CYCL DEF 14.0 KONTUR", pe
        pbld, pn, "CYCL DEF 14.1 KONTURLABEL", *ng70s, pe
        pbld, pn, "CYCL DEF 291 IPO.-DREHEN KOPPLUNG ~", pe
        "    Q560=+1", "    ;SPINDEL KOPPELN ~", pe
        "    Q336=+0", "    ;WINKEL SPINDEL ~", pe
        "    Q216=+0", "    ;MITTE 1. ACHSE ~", pe
        "    Q217=+0", "    ;MITTE 2. ACHSE ~", pe
        "    Q561=+0", "    ;DREHWKZ. WANDELN", pe
        pbld, pn, "CYCL DEF 292 IPO.-DREHEN KONTUR ~", pe
        "    Q560=+1", "    ;SPINDEL KOPPELN ~", pe
        "    Q336=+0", "    ;WINKEL SPINDEL ~", pe
        if spdir2 = 0, "    Q546=+4", "    ;WZ-DREHRICHTUNG ~", pe
        else, "    Q546=+3", "    ;WZ-DREHRICHTUNG ~", pe
        if odid, "    Q529=+0", "    ;BEARBEITUNGSART ~", pe
        else, "    Q529=+1", "    ;BEARBEITUNGSART ~", pe
        "    Q221=+0", "    ;FLAECHENAUFMASS ~", pe
        "    Q441=", *depthcc, "  ;ZUSTELLUNG ~", pe
        "    Q449=", *feed, " ;VORSCHUB ~", pe
        "    Q491=", *start_rad " ;KONTURSTART RADIUS ~", pe
        "    Q357=+5", "    ;SI.-ABSTAND SEITE ~", pe
        "    Q445=", *clear_height, "  ;SICHERE HOEHE", pe
        xabs = vequ(start_xabs)
        pbld, pn, *sg00, *xabs, *yabs, *zabs, "F MAX", pe
        ]
      else,
        [
        pbld, pn, "CYCL DEF 14.0 CONTOUR", pe
        pbld, pn, "CYCL DEF 14.1 CONTOUR LABEL", *ng70s, pe
        pbld, pn, "CYCL DEF 810 TURN CONTOUR LONG. ~", pe
        "      ", "Q215=+1", ";MACHINING OPERATION ~", pe
        "      ", "Q460=", *clearcc, ";SAFETY CLEARANCE ~", pe
        "      ", "Q499=+0", ";REVERSE CONTOUR ~", pe
        "      ", "Q463=", *depthcc, ";MAX. CUTTING DEPTH ~", pe
        "      ", "Q478=", *feed, ";ROUGHING FEED RATE ~", pe
        "      ", "Q483=", *xstckcc, ";OVERSIZE FOR DIAMETER ~", pe
        "      ", "Q484=", *zstckcc, ";OVERSIZE IN Z ~", pe
        "      ", "Q505=", *feed, ";FINISHING FEED RATE ~", pe
        "      ", "Q487=+1", ";PLUNGE ~", pe
        "      ", "Q488=+0", ";PLUNGING FEED RATE ~", pe
        "      ", "Q479=+0", ";CUTTING LIMIT ~", pe
        "      ", "Q480=+0", ";LIMIT VALUE FOR DIAMETER ~", pe
        "      ", "Q482=+0", ";LIMIT VALUE IN Z ~", pe
        "      ", "Q506=+0", ";CONTOUR SMOOTHING", pe
        xabs = vequ(start_xabs)
        pbld, pn, *sg00, *xabs, *yabs, *zabs, "F MAX", pe
        ]
      pbld, pn, "CYCL CALL", pe

pg73old         #Output G73 canned cycle routines, old style
      pbld, pn, sgfeed, pe
      pbld, pn, *scclgcode, *ng70s, *ng70e, *g73x, *g73z,
        *xstckcc, *zstckcc, *ncutscc, *feed, pe

pg73new       #Output G73 canned cycle routines, new style, first
      pbld, pn, sgfeed, pe
      g73x = depthcc * cos(rad2deg$ * patofsang)
      g73z = depthcc * sin(rad2deg$ * patofsang)
      #g73z = g73z * pl_ax_m0z
      pbld, pn, *scclgcode, *g73x, *g73z, *ncutscc, pe
      pbld, pn, *scclgcode, *ng70s, *ng70e, *xstckcc, *zstckcc, *feed, pe

pg74old         #Output G74-G75 canned cycle routines, old style
      pbld, pn, sgfeed, pe
      pbld, pn, *scclgcode, pfxout, pfzout, *grvspcc, *grvdpcc,
        *clearcc, *feed, pe

pg74new         #Output G74-G75 canned cycle routines, new style, first
      pbld, pn, sgfeed, pe
      pbld, pn, *scclgcode, *clearcc, pe
      pbld, pn, *sgfeed, *scclgcode, pfxout, pfzout, *grvspcc,
        *grvdpcc, *feed, pe

pthrg32_1$       #G32 threading first
      comment$
      gcode$ = 0
      prapid$                           #lrapid$

pthrg32_2$       #G32 threading second
      gcode$ = 0
      prapid$                           #lrapid$

pthrg32_3$       #G32 threading third
      copy_x = vequ(x$)
      pcom_moveb
      pcan1, pbld, pn, sgfeed, *sthdgcode, pxout, pyout, pzout, pcout, *feed,
      strcantext, pe
      if machsimflg,
        [
        pmachsim_calc
        xmachsim = vequ(xmachsim_calc)
        machmovex_flg = vequ(zerox)
        tilt_machsim = aabs
        rot_machsim = cabs
        pmachsim_rel_out
        ]
      pcom_movea
      prv_gcode$ = -1

pthrg32_4$       #G32 threading fourth
      gcode$ = 0
      prapid$                           #lrapid$

pthrg92_1$       #G92 threading
      if thdpass$ = 1, pthrg92_11
      else,
        [
        if machsimflg,
          [
          copy_x = vequ(x$)
          pcom_moveb
          pmachsim_calc
          xmachsim = vequ(xmachsim_calc)
          tilt_machsim = aabs
          rot_machsim = cabs
          pmachsim_rel_out
          pcom_movea
          ]
        ]

pthrg92_11      #G92 threading
      comment$
      gcode$ = 0
      prapid$                           #lrapid$
      prv_feed = -1
      prv_zabs = c9k
      prv_thdtype$ = -1

pthrg92_2$       #G92 threading
      if machsimflg,
        [
        copy_x = vequ(x$)
        pcom_moveb
        pmachsim_calc
        xmachsim = vequ(xmachsim_calc)
        tilt_machsim = aabs
        rot_machsim = cabs
        pmachsim_rel_out
        pcom_movea
        ]

pthrg92_3$       #G92 threading
      copy_x = vequ(x$)
      pcom_moveb
      pcan1, pbld, pn, sgfeed, sthdgcode, pfxout, pyout, pzout, pcout,
        [if thdrdlt & thdpass$ = 1, *thdrdlt], feed, strcantext, pe
      if machsimflg,
        [
        pmachsim_calc
        xmachsim = vequ(xmachsim_calc)
        machmovex_flg = vequ(zerox)
        tilt_machsim = aabs
        rot_machsim = cabs
        pmachsim_rel_out
        ]
      pcom_movea
      prv_gcode$ = -1

pthrg92_4$       #G92 threading
      if machsimflg,
        [
        copy_x = vequ(x$)
        pcom_moveb
        pmachsim_calc
        xmachsim = vequ(xmachsim_calc)
        tilt_machsim = aabs
        rot_machsim = cabs
        pmachsim_rel_out
        pcom_movea
        ]

pg32e$           #G32/G92 threading end
      gcode$ = 0
      prapid$                           #lrapid$

pthrg76_1$       #G76 threading start point
      gcode$ = 0
      prapid$                           #lrapid$

pg76$            #G76 threading
      comment$
      gcode$ = 0
      prapid$                           #lrapid$
      sav_xabs = vequ(copy_x)
      #if thdface$ = 0, copy_x = thdx2$
      if thdface$ = 0, copy_x = thdx3$ #Correct taper output, G76 X based on minor diameter
      else, copy_z = thdx2$
      if thdface$ = 0, copy_z = thdz2$
      else, copy_x = thdz2$
      pcom_moveb
      nstart_cnt = 0
      while nstart_cnt < nstarts$, pg76nstart
      pcom_movea
      prv_gcode$ =  -1
      copy_x = vequ(sav_xabs)
      copy_x = copy_x + (thd_dirx * (nstarts$ - 1))
      copy_z = copy_z + (thd_dirz * (nstarts$ - 1))
      pcom_moveb
      pe_inc_calc
      !gcode$, !xabs, !yabs, !zabs, !xinc, !yinc, !zinc

pg76nstart      #G76 threading, for multiple starts
      if old_new_sw = 0, pg76old
      else, pg76new
      nstart_cnt = nstart_cnt + 1
      if use_g_inc = 1,
        [
        sav_absinc = absinc$
        absinc$ = 1
        result = nwadrs(strx,thd_dirx)
        result = nwadrs(strz,thd_dirz)
        ]
      if nstarts$ <> 1 & nstart_cnt <> nstarts$, pbld, pn, *sgcode, sgabsinc, thd_dirx, thd_dirz, pe
      if use_g_inc = 1, absinc$ = sav_absinc
      pbld, pn, sgabsinc, pe

pg76old         #G76 threading old style
      pbld, pn, sgfeed, pe
      pbld, pn, *sthdgcode, pfxout, pfzout, *thdrdlt, *thddepth$,
        *thdfirst$, *thdang, *feed, pe

pg76new         #G76 threading new style
      pbld, pn, sgfeed, pe
      pbld, pn, *sthdgcode, *nspring$, *thdpull, *thdang, #*thdlast$,
        *thdfinish$, pe
      pbld, pn, *sthdgcode, pfxout, pfzout, *thddepth$, *thdfirst$,
        *thdrdlt, *feed, pe

#Post is binned to here for evaluation/MachSim/dealer/OEM versions/proprietary code languages
##[ENDBIN]

# --------------------------------------------------------------------------------------------------
# CUSTOMIZED POST PROCESSOR VARIABLE INITIALIZATIONS AND SETUP
# --------------------------------------------------------------------------------------------------

#Variable Formatting -------------------------------------------------------------------------------

# --------------------------------------------------------------------------
# CUSTOMIZED POST PROCESSOR BLOCKS
# --------------------------------------------------------------------------

# Canned Text Output Block -------------------------------------------------
pcant_out       #Canned text - build the string for output
      #Assign string select type outputs
      if cant_pos < 3, #cant_pos indicates canned text output
        [
        #Build the cantext string
        if cantext$ = 1, strcantext = strcantext + sm00
        if cantext$ = 2, strcantext = strcantext + sm01
        if cantext$ = 3, bld = 1
        if cantext$ = 4, bld = 0
        if cantext$ > 4,
          [
          strtextno = no2str(cantext$)
          strcantext = strcantext + strm + strtextno
          ]
        ]
      else, #cant_pos indicates coolant output
        [
        #Create binary value for each coolant using lookup table
        coolant_bin = flook(2,cantext$)
        if frac(cantext$/2),
          [
          if all_cool_off,
            [
            if coolant_on, pbld, pn, *sall_cool_off, pe
            coolant_on = 0

            #added this for null toolchange with "First command shuts all off"
            #and turn off selected in the second op, post outputs M9 twice
            suppress = 1
            ]
          else, coolant_on = coolant_on - coolant_bin/2 #Odd = off command, subtract appropriate binary value.
          ]
        else,                                           #Even = on command
          [
          #Determine if this coolant is already on
          local_int = 0
          coolantx = 0
          while local_int < 20 & coolant_on > 0,
            [
            result2 = and(2^local_int,coolant_on)
            local_int = local_int + 1
            if result2 = coolant_bin, suppress = 1
            ]
          ]
        #Don't output an on code for a coolant that is already on
        if suppress <> 1,
          [
          #Maintain binary sum of all coolants currently on
          coolant_on = coolant_on + coolant_bin
          #Create a coolantx value for string select
          coolantx = cantext$ - 50
          if cantflg = 3, *scoolantx
          else, pbld, pn, *scoolantx, pe
          ]
        suppress = 0
        ]

# --------------------------------------------------------------------------------------------------
# Control Def Text
# --------------------------------------------------------------------------------------------------
[CTRL_TEXT_XML_BEGIN]  # Post text edits MUST be made with Control Definition Manager.
<?xml version="1.0" encoding="UTF-8"?>
<mp_xml_post_text xml:space="preserve">
	<control>
		<control_label>CTRL_MT_MILL|DEFAULT</control_label>
		<language>en-US</language>
		<misc_integers>
			<misc_2>
				<text>Abs/Inc, top level [0=Abs,1=Inc]</text>
			</misc_2>
			<misc_3>
				<text>3D Comp (Surface Normal) [0=No,1=Yes]</text>
			</misc_3>
			<misc_4>
				<text>Start Solution [0=+Tilt,1=-Tilt]</text>
			</misc_4>
			<misc_9>
				<text>Cycle 586 Tool Breakage [0=No,1=Yes]</text>
			</misc_9>
			<misc_10>
				<text>M0 Before Operation [0=No,1=Yes]</text>
			</misc_10>
		</misc_integers>
		<misc_reals>
			<misc_1>
				<text>High Speed [0=Off,1=Cycle 32]</text>
			</misc_1>
			<misc_2>
				<text>Tolerance Value</text>
			</misc_2>
			<misc_3>
				<text>HSC Mode [0=Finish,1=Rough]</text>
			</misc_3>
			<misc_4>
				<text>CYCLE32 TA Value</text>
			</misc_4>
			<misc_5>
				<text>B-Axis Angle (With AC Axis Comb)</text>
			</misc_5>
			<misc_7>
				<text>Start Op Ret [0=Axis,1=Z,2=Z/Y,3=No]</text>
				<inch_value>1.</inch_value>
				<metric_value>1.</metric_value>
			</misc_7>
			<misc_8>
				<text>Mid Op Ret [0=Axis,1=Z,2=Z/Y,3=No]</text>
				<inch_value>1.</inch_value>
				<metric_value>1.</metric_value>
			</misc_8>
			<misc_9>
				<text>Rot Start [1=Value,2=Last,3=Rev,4=Prompt]</text>
			</misc_9>
			<misc_10>
				<text>Rot Start [Enter Value or Rev]</text>
			</misc_10>
		</misc_reals>
		<simple_drill>
			<description>
				<text>Drilling - Cycle 200</text>
			</description>
			<dwell>
				<text>Dwell at Depth - Q211</text>
			</dwell>
			<first_peck>
				<text>Peck - Q202</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>Dwell at Top - Q210</text>
			</shift>
		</simple_drill>
		<peck_drill>
			<description>
				<text>Universal Pecking - Cycle 205</text>
			</description>
			<dwell>
				<text>Dwell at Depth - Q211</text>
			</dwell>
			<first_peck>
				<text>Peck - Q202</text>
			</first_peck>
			<subsequent_peck>
				<text>Decrement - Q212</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Minimum Peck - Q205</text>
			</peck_clearance>
			<retract_amount>
				<text>Upper Stop - Q258</text>
			</retract_amount>
			<shift>
				<text>Lower Stop - Q259</text>
			</shift>
		</peck_drill>
		<chip_break>
			<description>
				<text>Universal Drilling - Cycle 203</text>
			</description>
			<dwell>
				<text>Dwell at Depth - Q211</text>
			</dwell>
			<first_peck>
				<text>Peck - Q202</text>
			</first_peck>
			<subsequent_peck>
				<text>Decrement - Q212</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Minimum Peck - Q205</text>
			</peck_clearance>
			<retract_amount>
				<text>Breaks/Retract - Q213</text>
			</retract_amount>
			<shift>
				<text>Dwell at Top - Q210</text>
			</shift>
		</chip_break>
		<tap>
			<description>
				<text>Tapping - Cycle 206/207</text>
			</description>
			<dwell>
				<text>Dwell (Floating) - Q211</text>
			</dwell>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</tap>
		<bore1>
			<description>
				<text>Reaming - Cycle 201</text>
			</description>
			<dwell>
				<text>Dwell at Depth - Q211</text>
			</dwell>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</bore1>
		<bore2>
			<description>
				<text>Boring - Cycle 202</text>
			</description>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</bore2>
		<misc1>
			<description>
				<text>Back Boring - Cycle 204</text>
			</description>
			<dwell>
				<text>Dwell - Q255</text>
			</dwell>
			<first_peck>
				<text>Off-Center Dist - Q251</text>
			</first_peck>
			<subsequent_peck>
				<text>Bore Depth - Q249</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Tool Edge Height - Q252</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>F Pre-Position - Q253</text>
			</shift>
		</misc1>
		<misc2>
			<description>
				<text>Thread Milling - Cycle 262</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>Threads/Step - Q355</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Climb[1],Up[-1] - Q351</text>
			</peck_clearance>
			<retract_amount>
				<text>Diameter - Q335</text>
			</retract_amount>
			<shift>
				<text>F Pre-Position - Q253</text>
			</shift>
		</misc2>
		<drill_cycle_9>
			<description>
				<text>Subroutine Call</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>Subprogram Number</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</drill_cycle_9>
		<drill_cycle_10>
			<description>
				<text>Outside Thread Milling - Cycle 267</text>
			</description>
			<dwell>
				<text>Offset At Front - Q358</text>
			</dwell>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>Threads/Step - Q355</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Climb[1],Up[-1] - Q351</text>
			</peck_clearance>
			<retract_amount>
				<text>Diameter - Q335</text>
			</retract_amount>
			<shift>
				<text>F Pre-Position - Q253</text>
			</shift>
		</drill_cycle_10>
		<drill_cycle_11>
			<description>
				<text>Bore Milling - Cycle 208</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>Infeed Depth - Q334</text>
			</first_peck>
			<subsequent_peck>
				<text>Rough Dia - Q342</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Climb[1],Up[-1] - Q351</text>
			</peck_clearance>
			<retract_amount>
				<text>Diameter - Q335</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</drill_cycle_11>
		<drill_cycle_12>
			<description>
				<text>Tap w/ Chip Brkg - Cycle 209</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>Depth Chip Brkng - Q257</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</drill_cycle_12>
		<peck_drill_custom_parameters>
			<description>
				<text>Universal Pecking - Cycle 205 Continued</text>
			</description>
			<parameter_1>
				<text>Depth Chip Brkng - Q257</text>
			</parameter_1>
			<parameter_2>
				<text>Chip Brk Retract - Q256</text>
			</parameter_2>
			<parameter_3>
				<text>Starting Point - Q379</text>
			</parameter_3>
			<parameter_4>
				<text>F Pre-Position - Q253</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>""</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</peck_drill_custom_parameters>
		<chip_break_drill_custom_parameters>
			<description>
				<text>Universal Drilling - Cycle 203 Continued</text>
			</description>
			<parameter_1>
				<text>Retraction Feed - Q208</text>
			</parameter_1>
			<parameter_2>
				<text>Chip Brk Retract - Q256</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>""</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</chip_break_drill_custom_parameters>
		<bore1_custom_parameters>
			<description>
				<text>Reaming - Cycle 201 Continued</text>
			</description>
			<parameter_1>
				<text>Retraction Feed - Q208</text>
			</parameter_1>
			<parameter_2>
				<text>""</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>""</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</bore1_custom_parameters>
		<bore2_custom_parameters>
			<description>
				<text>Boring - Cycle 202 Continued</text>
			</description>
			<parameter_1>
				<text>Retraction Feed - Q208</text>
			</parameter_1>
			<parameter_2>
				<text>""</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>Disengage Dir - Q214</text>
			</parameter_5>
			<parameter_6>
				<text>Angle of Spindle - Q336</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</bore2_custom_parameters>
		<misc1_custom_parameters>
			<description>
				<text>Back Boring - Cycle 204 Continued</text>
			</description>
			<parameter_1>
				<text>""</text>
			</parameter_1>
			<parameter_2>
				<text>""</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>Disengage Dir - Q214</text>
			</parameter_5>
			<parameter_6>
				<text>Angle of Spindle - Q336</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</misc1_custom_parameters>
		<drill_cycle_10_custom_parameters>
			<description>
				<text>Cycle 267 Continued</text>
			</description>
			<parameter_1>
				<text>F Counterboring - Q254</text>
			</parameter_1>
			<parameter_2>
				<text>Depth At Front - Q359</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>""</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</drill_cycle_10_custom_parameters>
		<drill_cycle_12_custom_parameters>
			<description>
				<text>Tap w/ Chip Brkg - Cycle 209 Continued</text>
			</description>
			<parameter_1>
				<text>""</text>
			</parameter_1>
			<parameter_2>
				<text>Chip Brk Retract - Q256</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>Angle of Spindle - Q336</text>
			</parameter_6>
			<parameter_7>
				<text>RPM Factor - Q403</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</drill_cycle_12_custom_parameters>
		<drill_cycle_descriptions>
			<simple_drill>
				<text>Drilling - Cycle 200</text>
			</simple_drill>
			<peck_drill>
				<text>Universal Pecking - Cycle 205</text>
			</peck_drill>
			<chip_break>
				<text>Chip Breaking - Cycle 203</text>
			</chip_break>
			<tapping>
				<text>Tapping - Cycle 206 / 207</text>
			</tapping>
			<boring_1>
				<text>Reaming - Cycle 201</text>
			</boring_1>
			<boring_2>
				<text>Boring - Cycle 202</text>
			</boring_2>
			<misc_drill_1>
				<text>Back Boring - Cycle 204</text>
			</misc_drill_1>
			<misc_drill_2>
				<text>Thread Milling - Cycle 262</text>
			</misc_drill_2>
			<custom_drill_9>
				<text>Subroutine Call</text>
			</custom_drill_9>
			<custom_drill_10>
				<text>Outside Thread Milling - Cycle 267</text>
			</custom_drill_10>
			<custom_drill_11>
				<text>Bore Milling - Cycle 208</text>
			</custom_drill_11>
			<custom_drill_12>
				<text>Tap w/ Chip Brkg - Cycle 209</text>
			</custom_drill_12>
		</drill_cycle_descriptions>
		<canned_text>
			<canned_text_1>
				<text>Stop - M0</text>
			</canned_text_1>
			<canned_text_2>
				<text>Op Stop - M1</text>
			</canned_text_2>
			<canned_text_3>
				<text>Bld on</text>
			</canned_text_3>
			<canned_text_4>
				<text>Bld off</text>
			</canned_text_4>
			<canned_text_5>
				<text>""</text>
			</canned_text_5>
			<canned_text_6>
				<text>""</text>
			</canned_text_6>
			<canned_text_7>
				<text>""</text>
			</canned_text_7>
			<canned_text_8>
				<text>""</text>
			</canned_text_8>
			<canned_text_9>
				<text>""</text>
			</canned_text_9>
			<canned_text_10>
				<text>""</text>
			</canned_text_10>
		</canned_text>
		<transform_operation>
			<custom_integer_1>
				<text>Auto Position B-axis [0=No,1=Yes]</text>
			</custom_integer_1>
		</transform_operation>
	</control>
<control>
		<control_label>CTRL_MT_LATHE|DEFAULT</control_label>
		<language>en-US</language>
		<misc_integers>
			<misc_2>
				<text>Abs/Inc, top level [0=Abs,1=Inc]</text>
			</misc_2>
			<misc_5>
				<text>Disable Cycle 247 [0=No,1=Yes]</text>
			</misc_5>
			<misc_10>
				<text>M0 Before Operation [0=No,1=Yes]</text>
			</misc_10>
		</misc_integers>
		<misc_reals>
			<misc_7>
				<text>Start Op Ret [0=Axis,1=Z,2=Z/XY,3=No]</text>
				<inch_value>1.</inch_value>
				<metric_value>1.</metric_value>
			</misc_7>
			<misc_8>
				<text>Mid Op Ret [0=Axis,1=Z,2=Z/XY,3=No]</text>
				<inch_value>1.</inch_value>
				<metric_value>1.</metric_value>
			</misc_8>
		</misc_reals>
		<simple_drill>
			<description>
				<text>Longhand Drill</text>
			</description>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</simple_drill>
		<peck_drill>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</peck_drill>
		<chip_break>
			<first_peck>
				<text>Cut Amount</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Peck Clearance (D)</text>
			</peck_clearance>
			<retract_amount>
				<text>Feed reduction (J)</text>
			</retract_amount>
			<shift>
				<text>Feed red dist (I)</text>
			</shift>
		</chip_break>
		<tap>
			<first_peck>
				<text>Cut Amount</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>Ret speed override (H)</text>
			</retract_amount>
			<shift>
				<text>Dwell location (J)</text>
			</shift>
		</tap>
		<bore1>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</bore1>
		<bore2>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</bore2>
		<misc1>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
		</misc1>
		<drill_cycle_9>
			<description>
				<text>Subprogram Call</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>Subprogram Number</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</drill_cycle_9>
		<drill_cycle_descriptions>
			<simple_drill>
				<text>Drilling - Cycle 200</text>
			</simple_drill>
			<peck_drill>
				<text>""</text>
			</peck_drill>
			<chip_break>
				<text>""</text>
			</chip_break>
			<tapping>
				<text>""</text>
			</tapping>
			<boring_1>
				<text>""</text>
			</boring_1>
			<boring_2>
				<text>""</text>
			</boring_2>
			<misc_drill_1>
				<text>""</text>
			</misc_drill_1>
			<misc_drill_2>
				<text>""</text>
			</misc_drill_2>
			<custom_drill_9>
				<text>Subprogram Call</text>
			</custom_drill_9>
			<custom_drill_10>
				<text>""</text>
			</custom_drill_10>
			<custom_drill_11>
				<text>""</text>
			</custom_drill_11>
			<custom_drill_12>
				<text>""</text>
			</custom_drill_12>
			<custom_drill_13>
				<text>""</text>
			</custom_drill_13>
			<custom_drill_14>
				<text>""</text>
			</custom_drill_14>
			<custom_drill_15>
				<text>""</text>
			</custom_drill_15>
			<custom_drill_16>
				<text>""</text>
			</custom_drill_16>
			<custom_drill_17>
				<text>""</text>
			</custom_drill_17>
			<custom_drill_18>
				<text>""</text>
			</custom_drill_18>
			<custom_drill_19>
				<text>""</text>
			</custom_drill_19>
			<custom_drill_20>
				<text>""</text>
			</custom_drill_20>
		</drill_cycle_descriptions>
	</control>
	<control>
		<control_label>CTRL_MILL|DEFAULT</control_label>
		<language>en-US</language>
		<misc_integers>
			<misc_2>
				<text>Abs/Inc, top level [0=Abs,1=Inc]</text>
			</misc_2>
			<misc_3>
				<text>3D Comp (Surface Normal) [0=No,1=Yes]</text>
			</misc_3>
			<misc_4>
				<text>Start Solution [0=+Tilt,1=-Tilt]</text>
			</misc_4>
			<misc_9>
				<text>Cycle 586 Tool Breakage [0=No,1=Yes]</text>
			</misc_9>
			<misc_10>
				<text>M0 Before Operation [0=No,1=Yes]</text>
			</misc_10>
		</misc_integers>
		<misc_reals>
			<misc_1>
				<text>High Speed [0=Off,1=Cycle 32]</text>
				<inch_value>1.</inch_value>
				<metric_value>1.</metric_value>
			</misc_1>
			<misc_2>
				<text>Tolerance Value</text>
				<inch_value>0.0012</inch_value>
				<metric_value>0.003</metric_value>
			</misc_2>
			<misc_3>
				<text>HSC Mode [0=Finish,1=Rough]</text>
			</misc_3>
			<misc_4>
				<text>CYCLE32 TA Value</text>
			</misc_4>
			<misc_5>
				<text>B-Axis Angle (With AC Axis Comb)</text>
			</misc_5>
			<misc_7>
				<text>Start Op Ret [0=Axis,1=Z,2=Z/Y,3=No]</text>
				<inch_value>2.</inch_value>
				<metric_value>2.</metric_value>
			</misc_7>
			<misc_8>
				<text>Mid Op Ret [0=Axis,1=Z,2=Z/Y,3=No]</text>
				<inch_value>2.</inch_value>
				<metric_value>2.</metric_value>
			</misc_8>
			<misc_9>
				<text>Rot Start [1=Value,2=Last,3=Rev,4=Prompt]</text>
			</misc_9>
			<misc_10>
				<text>Rot Start [Enter Value or Rev]</text>
			</misc_10>
		</misc_reals>
		<simple_drill>
			<description>
				<text>Drilling - Cycle 200</text>
			</description>
			<dwell>
				<text>Dwell at Depth - Q211</text>
			</dwell>
			<first_peck>
				<text>Peck - Q202</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>Dwell at Top - Q210</text>
			</shift>
		</simple_drill>
		<peck_drill>
			<description>
				<text>Universal Pecking - Cycle 205</text>
			</description>
			<dwell>
				<text>Dwell at Depth - Q211</text>
			</dwell>
			<first_peck>
				<text>Peck - Q202</text>
			</first_peck>
			<subsequent_peck>
				<text>Decrement - Q212</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Minimum Peck - Q205</text>
			</peck_clearance>
			<retract_amount>
				<text>Upper Stop - Q258</text>
			</retract_amount>
			<shift>
				<text>Lower Stop - Q259</text>
			</shift>
		</peck_drill>
		<chip_break>
			<description>
				<text>Universal Drilling - Cycle 203</text>
			</description>
			<dwell>
				<text>Dwell at Depth - Q211</text>
			</dwell>
			<first_peck>
				<text>Peck - Q202</text>
			</first_peck>
			<subsequent_peck>
				<text>Decrement - Q212</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Minimum Peck - Q205</text>
			</peck_clearance>
			<retract_amount>
				<text>Breaks/Retract - Q213</text>
			</retract_amount>
			<shift>
				<text>Dwell at Top - Q210</text>
			</shift>
		</chip_break>
		<tap>
			<description>
				<text>Tapping - Cycle 206/207</text>
			</description>
			<dwell>
				<text>Dwell (Floating) - Q211</text>
			</dwell>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</tap>
		<bore1>
			<description>
				<text>Reaming - Cycle 201</text>
			</description>
			<dwell>
				<text>Dwell at Depth - Q211</text>
			</dwell>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</bore1>
		<bore2>
			<description>
				<text>Boring - Cycle 202</text>
			</description>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</bore2>
		<misc1>
			<description>
				<text>Back Boring - Cycle 204</text>
			</description>
			<dwell>
				<text>Dwell - Q255</text>
			</dwell>
			<first_peck>
				<text>Off-Center Dist - Q251</text>
			</first_peck>
			<subsequent_peck>
				<text>Bore Depth - Q249</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Tool Edge Height - Q252</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>F Pre-Position - Q253</text>
			</shift>
		</misc1>
		<misc2>
			<description>
				<text>Thread Milling - Cycle 262</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>Threads/Step - Q355</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Climb[1],Up[-1] - Q351</text>
			</peck_clearance>
			<retract_amount>
				<text>Diameter - Q335</text>
			</retract_amount>
			<shift>
				<text>F Pre-Position - Q253</text>
			</shift>
		</misc2>
		<drill_cycle_9>
			<description>
				<text>Subroutine Call</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>Subprogram Number</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</drill_cycle_9>
		<drill_cycle_10>
			<description>
				<text>Outside Thread Milling - Cycle 267</text>
			</description>
			<dwell>
				<text>Offset At Front - Q358</text>
			</dwell>
			<first_peck>
				<text>""</text>
			</first_peck>
			<subsequent_peck>
				<text>Threads/Step - Q355</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Climb[1],Up[-1] - Q351</text>
			</peck_clearance>
			<retract_amount>
				<text>Diameter - Q335</text>
			</retract_amount>
			<shift>
				<text>F Pre-Position - Q253</text>
			</shift>
		</drill_cycle_10>
		<drill_cycle_11>
			<description>
				<text>Bore Milling - Cycle 208</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>Infeed Depth - Q334</text>
			</first_peck>
			<subsequent_peck>
				<text>Rough Dia - Q342</text>
			</subsequent_peck>
			<peck_clearance>
				<text>Climb[1],Up[-1] - Q351</text>
			</peck_clearance>
			<retract_amount>
				<text>Diameter - Q335</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</drill_cycle_11>
		<drill_cycle_12>
			<description>
				<text>Tap w/ Chip Brkg - Cycle 209</text>
			</description>
			<dwell>
				<text>""</text>
			</dwell>
			<first_peck>
				<text>Depth Chip Brkng - Q257</text>
			</first_peck>
			<subsequent_peck>
				<text>""</text>
			</subsequent_peck>
			<peck_clearance>
				<text>""</text>
			</peck_clearance>
			<retract_amount>
				<text>""</text>
			</retract_amount>
			<shift>
				<text>""</text>
			</shift>
		</drill_cycle_12>
		<peck_drill_custom_parameters>
			<description>
				<text>Universal Pecking - Cycle 205 Continued</text>
			</description>
			<parameter_1>
				<text>Depth Chip Brkng - Q257</text>
			</parameter_1>
			<parameter_2>
				<text>Chip Brk Retract - Q256</text>
			</parameter_2>
			<parameter_3>
				<text>Starting Point - Q379</text>
			</parameter_3>
			<parameter_4>
				<text>F Pre-Position - Q253</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>""</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</peck_drill_custom_parameters>
		<chip_break_drill_custom_parameters>
			<description>
				<text>Universal Drilling - Cycle 203 Continued</text>
			</description>
			<parameter_1>
				<text>Retraction Feed - Q208</text>
			</parameter_1>
			<parameter_2>
				<text>Chip Brk Retract - Q256</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>""</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</chip_break_drill_custom_parameters>
		<bore1_custom_parameters>
			<description>
				<text>Reaming - Cycle 201 Continued</text>
			</description>
			<parameter_1>
				<text>Retraction Feed - Q208</text>
			</parameter_1>
			<parameter_2>
				<text>""</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>""</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</bore1_custom_parameters>
		<bore2_custom_parameters>
			<description>
				<text>Boring - Cycle 202 Continued</text>
			</description>
			<parameter_1>
				<text>Retraction Feed - Q208</text>
			</parameter_1>
			<parameter_2>
				<text>""</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>Disengage Dir - Q214</text>
			</parameter_5>
			<parameter_6>
				<text>Angle of Spindle - Q336</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</bore2_custom_parameters>
		<misc1_custom_parameters>
			<description>
				<text>Back Boring - Cycle 204 Continued</text>
			</description>
			<parameter_1>
				<text>""</text>
			</parameter_1>
			<parameter_2>
				<text>""</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>Disengage Dir - Q214</text>
			</parameter_5>
			<parameter_6>
				<text>Angle of Spindle - Q336</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</misc1_custom_parameters>
		<drill_cycle_10_custom_parameters>
			<description>
				<text>Cycle 267 Continued</text>
			</description>
			<parameter_1>
				<text>F Counterboring - Q254</text>
			</parameter_1>
			<parameter_2>
				<text>Depth At Front - Q359</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>""</text>
			</parameter_6>
			<parameter_7>
				<text>""</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</drill_cycle_10_custom_parameters>
		<drill_cycle_12_custom_parameters>
			<description>
				<text>Tap w/ Chip Brkg - Cycle 209 Continued</text>
			</description>
			<parameter_1>
				<text>""</text>
			</parameter_1>
			<parameter_2>
				<text>Chip Brk Retract - Q256</text>
			</parameter_2>
			<parameter_3>
				<text>""</text>
			</parameter_3>
			<parameter_4>
				<text>""</text>
			</parameter_4>
			<parameter_5>
				<text>""</text>
			</parameter_5>
			<parameter_6>
				<text>Angle of Spindle - Q336</text>
			</parameter_6>
			<parameter_7>
				<text>RPM Factor - Q403</text>
			</parameter_7>
			<parameter_8>
				<text>""</text>
			</parameter_8>
			<parameter_9>
				<text>""</text>
			</parameter_9>
			<parameter_10>
				<text>""</text>
			</parameter_10>
		</drill_cycle_12_custom_parameters>
		<drill_cycle_descriptions>
			<simple_drill>
				<text>Drilling - Cycle 200</text>
			</simple_drill>
			<peck_drill>
				<text>Universal Pecking - Cycle 205</text>
			</peck_drill>
			<chip_break>
				<text>Chip Breaking - Cycle 203</text>
			</chip_break>
			<tapping>
				<text>Tapping - Cycle 206 / 207</text>
			</tapping>
			<boring_1>
				<text>Reaming - Cycle 201</text>
			</boring_1>
			<boring_2>
				<text>Boring - Cycle 202</text>
			</boring_2>
			<misc_drill_1>
				<text>Back Boring - Cycle 204</text>
			</misc_drill_1>
			<misc_drill_2>
				<text>Thread Milling - Cycle 262</text>
			</misc_drill_2>
			<custom_drill_9>
				<text>Subroutine Call</text>
			</custom_drill_9>
			<custom_drill_10>
				<text>Outside Thread Milling - Cycle 267</text>
			</custom_drill_10>
			<custom_drill_11>
				<text>Bore Milling - Cycle 208</text>
			</custom_drill_11>
			<custom_drill_12>
				<text>Tap w/ Chip Brkg - Cycle 209</text>
			</custom_drill_12>
		</drill_cycle_descriptions>
		<canned_text>
			<canned_text_1>
				<text>Stop - M0</text>
			</canned_text_1>
			<canned_text_2>
				<text>Op Stop - M1</text>
			</canned_text_2>
			<canned_text_3>
				<text>Bld on</text>
			</canned_text_3>
			<canned_text_4>
				<text>Bld off</text>
			</canned_text_4>
			<canned_text_5>
				<text>""</text>
			</canned_text_5>
			<canned_text_6>
				<text>""</text>
			</canned_text_6>
			<canned_text_7>
				<text>""</text>
			</canned_text_7>
			<canned_text_8>
				<text>""</text>
			</canned_text_8>
			<canned_text_9>
				<text>""</text>
			</canned_text_9>
			<canned_text_10>
				<text>""</text>
			</canned_text_10>
		</canned_text>
		<transform_operation>
			<custom_integer_1>
				<text>Auto Position B-axis [0=No,1=Yes]</text>
			</custom_integer_1>
		</transform_operation>
	</control>
</mp_xml_post_text>
[CTRL_TEXT_XML_END]

#<Mastercam_Probing version="2.2">
#	<Settings>
#		<Post>
#			<ControlName>Heidenhain</ControlName>
#			<ControlSubname>iTNC530</ControlSubname>
#			<ControlVersion>2013</ControlVersion>
#			<ControlLanguage>English</ControlLanguage>
#		</Post>
#		<Simulation>
#			<MP6140>0.001</MP6140>
#		</Simulation>
#		<OutputFormat>
#			<Integer>1 0</Integer>
#			<Real>+0.4</Real>
#			<Coord>+0.4</Coord>
#			<Angle>+0.4</Angle>
#			<Vector>0.8</Vector>
#		</OutputFormat>
#	</Settings>
#	<Surface_Probing>
#		<PrintFormat>
#			<Output>; -----</Output>
#			<Output>Q15 = {OpNumber} ; Operation</Output>
#			<Output>Q16 = {CutNumber} ; Point No.</Output>
#			<Output>; ----- Measured point</Output>
#			<Output>Q20 = {X}</Output>
#			<Output>Q21 = {Y}</Output>
#			<Output>Q22 = Q160</Output>
#			<Output>; ----- Calculate difference</Output>
#			<Output>Q23 = Q20 - {X}</Output>
#			<Output>Q24 = Q21 - {Y}</Output>
#			<Output>Q25 = Q22 - {Z}</Output>
#			<Output>; ----- Print result</Output>
#			<Output>FN 16: F-PRINT TNC:\Programs\ProbeOutputFormat.A / TNC:\Programs\ProbeOutput.A</Output>
#			<Output>; -----</Output>
#		</PrintFormat>
#	</Surface_Probing>
#	<Custom_Log>
#		<Log id="" use_sequence_number="yes" category="" toolpathstrategy="" />
#	</Custom_Log>
#</Mastercam_Probing>
