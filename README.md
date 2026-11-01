  
  Processing Started  : A_TESTING.eia   Sun Nov  1 08:06:57 2026

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
  
  Processing Toolpath File
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
    MACRO: ActiveSpindleMaxSpeed "" 10000
    MACRO: SetSubsystemID "1" 0
INPUT: %
  File: A_TESTING.eia, Sub: A_TESTING.eia, Line: 1
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: O1276
  File: A_TESTING.eia, Sub: A_TESTING.eia, Line: 2
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: O 1276 * * 
    MACRO: SubroutineSequenceEnd "1276" 1276
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (E1250V TEST 23 REPRODUCE TEST 19)
  File: A_TESTING.eia, Sub: 1276, Line: 3
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (VERICUT ONLY - NOT FOR MACHINE)
  File: A_TESTING.eia, Sub: 1276, Line: 4
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (G54 FROM A TO PROGRAM_ZERO)
  File: A_TESTING.eia, Sub: 1276, Line: 5
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (TOOL COMPONENT Z-11.811)
  File: A_TESTING.eia, Sub: 1276, Line: 6
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (NO G49 OR CONFIGURATION CHANGES)
  File: A_TESTING.eia, Sub: 1276, Line: 7
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G20 G17 G40 G80 G90
  File: A_TESTING.eia, Sub: 1276, Line: 8
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 20 * * 
    MACRO: UnitsInch "20" 20
  WORD: G 17 * * 
    MACRO: MotionPlaneXY "17" 17
  WORD: G 90 * * 
    MACRO: ModeAbsolute "90" 90
  WORD: G 80 * * 
    MACRO: CyclesCancel "80" 80
  WORD: G 40 * * 
    MACRO: CutterCompOff "40" 40
    MACRO: Cancel3dToolOffset "40" 40
    MACRO: Cut3dcMode "40" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M200
  File: A_TESTING.eia, Sub: 1276, Line: 9
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 200 * * 
    MACRO: NullMacro "200" 200
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: T2 M6
  File: A_TESTING.eia, Sub: 1276, Line: 10
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: T 2 (Variable: 104120 0) 
    MACRO: ToolCode "2" 2
  WORD: M 6 * * 
    MACRO: ToolChangeMachineSubroutine "6" 6
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G90 G54
  File: A_TESTING.eia, Sub: 1276, Line: 11
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 90 * * 
    MACRO: ModeAbsolute "90" 90
  WORD: G 54 * * 
    MACRO: WorkCoord "ERROR" 54
  OFFSETS:Updating Work/Shift Offsets
  OFFSETS:Subsystem=1: Work Offset=(-52.5591,-24.6063,-38.4528,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: S3000 M3
  File: A_TESTING.eia, Sub: 1276, Line: 12
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 3 * * 
    MACRO: ActiveSpindleActiveTool "3" 3
    MACRO: ActiveSpindleDir "CW" 3
    MACRO: ActiveSpindleOnOff "3" 1
  WORD: S 3000 * * 
    MACRO: ActiveSpindleSpeed "3000" 3000
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (FACE 1 - PROVEN B90 C0)
  File: A_TESTING.eia, Sub: 1276, Line: 13
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M108 M212
  File: A_TESTING.eia, Sub: 1276, Line: 14
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 108 * * 
    MACRO: IgnoreMacro "108" 108
  WORD: M 212 * * 
    MACRO: IgnoreMacro "212" 212
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G00 B90. C0.
  File: A_TESTING.eia, Sub: 1276, Line: 15
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 0 * * 
    MACRO: MotionRapid "00" 0
  WORD: B 90 * * 
    MACRO: BAxisMotion "90." 90
  WORD: C 0 * * 
    MACRO: CAxisMotion "0." 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M107 M210
  File: A_TESTING.eia, Sub: 1276, Line: 16
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: M 107 * * 
    MACRO: IgnoreMacro "107" 107
  WORD: M 210 * * 
    MACRO: IgnoreMacro "210" 210
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G68.2 X0. Y0. Z0. I90. J90. K0.
  File: A_TESTING.eia, Sub: 1276, Line: 17
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
    MACRO: RotationPlane2 "68.2" 68.2
    MACRO: DynamicWorkOffsets "68.2" 1
    MACRO: DynamicWorkOffsetsContour "68.2" 0
    MACRO: DynamicWorkOffsetsWithMotion "68.2" 1
    MACRO: UpdateRotaryOffsets "68.2" 68.2
  OFFSETS:Updating Work/Shift Offsets
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G00 G90 X-.5 Y-.5
  File: A_TESTING.eia, Sub: 1276, Line: 18
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 0 * * 
    MACRO: MotionRapid "00" 0
  WORD: G 90 * * 
    MACRO: ModeAbsolute "90" 90
  WORD: X -0.5 * * 
    MACRO: XAxisMotion "-.5" -0.5
  WORD: Y -0.5 * * 
    MACRO: YAxisMotion "-.5" -0.5
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G43 Z1.5
  File: A_TESTING.eia, Sub: 1276, Line: 19
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: Z 1.5 * * 
    MACRO: ZAxisMotion "1.5" 1.5
  WORD: G 43 * * 
    MACRO: AdjustToolOffset "43" 2
    MACRO: TurnOnOffGagePivotOffset "43" 1
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 0, Apply Gage Pivot Offset = 1, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 2, Dynamic Tool Tip = 0
  OFFSETS:Gage Pivot Offset:  FROM: Intersection of A and B, TO: Tool 
    MACRO: TurnOnOffGageOffset "43" 1
  OFFSETS:Updating Tool Offsets: Apply Gage Offsets = 1, Apply Gage Pivot Offset = 1, RTCP Uses = Gage Pivot Offset, AdjustToolOffset = 2, Dynamic Tool Tip = 0
  OFFSETS:Gage Pivot Offset:  FROM: Intersection of A and B, TO: Tool 
  OFFSETS:Gage Offset = (0, 0 7.876)
    MACRO: SetDynamicVars "AxisLocalPlus 0100000 5041 5042 5043 5049 5044 5045 5047 5048 5046" 43
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: Z.5
  File: A_TESTING.eia, Sub: 1276, Line: 20
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: Z 0.5 * * 
    MACRO: ZAxisMotion ".5" 0.5
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G94 G01 X.5 F49.08
  File: A_TESTING.eia, Sub: 1276, Line: 21
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 94 * * 
    MACRO: FeedModeMinute "94" 94
  WORD: G 1 * * 
    MACRO: MotionLinear "01" 1
  WORD: X 0.5 * * 
    MACRO: XAxisMotion ".5" 0.5
  WORD: F 49.08 * * 
    MACRO: FeedRate "49.08" 49.08
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G00 Z1.5
  File: A_TESTING.eia, Sub: 1276, Line: 22
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 0 * * 
    MACRO: MotionRapid "00" 0
  WORD: Z 1.5 * * 
    MACRO: ZAxisMotion "1.5" 1.5
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M00
  File: A_TESTING.eia, Sub: 1276, Line: 23
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  Start of After Motion macros.
  WORD: M 0 * * 
    MACRO: StopProgram "00" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (FACE 1 COMPLETE)
  File: A_TESTING.eia, Sub: 1276, Line: 24
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G69
  File: A_TESTING.eia, Sub: 1276, Line: 25
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 69 (Variable: 4008 43) 
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
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M00
  File: A_TESTING.eia, Sub: 1276, Line: 26
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  Start of After Motion macros.
  WORD: M 0 * * 
    MACRO: StopProgram "00" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (FACE 2 - EXACT TEST 19 SEQUENCE)
  File: A_TESTING.eia, Sub: 1276, Line: 27
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G68.2 X0. Y0. Z0. I180. J90. K0.
  File: A_TESTING.eia, Sub: 1276, Line: 28
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
    MACRO: RotationPlane2 "68.2" 68.2
    MACRO: DynamicWorkOffsets "68.2" 1
    MACRO: DynamicWorkOffsetsContour "68.2" 0
    MACRO: DynamicWorkOffsetsWithMotion "68.2" 1
    MACRO: UpdateRotaryOffsets "68.2" 68.2
  OFFSETS:Updating Work/Shift Offsets
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M00
  File: A_TESTING.eia, Sub: 1276, Line: 29
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  Start of After Motion macros.
  WORD: M 0 * * 
    MACRO: StopProgram "00" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G53.1
  File: A_TESTING.eia, Sub: 1276, Line: 30
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 53.1 * * 
    MACRO: WorkingPlane2Abc "100120 100121 100122" 0
    IJK TO ABC: Active components: Stock = Stock, Tool = Tool
    IJK TO ABC: Rotary components: First Axis = B, Second Axis = C
    WORKING PLANE: Setting Ijk2AbcSolutionType  = 1 (Shortest Distance)
    WORKING PLANE: Rotary axis position option 1 = (B90.0000, C90.0000)
    WORKING PLANE: Rotary axis position option 2 = (B270.0000, C-90.0000)
    WORKING PLANE: Option 2 is over limit
    WORKING PLANE: Comparing values on axis 1, Vericut picks (B90.0000 , C90.0000)
    MACRO: AAxisMotion "53.1" 0
    MACRO: BAxisMotion "53.1" 90
    MACRO: CAxisMotion "53.1" 90
    MACRO: ProcessMotion "53.1" 53.1
  OFFSETS:Updating Work/Shift Offsets
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: M00
  File: A_TESTING.eia, Sub: 1276, Line: 31
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  Start of After Motion macros.
  WORD: M 0 * * 
    MACRO: StopProgram "00" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: (SECOND FACE XY POSITION)
  File: A_TESTING.eia, Sub: 1276, Line: 32
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
INPUT: G90 G00 X-.5 Y-.5
  File: A_TESTING.eia, Sub: 1276, Line: 33
  Start of Block Processing
    MACRO: UpdateVariableBlockProcessing "104120;0" 0
  WORD: G 90 * * 
    MACRO: ModeAbsolute "90" 90
  WORD: G 0 * * 
    MACRO: MotionRapid "00" 0
  WORD: X -0.5 * * 
    MACRO: XAxisMotion "-.5" -0.5
  WORD: Y -0.5 * * 
    MACRO: YAxisMotion "-.5" -0.5
  End of Block Processing
    MACRO: UpdateVariableBlockProcessing "3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds" 0
    MACRO: UpdateVariableBlockProcessing "3002;#3002 + (#CGT_REAL_TIME / 3600);Hours" 0
