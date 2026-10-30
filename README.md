  
  Processing Started  : 001 TOP RIGHT.eia   Fri Oct 30 15:26:50 2026

  Project File      : MAZAK_E1250V_POST_VALIDATION TOP WCS RIGHT TOOL PLANE.vcproject
  Machine File          : Mazak_Integrex_e1250V_8_P81880.mch
  Control File          : Mazak_Integrex_e1250V_8_P81880_SmoothAI.ctl
  Add On Control File   : Mazak_Integrex_e1250V_8_P81880_SmoothAI.ctladd
  Tool File             : MAZAK_E1250V_POST_VALIDATION TOP WCS RIGHT TOOL PLANE-MILLING.tls
  Output File           : 
  Log File              : E1250V_G68_DEBUG.log
  
  Scanning Toolpath File
    MACRO: AccelDecelLogic "" 2
    MACRO: CycleMotionPlaneCheckOnOff "" 1
    MACRO: CycleDrillingAxisLogic "" 1
    MACRO: ConversionInit "" 0
  General
     Control Type: Generic
     Calculation Tolerance: 0.001
     Order of Math Operations: Rules of Precedence
     Default Word: 
  Circles
     Circle Center Mode: Incremental
     Incremental Circle Center Method (eg IJK): From Start to Center Point
     APT Output for Circular Motion: CIRCLE
     Pitch Specified with IJK: No
  Cutter Compensation
     CDC ON/OFF Method: Ramp ON/OFF
     CDC Ramp ON/OFF with: Active Plane Motion
  Cycles
     Cycle Cancel causes Rapid Motion: No
     Ignore Cycles during Rotary Motion: No
     Cycle Execute: On Motion
  Debug
     Debug Offsets: Yes
     Debug Delta Information: No
     Debug Rate Calculations: No
     Debug Loop Logic: No
     Debug Macro Arguments: Yes
     Debug Intersect Points: No
     Debug Cutter Compensation: No
     Debug Drill Cycles: No
     Debug Substitution: No
     Debug Variables: Yes
     Debug Turning / Milling Cycles: No
     Debug Optimization: No
     Debug Control API: No
     Debug Timing: No
     Debug Active Components: Yes
     Debug Composite: No
     Debug Tool Chain: No
     Debug Control Subs: Yes
     Debug VcSubs: No
     Debug Tilted Working Plane: Yes
     Disable ProcessCutterComp: No
  Messages
     Send Errors: to G-Code Log and Logger
     Send Warnings: to G-Code Log and Logger
     Send Info: to G-Code Log
     Send Debug: to G-Code Log and Logger
     Send Control Settings: to G-Code Log
     Send Input Block: to G-Code Log
     Send APT: to APT Output
     Output Filenames Format: Filename Only
     Output Block Sequence Numbers: Yes
     Display Word or Function Errors: No
     Display Duplicate Variable Definition Errors: No
  Motion
     Default Motion Type: Rapid
     Default Plane Selection: XY
     Default Control Units: Project Units
     Default Command Mode: Absolute
     Default Feed Mode: Feed per Minute
     Default Feedrate: 1
     Output Initial Spindle Location: Yes
     Rapid Motion Cancels Cycles: Yes
     Linear Motion Cancels Cycles: Yes
     CW Motion Cancels Cycles: Yes
     CCW Motion Cancels Cycles: Yes
     Output Rapid Motion as: Rapid
     Maximum Inverse Time Output Feedrate: 100
     Output Precision: Full Precision
  Offsets
     Initial Work Offset: Yes
     Initial Work Index: 54
  G-code Output Options
     Auto Sequence Numbering: No
     Add Sequence Number to Added Blocks: Yes
     Sequence Increment Value: 10
     Word Value Spacing: No
     Add Date/Time Stamp to Optimized File: Yes
     Add Date/Time Stamp at Line Number: 1
     Output Format: Word
  Rotary
     A-axis Rotary Type: Linear
     B-axis Rotary Type: Linear
     C-axis Rotary Type: EIA (360 Absolute)
     A2-axis Rotary Type: Linear
     B2-axis Rotary Type: Linear
     C2-axis Rotary Type: Linear
     A3-axis Rotary Type: Linear
     B3-axis Rotary Type: Linear
     C3-axis Rotary Type: Linear
     Absolute Rotary Direction: Shortest Distance 3
     Rotary Tool Control Point: No
     RTCP Contour: Yes
     RTCP With Motion: Yes
     RTCP Uses: Gage Pivot Offset
  Subroutines
     Type of Subroutine Names: Numeric
  Tooling
     Initial Tool Component ID: 1
     Tool Number Method (eg T): Select Only
     Tool Change Retract Method: No Retract
     Tool Change Cancels Cycles: No
     Tool Change Causes Rapid Motion: No
  Siemens VNC
     Time Slice: 100
     X Offset: 0
     Y Offset: 0
     Z Offset: 0
  Wire EDM
     Maximum Wire Angle: 30
     Initial Voltage: On
     UV Relative to XY: Yes
     XY Also Moves UV: No
  
  Processing Toolpath File
  ACTIVE:Active Spindle Component Name = "A" 
    MACRO: AutosetToolLengthCompVars "" 2000
    MACRO: AutosetToolLengthCompVars "" 10000
    MACRO: AutosetToolLengthCompVars "" 60000
    MACRO: AutosetCutterCompVars "" 2400
    MACRO: AutosetCutterCompVars "" 12000
    MACRO: GetCurrentDate "3011" 0
    MACRO: GlobalVariables "120001-" 0
    MACRO: NewCycleLogic "" 1
    MACRO: SetSubsystemID "1" 0
    MACRO: AutosetTableAxisVars "Base Work Offset 1 1 5200 20 1 2 3 9 4 5 7 8 6" 0
    MACRO: AutosetTableAxisVars "Work Offsets 54 59 5220 20 1 2 3 9 4 5 7 8 6" 0
    MACRO: AutosetTableAxisVars "Work Offsets 1 8 5520 20 1 2 3 9 4 5 7 8 6" 0
    MACRO: AutosetTableAxisVars "Work Offsets 1 48 7000 20 1 2 3 9 4 5 7 8 6" 0
    MACRO: BiDirVarsModeOnOff "" 2
    MACRO: BiDirVarsApplyOnOff "" 1
    MACRO: BiDirVarsAbsIncr "" 1
    MACRO: CycleTurnAdjustEndPoint "" 1
    MACRO: CycleTurnRetractX "" 0.02
    MACRO: CycleTurnRetractZ "" 0.02
    MACRO: CycleTurnThreadOff "G00, G01, G02, G03" 0
    MACRO: CylindricalLinearAxis "" 2
    MACRO: CylindricalRotationalAxis "" 6
    MACRO: DynamicWorkOffsetsContour "" 0
    MACRO: DynamicWorkOffsetsWithMotion "" 1
    MACRO: DynamicWorkOffsetsTypes "WORK" 0
    MACRO: DynamicWorkOffsetsTypes "SECONDARY" 1
    MACRO: DynamicWorkOffsetsTypes "SHIFT" 0
    MACRO: G65ResetVarsOnLoop "" 0
    MACRO: GageOffsetAttributes "10000010000" 0
    MACRO: IfCheckAllMacros "" 1
    MACRO: Ijk2AbcType "" 99
    MACRO: PolarLinearAxis "" 1
    MACRO: PolarRotationalAxis "" 6
    MACRO: RotaryControlPointOnOff "" 0
    MACRO: RotationPlaneSpecialOffset "" 1
    MACRO: RpcpInput "" 0
    MACRO: RpcpContour "" 1
    MACRO: RpcpWithMotion "" 1
    MACRO: RtcpContour "" 1
    MACRO: RtcpWithMotion "" 1
    MACRO: SetCyclePartSurface "2" -0.1
    MACRO: SetCycleRetractLevel "2" 0
    MACRO: SetCycleSquareOffType "" 1
    MACRO: SetCycleTapFeedMode "" 1
    MACRO: SetDynamicVars "AxisLocalPlus 0000000 5001 5002 5003 5009 5004 5005 5007 5008 5006" 0
    MACRO: SetDynamicVars "AxisMachineMinus 0000000 5021 5022 5023 5029 5024 5025 5027 5028 5026" 0
    MACRO: SetDynamicVars "AxisLocalPlus 0100000 5041 5042 5043 5049 5044 5045 5047 5048 5046" 0
    MACRO: SetDynamicVars "CurGageOffset 5081 5082 5083" 0
    MACRO: TurnOnOffGagePivotOffset "" 0
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 0, Apply Gage Pivot Offset = 0, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 1, Dynamic Tool Tip = 0
    MACRO: TurnOnOffGageOffset "" 0
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 0, Apply Gage Pivot Offset = 0, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 1, Dynamic Tool Tip = 0
  OFFSETS:Gage Offset = (0, 0 0)
    MACRO: TurnOnOffRealTimeClock "" 1
    MACRO: ActiveSpindleActiveStock "" 0
    MACRO: ActiveSpindleMaxSpeed "" 500
    MACRO: ActiveSpindleActiveTool "" 0
  ACTIVE:Active Spindle Component Name = "A" 
    MACRO: ActiveSpindleMaxSpeed "" 10000
    MACRO: SetSubsystemID "1" 0
INPUT:                                     %
  File: 001 TOP RIGHT.eia, Sub: 001 TOP RIGHT.eia, Line: 1
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT:                                %
  File: 001 TOP RIGHT.eia, Sub: 001 TOP RIGHT.eia, Line: 2
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: O1254
  File: 001 TOP RIGHT.eia, Sub: 001 TOP RIGHT.eia, Line: 3
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: O 1254 * * 
    VARIABLE: 4115 = 1254
    VARIABLE: 4315 = 1254
    MACRO: SubroutineSequenceEnd "1254" 1254
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (MAZAK E1250V FOUR FACE TEST)
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 4
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (VERICUT ONLY)
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 5
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (G54 FROM A TO PROGRAM_ZERO)
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 6
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (TOOL COMPONENT Z-11.811)
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 7
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (NO G49)
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 8
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT:  
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 9
INPUT: G20 G17 G40 G80 G90
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 10
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 20 * * 
    VARIABLE: 4006 = 20
    VARIABLE: 4206 = 20
    MACRO: UnitsInch "20" 20
  WORD: G 17 * * 
    VARIABLE: 4002 = 17
    VARIABLE: 4202 = 17
    MACRO: MotionPlaneXY "17" 17
  WORD: G 90 * * 
    VARIABLE: 4003 = 90
    VARIABLE: 4203 = 90
    MACRO: ModeAbsolute "90" 90
  WORD: G 80 * * 
    VARIABLE: 4009 = 80
    VARIABLE: 4209 = 80
    MACRO: CyclesCancel "80" 80
  WORD: G 40 * * 
    VARIABLE: 4007 = 40
    VARIABLE: 4207 = 40
    MACRO: CutterCompOff "40" 40
    MACRO: Cancel3dToolOffset "40" 40
    MACRO: Cut3dcMode "40" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M200
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 11
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 200 * * 
    MACRO: NullMacro "200" 200
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: T2 M6
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 12
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
    Variable Referenced: 104120 = 0
  WORD: T 2 (Variable: 104120 0) 
    VARIABLE: 4120 = 2
    VARIABLE: 4320 = 2
    MACRO: ToolCode "2" 2
    VARIABLE: 104120 = 1
  WORD: M 6 * * 
    MACRO: ToolChangeMachineSubroutine "6" 6
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: CGTECH_MACRO "SubroutineSequence" "toolchange"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 1
  SubroutineSequence, CGTECH_MACRO "toolchange" 0
INPUT: IF [#4120 EQ #3026] GOTO 9999  (If New Tool is same as Current Tool, no tool change
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 2
    Variable Referenced: 4120 = 2
    Variable Referenced: 3026 = 0
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: IF 0 * * 
    MACRO: IfCheck "[#4120EQ#3026]" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 3
INPUT: CGTECH_MACRO "ProcessTimeOnOff" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 4
  ProcessTimeOnOff, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "TurnOnOffTravelLimits" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 5
  TurnOnOffTravelLimits, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "ModeAbsolute"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 6
  ModeAbsolute, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "SaveUnits"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 7
  SaveUnits, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "UnitsInch"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 8
  UnitsInch, CGTECH_MACRO "" 0
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 9
INPUT: CGTECH_MACRO "ZAxisMachineMotion" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 10
  ZAxisMachineMotion, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "ProcessMotion"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 11
  ProcessMotion, CGTECH_MACRO "" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 12
INPUT: CGTECH_MACRO "ActiveSpindleOnOff" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 13
  ActiveSpindleOnOff, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "RotaryControlPointOnOff" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 14
  RotaryControlPointOnOff, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "TurnOnOffGagePivotOffset" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 15
  TurnOnOffGagePivotOffset, CGTECH_MACRO "" 0
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 0, Apply Gage Pivot Offset = 0, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 1, Dynamic Tool Tip = 0
INPUT: CGTECH_MACRO "TurnOnOffGageOffset" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 16
  TurnOnOffGageOffset, CGTECH_MACRO "" 0
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 0, Apply Gage Pivot Offset = 0, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 1, Dynamic Tool Tip = 0
  OFFSETS:Gage Offset = (0, 0 0)
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 17
INPUT: CGTECH_MACRO "CoolantOff"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 18
  CoolantOff, CGTECH_MACRO "" 0
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 19
INPUT: CGTECH_MACRO "ZAxisMachineMotion" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 20
  ZAxisMachineMotion, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "ProcessMotion"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 21
  ProcessMotion, CGTECH_MACRO "" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
INPUT: CGTECH_MACRO "BAxisMachineMotion" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 22
  BAxisMachineMotion, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "ProcessMotion"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 23
  ProcessMotion, CGTECH_MACRO "" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
INPUT: CGTECH_MACRO "YAxisMachineMotion" "" -49.20
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 24
  YAxisMachineMotion, CGTECH_MACRO "" -49.2
INPUT: CGTECH_MACRO "ProcessMotion"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 25
  ProcessMotion, CGTECH_MACRO "" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 26
INPUT: CGTECH_MACRO "ZAxisMachineMotion" "" -9.0472
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 27
  ZAxisMachineMotion, CGTECH_MACRO "" -9.0472
INPUT: CGTECH_MACRO "ProcessMotion"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 28
  ProcessMotion, CGTECH_MACRO "" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
INPUT: CGTECH_MACRO "YAxisMachineMotion" "" -52.9527
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 29
  YAxisMachineMotion, CGTECH_MACRO "" -52.9527
INPUT: CGTECH_MACRO "ProcessMotion"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 30
  ProcessMotion, CGTECH_MACRO "" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 31
INPUT: CGTECH_MACRO "ToolChange"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 32
  ToolChange, CGTECH_MACRO "" 0
  OFFSETS: Gage Offset attributes:
  OFFSETS:   1. OFF: A Driven Point ID of zero is processed like any other ID
  OFFSETS:   2. OFF: The Driven Point ID is not required to match the active Tool ID
  OFFSETS:   3. ON:  Ignore the Driven Point ID and use the tool's first driven point if it exists
  OFFSETS:   4. OFF: Use the tool's Gage Point offset if the tool has no Driven Point IDs
  OFFSETS:   5. OFF: Use the tool's Gage Point offset if the tool has Driven Point IDs but none match
  OFFSETS:   6. OFF: No error message if the tool has no Driven Point IDs
  OFFSETS:   7. OFF: No error message if the tool has Driven Point IDs but none match
  OFFSETS:   8. OFF: No warning message if the tool has no Driven Point IDs
  OFFSETS:   9. OFF: No warning message if the tool has Driven Point IDs but none match
  OFFSETS:  10. OFF: Do not fall back to the tool's first driven point if the specified Driven Point ID is not found
  OFFSETS:  11. OFF: The Driven Point ID is not required to match the active tool number
  TOOL CHANGE:2
  TOOL CHANGE:Edges = (0, 0)
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 0, Apply Gage Pivot Offset = 0, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 1, Dynamic Tool Tip = 0
  OFFSETS:Gage Offset = (0, 0 7.876)
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 33
INPUT: CGTECH_MACRO "YAxisMachineMotion" "" -49.20
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 34
  YAxisMachineMotion, CGTECH_MACRO "" -49.2
INPUT: CGTECH_MACRO "ProcessMotion"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 35
  ProcessMotion, CGTECH_MACRO "" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
INPUT: CGTECH_MACRO "ZAxisMachineMotion" "" 0
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 36
  ZAxisMachineMotion, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "ProcessMotion"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 37
  ProcessMotion, CGTECH_MACRO "" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 38
INPUT: CGTECH_MACRO "SetSubsystemID" "1"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 39
  SetSubsystemID, CGTECH_MACRO "1" 0
INPUT: CGTECH_MACRO "RestoreUnits"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 40
  RestoreUnits, CGTECH_MACRO "" 0
INPUT: CGTECH_MACRO "TurnOnOffTravelLimits" "" 1
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 41
  TurnOnOffTravelLimits, CGTECH_MACRO "" 1
INPUT: CGTECH_MACRO "ProcessTimeOnOff" "" 1
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 42
  ProcessTimeOnOff, CGTECH_MACRO "" 1
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 43
INPUT: #3026 = #4120
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 44
    Variable Referenced: 4120 = 2
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
    VARIABLE: 3026 = 2
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: 
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 45
INPUT: N9999
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 46
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: N 9999 * * 
    VARIABLE: 4114 = 9999
    VARIABLE: 4314 = 9999
    MACRO: Sequence "9999" 9999
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: CGTECH_MACRO "EndSub"
  File: Mazak_Integrex_e1250V_8_P81880.sub, Sub: toolchange, Line: 47
  ReturnFromSub, CGTECH_MACRO "" 0
INPUT: G90 G54
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 13
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 90 * * 
    VARIABLE: 4003 = 90
    VARIABLE: 4203 = 90
    MACRO: ModeAbsolute "90" 90
  WORD: G 54 * * 
    VARIABLE: 4012 = 54
    VARIABLE: 4212 = 54
    MACRO: WorkCoord "ERROR" 54
  OFFSETS:Updating Work/Shift Offsets
  OFFSETS:Subsystem=1: Work Offset=(-52.5591,-24.6063,-38.4528,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: S3000 M3
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 14
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 3 * * 
    MACRO: ActiveSpindleActiveTool "3" 3
  ACTIVE:Active Spindle Component Name = "A" 
    MACRO: ActiveSpindleDir "CW" 3
    MACRO: ActiveSpindleOnOff "3" 1
  WORD: S 3000 * * 
    VARIABLE: 4119 = 3000
    VARIABLE: 4319 = 3000
    MACRO: ActiveSpindleSpeed "3000" 3000
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT:  
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 15
INPUT: (FACE 1 - PROVEN B90 C0)
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 16
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M108 M212
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 17
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 108 * * 
    MACRO: IgnoreMacro "108" 108
  WORD: M 212 * * 
    MACRO: IgnoreMacro "212" 212
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G00 B90. C0.
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 18
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 0 * * 
    VARIABLE: 4001 = 0
    VARIABLE: 4201 = 0
    MACRO: MotionRapid "00" 0
  WORD: B 90 * * 
    VARIABLE: 4102 = 90
    VARIABLE: 4302 = 90
    MACRO: BAxisMotion "90." 90
  WORD: C 0 * * 
    MACRO: CAxisMotion "0." 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M107 M210
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 19
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 107 * * 
    MACRO: IgnoreMacro "107" 107
  WORD: M 210 * * 
    MACRO: IgnoreMacro "210" 210
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G68.2 X0. Y0. Z0. I90. J90. K0.
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 20
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: X 0 (G 68.2) 
    MACRO: RotationPlaneXPoint "0." 0
  WORD: Y 0 (G 68.2) 
    MACRO: RotationPlaneYPoint "0." 0
  WORD: Z 0 (G 68.2) 
    MACRO: RotationPlaneZPoint "0." 0
  WORD: I 90 (G 68.2) 
    MACRO: RotationPlaneAngle3 "Z" 90
  WORD: J 90 (G 68.2) 
    MACRO: RotationPlaneAngle2 "X" 90
  WORD: K 0 (G 68.2) 
    MACRO: RotationPlaneAngle1 "Z" 0
  WORD: G 68.2 * * 
    VARIABLE: 4016 = 68.2
    VARIABLE: 4216 = 68.2
    MACRO: RotationPlane2 "68.2" 68.2
    MACRO: DynamicWorkOffsets "68.2" 1
    MACRO: DynamicWorkOffsetsContour "68.2" 0
    MACRO: DynamicWorkOffsetsWithMotion "68.2" 1
    MACRO: UpdateRotaryOffsets "68.2" 68.2
  OFFSETS:Updating Work/Shift Offsets
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G00 G90 X-.5 Y-.5
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 21
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 0 * * 
    VARIABLE: 4001 = 0
    VARIABLE: 4201 = 0
    MACRO: MotionRapid "00" 0
  WORD: G 90 * * 
    VARIABLE: 4003 = 90
    VARIABLE: 4203 = 90
    MACRO: ModeAbsolute "90" 90
  WORD: X -0.5 * * 
    MACRO: XAxisMotion "-.5" -0.5
  WORD: Y -0.5 * * 
    MACRO: YAxisMotion "-.5" -0.5
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G43 Z1.5
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 22
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: Z 1.5 * * 
    MACRO: ZAxisMotion "1.5" 1.5
  WORD: G 43 * * 
    VARIABLE: 4008 = 43
    VARIABLE: 4208 = 43
    MACRO: AdjustToolOffset "43" 2
    MACRO: TurnOnOffGagePivotOffset "43" 1
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 0, Apply Gage Pivot Offset = 1, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 2, Dynamic Tool Tip = 0
  OFFSETS:Gage Pivot Offset:  FROM: Intersection of A and B, TO: Tool 
    MACRO: TurnOnOffGageOffset "43" 1
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 1, Apply Gage Pivot Offset = 1, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 2, Dynamic Tool Tip = 0
  OFFSETS:Gage Pivot Offset:  FROM: Intersection of A and B, TO: Tool 
  OFFSETS:Gage Offset = (0, 0 7.876)
    MACRO: SetDynamicVars "AxisLocalPlus 0100000 5041 5042 5043 5049 5044 5045 5047 5048 5046" 43
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: Z.5
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 23
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: Z 0.5 * * 
    MACRO: ZAxisMotion ".5" 0.5
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G94 G01 X.5 F49.08
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 24
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 94 * * 
    VARIABLE: 4005 = 94
    VARIABLE: 4205 = 94
    MACRO: FeedModeMinute "94" 94
  WORD: G 1 * * 
    VARIABLE: 4001 = 1
    VARIABLE: 4201 = 1
    MACRO: MotionLinear "01" 1
  WORD: X 0.5 * * 
    MACRO: XAxisMotion ".5" 0.5
  WORD: F 49.08 * * 
    VARIABLE: 4109 = 49.08
    VARIABLE: 4309 = 49.08
    MACRO: FeedRate "49.08" 49.08
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G00 Z1.5
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 25
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 0 * * 
    VARIABLE: 4001 = 0
    VARIABLE: 4201 = 0
    MACRO: MotionRapid "00" 0
  WORD: Z 1.5 * * 
    MACRO: ZAxisMotion "1.5" 1.5
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M00
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 26
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  Start of After Motion macros.
  WORD: M 0 * * 
    MACRO: StopProgram "00" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (CHECK CLEARANCE)
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 27
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G69
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 28
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
    Variable Referenced: 4008 = 43
  WORD: G 69 (Variable: 4008 43) 
    VARIABLE: 4016 = 69
    VARIABLE: 4216 = 69
    MACRO: RotateCancel "69" 69
    MACRO: RotationPlaneCancelReset "69" 69
    MACRO: ToolOffsetUpdate "69" 69
  OFFSETS: Gage Offset attributes:
  OFFSETS:   1. OFF: A Driven Point ID of zero is processed like any other ID
  OFFSETS:   2. OFF: The Driven Point ID is not required to match the active Tool ID
  OFFSETS:   3. ON:  Ignore the Driven Point ID and use the tool's first driven point if it exists
  OFFSETS:   4. OFF: Use the tool's Gage Point offset if the tool has no Driven Point IDs
  OFFSETS:   5. OFF: Use the tool's Gage Point offset if the tool has Driven Point IDs but none match
  OFFSETS:   6. OFF: No error message if the tool has no Driven Point IDs
  OFFSETS:   7. OFF: No error message if the tool has Driven Point IDs but none match
  OFFSETS:   8. OFF: No warning message if the tool has no Driven Point IDs
  OFFSETS:   9. OFF: No warning message if the tool has Driven Point IDs but none match
  OFFSETS:  10. OFF: Do not fall back to the tool's first driven point if the specified Driven Point ID is not found
  OFFSETS:  11. OFF: The Driven Point ID is not required to match the active tool number
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 1, Apply Gage Pivot Offset = 1, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 2, Dynamic Tool Tip = 0
  OFFSETS:Gage Pivot Offset:  FROM: Intersection of A and B, TO: Tool 
  OFFSETS:Gage Offset = (0, 0 7.876)
    MACRO: DynamicWorkOffsets "69" 0
    MACRO: UpdateRotaryOffsets "69" 69
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M00
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 29
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  Start of After Motion macros.
  WORD: M 0 * * 
    MACRO: StopProgram "00" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT:  
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 30
INPUT: (FACE 2 - B90 C90)
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 31
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M108 M212
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 32
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 108 * * 
    MACRO: IgnoreMacro "108" 108
  WORD: M 212 * * 
    MACRO: IgnoreMacro "212" 212
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G00 B90. C90.
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 33
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 0 * * 
    VARIABLE: 4001 = 0
    VARIABLE: 4201 = 0
    MACRO: MotionRapid "00" 0
  WORD: B 90 * * 
    VARIABLE: 4102 = 90
    VARIABLE: 4302 = 90
    MACRO: BAxisMotion "90." 90
  WORD: C 90 * * 
    MACRO: CAxisMotion "90." 90
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M107 M210
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 34
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 107 * * 
    MACRO: IgnoreMacro "107" 107
  WORD: M 210 * * 
    MACRO: IgnoreMacro "210" 210
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G68.2 X0. Y0. Z0. I180. J90. K0.
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 35
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: X 0 (G 68.2) 
    MACRO: RotationPlaneXPoint "0." 0
  WORD: Y 0 (G 68.2) 
    MACRO: RotationPlaneYPoint "0." 0
  WORD: Z 0 (G 68.2) 
    MACRO: RotationPlaneZPoint "0." 0
  WORD: I 180 (G 68.2) 
    MACRO: RotationPlaneAngle3 "Z" 180
  WORD: J 90 (G 68.2) 
    MACRO: RotationPlaneAngle2 "X" 90
  WORD: K 0 (G 68.2) 
    MACRO: RotationPlaneAngle1 "Z" 0
  WORD: G 68.2 * * 
    VARIABLE: 4016 = 68.2
    VARIABLE: 4216 = 68.2
    MACRO: RotationPlane2 "68.2" 68.2
    MACRO: DynamicWorkOffsets "68.2" 1
    MACRO: DynamicWorkOffsetsContour "68.2" 0
    MACRO: DynamicWorkOffsetsWithMotion "68.2" 1
    MACRO: UpdateRotaryOffsets "68.2" 68.2
  OFFSETS:Updating Work/Shift Offsets
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G00 G90 X-.5 Y-.5
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 36
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 0 * * 
    VARIABLE: 4001 = 0
    VARIABLE: 4201 = 0
    MACRO: MotionRapid "00" 0
  WORD: G 90 * * 
    VARIABLE: 4003 = 90
    VARIABLE: 4203 = 90
    MACRO: ModeAbsolute "90" 90
  WORD: X -0.5 * * 
    MACRO: XAxisMotion "-.5" -0.5
  WORD: Y -0.5 * * 
    MACRO: YAxisMotion "-.5" -0.5
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G43 Z1.5
  File: 001 TOP RIGHT.eia, Sub: 1254, Line: 37
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: Z 1.5 * * 
    MACRO: ZAxisMotion "1.5" 1.5
  WORD: G 43 * * 
    VARIABLE: 4008 = 43
    VARIABLE: 4208 = 43
    MACRO: AdjustToolOffset "43" 2
    MACRO: TurnOnOffGagePivotOffset "43" 1
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 1, Apply Gage Pivot Offset = 1, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 2, Dynamic Tool Tip = 0
  OFFSETS:Gage Pivot Offset:  FROM: Intersection of A and B, TO: Tool 
    MACRO: TurnOnOffGageOffset "43" 1
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 1, Apply Gage Pivot Offset = 1, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 2, Dynamic Tool Tip = 0
  OFFSETS:Gage Pivot Offset:  FROM: Intersection of A and B, TO: Tool 
  OFFSETS:Gage Offset = (0, 0 7.876)
    MACRO: SetDynamicVars "AxisLocalPlus 0100000 5041 5042 5043 5049 5044 5045 5047 5048 5046" 43
  ACTIVE:Active Subsystem = "1", Active Stock = "Stock", Active Tool = "Tool"
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
