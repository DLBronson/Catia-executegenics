<?xml version="1.0"?>
<VcControl Version="9.7" Unit="inch">
  <Information>
    <InfoUserName>John.Bettencourt</InfoUserName>
    <InfoDateTime>Mon Nov 23 19:06:30 2026</InfoDateTime>
    <InfoVericutVersion>9.7.0.1</InfoVericutVersion>
    <InfoBuildDate>July 20, 2026 </InfoBuildDate>
    <InfoLibraryDate>07/20/26</InfoLibraryDate>
    <InfoCustomerName>133862_Mastercam, Tolland</InfoCustomerName>
    <InfoCustomerID>133862</InfoCustomerID>
    <InfoServerID>001</InfoServerID>
    <InfoHostID>000F30387145</InfoHostID>
  </Information>
  <COMMENT>Library File: hascnc.ctl, Revision 9.6.8, Issued: Thu Nov 20 08:29:30 2025</COMMENT>
  <ConstSurfSpeed Rapid="off" MaxRPM="1000" />
  <Sync Method="none">
  </Sync>
  <Subroutines>
    <File>hascnc.sub</File>
  </Subroutines>
  <Words>
    <Word Name="#" Type="variable_tag">
    </Word>
    <Word Name="$$" Type="skip">
    </Word>
    <Word Name="%" Type="skip">
    </Word>
    <Word Name="(" Type="begin_comment">
    </Word>
    <Word Name=")" Type="end_comment">
    </Word>
    <Word Name="*" Type="multiplication">
    </Word>
    <Word Name="+" Type="addition">
    </Word>
    <Word Name="," Type="separator">
    </Word>
    <Word Name=",C" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name=",R" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="-" Type="subtraction">
    </Word>
    <Word Name="/" Type="conditional">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
      <Function Name="AtanCondDivide"/>
    </Word>
    <Word Name=":" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="4.0" MetricType="decimal" MetricFormat="4.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name=";" Type="separator">
    </Word>
    <Word Name="=" Type="assignment">
    </Word>
    <Word Name="[" Type="left_precedence">
    </Word>
    <Word Name="\N" Type="end_block">
    </Word>
    <Word Name="]" Type="right_precedence">
    </Word>
    <Word Name="^" Type="power">
    </Word>
    <Word Name="A" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="3.3" MetricType="decimal" MetricFormat="3.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="ABS" Type="function_call">
      <Function Name="abs" Type="normal"/>
    </Word>
    <Word Name="ACOS" Type="function_call">
      <Function Name="acos_d" Type="normal"/>
    </Word>
    <Word Name="AND" Type="bitwise_and">
    </Word>
    <Word Name="ASIN" Type="function_call">
      <Function Name="asin_d" Type="normal"/>
    </Word>
    <Word Name="ATAN" Type="function_call">
      <Function Name="atan2_d" Type="normal"/>
    </Word>
    <Word Name="B" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="3.3" MetricType="decimal" MetricFormat="3.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="BLANK" Type="macro_call">
      <Value Type="alpha_numeric"/>
    </Word>
    <Word Name="C" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="3.3" MetricType="decimal" MetricFormat="3.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="CENTERX" Type="variable_name">
    </Word>
    <Word Name="CENTERY" Type="variable_name">
    </Word>
    <Word Name="CGT_G150_LASTR" Type="variable_name">
    </Word>
    <Word Name="CGT_G47" Type="variable_name">
    </Word>
    <Word Name="COS" Type="function_call">
      <Function Name="cos_d" Type="normal"/>
    </Word>
    <Word Name="COUNTER" Type="variable_name">
    </Word>
    <Word Name="D" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="2.0" MetricType="decimal" MetricFormat="2.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="DEFINE" Type="S840D_define">
    </Word>
    <Word Name="DELTAANGLE" Type="variable_name">
    </Word>
    <Word Name="DELTADIST" Type="variable_name">
    </Word>
    <Word Name="DO" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="DPRNT" Type="macro_call">
      <Value Type="text_string"/>
    </Word>
    <Word Name="E" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="0.4" MetricType="decimal" MetricFormat="1.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="END" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="ENDANGLE" Type="variable_name">
    </Word>
    <Word Name="EQ" Type="equal">
    </Word>
    <Word Name="F" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="3.1" MetricType="decimal" MetricFormat="4.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="FIX" Type="function_call">
      <Function Name="IntTruncAdj" Type="normal"/>
    </Word>
    <Word Name="FUP" Type="function_call">
      <Function Name="AbsCeil" Type="normal"/>
    </Word>
    <Word Name="G" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="3.0" MetricType="decimal" MetricFormat="3.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="GE" Type="greater_equal">
    </Word>
    <Word Name="GOTO" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="GT" Type="greater_than">
    </Word>
    <Word Name="H" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="2.0" MetricType="decimal" MetricFormat="2.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="I" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="IF" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="J" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="K" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="L" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.0" MetricType="decimal" MetricFormat="5.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="LE" Type="less_equal">
    </Word>
    <Word Name="LINEANGLE" Type="variable_name">
    </Word>
    <Word Name="LT" Type="less_than">
    </Word>
    <Word Name="M" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="2.0" MetricType="decimal" MetricFormat="2.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="N" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.0" MetricType="decimal" MetricFormat="5.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="NE" Type="not_equal">
    </Word>
    <Word Name="O" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="4.0" MetricType="decimal" MetricFormat="4.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="OR" Type="bitwise_or">
    </Word>
    <Word Name="P" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="4.0" MetricType="decimal" MetricFormat="4.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="PCLOS" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="POPEN" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="POSANGLE" Type="variable_name">
    </Word>
    <Word Name="POSX" Type="variable_name">
    </Word>
    <Word Name="POSY" Type="variable_name">
    </Word>
    <Word Name="Q" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="4.3" MetricType="decimal" MetricFormat="5.2" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="QTYHOLES" Type="variable_name">
    </Word>
    <Word Name="R" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="RADIUS" Type="variable_name">
    </Word>
    <Word Name="ROUND" Type="function_call">
      <Function Name="Round" Type="normal"/>
    </Word>
    <Word Name="S" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.0" MetricType="decimal" MetricFormat="5.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="SIN" Type="function_call">
      <Function Name="sin_d" Type="normal"/>
    </Word>
    <Word Name="SQRT" Type="function_call">
      <Function Name="sqrt" Type="normal"/>
    </Word>
    <Word Name="STARTANGLE" Type="variable_name">
    </Word>
    <Word Name="STARTX" Type="variable_name">
    </Word>
    <Word Name="STARTY" Type="variable_name">
    </Word>
    <Word Name="STRLEN" Type="function_call">
      <Function Name="STRLEN" Type="normal"/>
    </Word>
    <Word Name="SUBSTR" Type="function_call">
      <Function Name="SUBSTR" Type="normal"/>
    </Word>
    <Word Name="T" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="2.0" MetricType="decimal" MetricFormat="2.0" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="TAN" Type="function_call">
      <Function Name="tan_d" Type="normal"/>
    </Word>
    <Word Name="THEN" Type="ignore">
    </Word>
    <Word Name="U" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="UNBLANK" Type="macro_call">
      <Value Type="alpha_numeric"/>
    </Word>
    <Word Name="V" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="W" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="WH" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="WHILE" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="" MetricType="decimal" MetricFormat="" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="X" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="on" Multiplier="1"/>
    </Word>
    <Word Name="XOR" Type="bitwise_xor">
    </Word>
    <Word Name="Y" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="off" Multiplier="1"/>
    </Word>
    <Word Name="Z" Type="macro_call">
      <Value Type="numeric" InchType="decimal" InchFormat="5.4" MetricType="decimal" MetricFormat="5.3" Multiply="off" Multiplier="1"/>
    </Word>
  </Words>
  <NCSubstitutions>
  </NCSubstitutions>
  <OPSubstitutions>
  </OPSubstitutions>
  <SuperGroup Name="Specials">
    <Group Name=":" Type="word" Description="SUBROUTINES: Subroutine suffix, Sequence number" Field="0">
      <ConditionMacro Description="">
        <Macro Name="SubroutineSequence" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="DO" Type="word" Description="BRANCHING: Introduction of an endless loop, Combined with &quot;ENDLOOP&quot;" Field="0">
      <ConditionMacro Description="">
        <Macro Name="DoLoop" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="END" Type="word" Description="BRANCHING: End DO Loop, Combined with &quot;LOOP&quot;. Marks the end of the loop and results in a return jump to the beginning of the loop" Field="0">
      <ConditionMacro Description="">
        <Macro Name="EndLoop" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="GOTO" Type="word" Description="BRANCHING: Go To Sequence or Label, Jump operation first backward then forward" Field="0">
      <ConditionMacro Description="">
        <Macro Name="GotoJumpForwardBackwardStart" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="IF" Type="word" Description="BRANCHING: Introduction of a conditional jump, Combined with &quot;GOTO&quot; Forwards, i.e: If (expression) GOTO 30" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IfCheck" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="N" Type="word" Description="SUBROUTINES: Determines Sequence number or Subroutine name, Determines Sequence number or Subroutine name" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4114" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="SequenceOrSubroutine" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="O" Type="word" Description="SUBROUTINES: Marks Sequence number or Subroutine name, Marks Sequence number or Subroutine name" Field="0">
      <ConditionMacro Description="">
        <Macro Name="SubroutineSequenceEnd" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="WHILE" Type="word" Description="BRANCHING: Start of WHILE program loop, Combined with &quot;DoLoop&quot;. Initiates the program loop" Field="0">
      <ConditionMacro Description="">
        <Macro Name="WhileLoop" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="WH" Type="word" Description="BRANCHING: Start of WHILE program loop, Combined with &quot;DoLoop&quot;. Initiates the program loop" Field="0">
      <ConditionMacro Description="">
        <Macro Name="WhileLoop" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
  </SuperGroup>
  <SuperGroup Name="States">
    <Group Name="G" Type="word" Description="SUBROUTINES; Call Fanuc style NC macro block and set block variables" Range="65" Field="0">
      <ConditionMacro Description="">
        <Macro Name="MacroVarState" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="CallNCMacro" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="Call Fanuc style NC macro on every motion block and set block variables" Range="66" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4012" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MacroVarState" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="CallNCMacroMotion" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SUBROUTINES; Call Fanuc style NC macro on every block and set block variables" Range="66.1" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4012" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MacroVarState" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="CallNCMacroBlock" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SUBROUTINES; Cancel continuous Fanuc style NC macro call and turn off block variables" Range="67" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4012" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MacroVarState" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CallNCMacroCancel" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Linear interpolation with rapid traverse" Range="0" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4001" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MotionRapid" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Linear interpolation with feedrate" Range="1" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4001" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MotionLinear" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Circular/helical interpolation CW" Range="2" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4001" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MotionCW" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Circular/helical interpolation CCW" Range="3" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4001" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MotionCCW" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="ACCEL/DECEL: Exact stop - Deceleration - Non-modal " Range="9" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Selection of working plane X/Y" Range="17" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4002" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MotionPlaneXY" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Selection of working plane Z/X" Range="18" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4002" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MotionPlaneZX" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Selection of working plane Y/Z" Range="19" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4002" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MotionPlaneYZ" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="UNITS: Inch dimensions for geometric specifications (lengths)" Range="20" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4006" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="UnitsInch" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="UNITS: Metric dimensions for geometric specifications (lengths)" Range="21" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4006" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="UnitsMetric" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="PROBING: Measurement with PROBE_TOUCHED return" Range="31" Field="0">
      <ConditionMacro Description="">
        <Macro Name="Probe" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="RETURN=PROBE_TOUCHED"/>
        </Macro>
        <Macro Name="BlockFinish" Scan="no" AfterMotion="yes">
        </Macro>
        <Variable Name="5061" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5041"  Units="0"/>
        </Variable>
        <Variable Name="5062" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5042"  Units="0"/>
        </Variable>
        <Variable Name="5063" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5043"  Units="0"/>
        </Variable>
        <Variable Name="5064" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5044"  Units="0"/>
        </Variable>
        <Variable Name="5065" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5045"  Units="0"/>
        </Variable>
        <Variable Name="5066" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5046"  Units="0"/>
        </Variable>
        <Variable Name="5067" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5047"  Units="0"/>
        </Variable>
        <Variable Name="5068" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5048"  Units="0"/>
        </Variable>
        <Variable Name="5069" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#5049"  Units="0"/>
        </Variable>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="TOOL OFFSETS: Tool length compensation positive / on (3-axis), Used with H word to set Driven Pont values" Range="43" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4008" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="TurnOnOffGagePivotOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGageOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="TOOL OFFSETS: Tool length compensation negative (3-axis), Used with H word to set Driven Pont values" Range="44" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4008" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="TurnOnOffGagePivotOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGageOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SUBROUTINES; Call text engraving subroutine 9876 (also with E/F/I/J/P/R/X/Y/Z)" Range="47" Field="0">
      <ConditionMacro Description="">
        <Variable Name="CGT_G47" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="MacroVarState" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="CallNCMacro" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="SubroutineName" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="9876"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="TOOL OFFSETS: Cancel tool length compensation" Range="49" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4008" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="RotaryControlPointOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGagePivotOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGageOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="ROTATION PLANE; Cancel scaling" Range="50" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4011" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="RotationPlaneCancelReset" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="ROTATION PLANE; Scaling, factor to the positioning values in blocks after the G51 [X...] [Y...] [Z...] [P...]" Range="51" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4011" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="RotationPlaneXPoint" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="#5001"  Units="0"/>
        </Macro>
        <Macro Name="RotationPlaneYPoint" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="#5002"  Units="0"/>
        </Macro>
        <Macro Name="RotationPlaneZPoint" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="#5003"  Units="0"/>
        </Macro>
        <Macro Name="RotationPlane2" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Suppression of current zero offset (non-modal)" Range="53" Field="0">
      <ConditionMacro Description="">
        <Macro Name="NullMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Uni-directional positioning" Range="60" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Exact stop mode" Range="61" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Cancel exact stop mode" Range="64" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Absolute dimensions" Range="90" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4003" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="ModeAbsolute" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Incremental dimensions" Range="91" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4003" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="ModeIncremental" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="FEEDS &amp; SPEEDS: Inverse-time feedrate RPM" Range="93" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4005" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="FeedModeTime" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="FEEDS &amp; SPEEDS: Linear feedrate F in mm/min or inch/min and degree/min" Range="94" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4005" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="FeedModeMinute" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="FEEDS &amp; SPEEDS: Revolutional feedrate F in mm/rev or inch/rev" Range="95" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4005" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="FeedModeRevolution" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="Mirroring, Disable mirror image " Range="100" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4022" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="NullMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="Mirroring, Enable mirror image" Range="101" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4022" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="NullMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="WORK OFFSETS: Programmable output to RS-232 (also with X/Y/Z/A/B/C)" Range="102" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="ACCEL/DECEL: Limit block look-ahead (also with P)" Range="103" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="CYLINDRICAL / POLAR: Cylindrical mapping (X/Y/Z/A/B/C/Q/R)" Range="107" Field="0">
      <ConditionMacro Description="Cylindrical mapping fo A">
        <CondWord Logical="and" Name="A"/>
        <Variable Name="107100" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="4"  Units="0"/>
        </Variable>
        <Macro Name="CylindricalRotationalAxis" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="4"  Units="0"/>
        </Macro>
        <Macro Name="CylindricalInterpolation" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Cylindrical mapping fo B">
        <CondWord Logical="and" Name="B"/>
        <Variable Name="107100" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="5"  Units="0"/>
        </Variable>
        <Macro Name="CylindricalRotationalAxis" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="5"  Units="0"/>
        </Macro>
        <Macro Name="CylindricalInterpolation" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Cylindrical mapping fo C">
        <CondWord Logical="and" Name="C"/>
        <Variable Name="107100" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="6"  Units="0"/>
        </Variable>
        <Macro Name="CylindricalRotationalAxis" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="6"  Units="0"/>
        </Macro>
        <Macro Name="CylindricalInterpolation" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Cylindrical mapping off">
        <Macro Name="CylindricalInterpolation" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="CUTTER COMPENSATION: 3D Cutter compensation" Range="141" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CutterComp3d" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description=" TOOL OFFSETS: 5-Axis tool length compensation in tool axis direction " Range="143" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4008" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="TurnOnOffGagePivotOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGageOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="RtcpOn" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="RtcpMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
        <Macro Name="UpdateRotaryOffsets" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="ACCEL/DECEL: Accuracy Control" Range="187" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SHIFT WORK PZ: Tool Center Point Control On" Range="234" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4008" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="RotaryControlPointOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGagePivotOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGageOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="DynamicWorkOffsets" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="DynamicWorkOffsetsMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="#4014"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SHIFT WORK PZ: Dynamic work offsets on" Range="254" Field="0">
      <ConditionMacro Description="">
        <Macro Name="DynamicWorkOffsets" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="DynamicWorkOffsetsMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="#4014"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SHIFT WORK PZ: Dynamic work offsets off" Range="255" Field="0">
      <ConditionMacro Description="">
        <Macro Name="DynamicWorkOffsets" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="DynamicWorkOffsetsMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="FEEDS &amp; SPEEDS: Spindle Command (tool spindle on CW)" Range="3" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleDir" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CW"/>
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="FEEDS &amp; SPEEDS: Spindle Command (tool spindle on CCW)" Range="4" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleDir" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CCW"/>
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="FEEDS &amp; SPEEDS: Spindle Command (tool spindle off)" Range="5" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
  </SuperGroup>
  <SuperGroup Name="Cycles">
    <Group Name="G" Type="word" Description="POCKET CYCLES: Circle Pocket Milling CW" Range="12" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CycleMillPocketType" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketCutDirection" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketCutType" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketRetractOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="POCKET CYCLES: Circle Pocket Milling CCW" Range="13" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CycleMillPocketType" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketCutDirection" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketCutType" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketRetractOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SUBROUTINES: Bolt hole circle (calls O707000 subroutine) (also with I/J/L)" Range="70" Field="0">
      <ConditionMacro Description="">
        <Macro Name="SubroutineName" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="707000"  Units="0"/>
        </Macro>
        <Macro Name="CallSub" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SUBROUTINES: Bolt hole arc (calls O717100 subroutine) (also with I/J/L)" Range="71" Field="0">
      <ConditionMacro Description="">
        <Macro Name="SubroutineName" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="717100"  Units="0"/>
        </Macro>
        <Macro Name="CallSub" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="SUBROUTINES: Bolt hole along an angle (calls O727200 subroutine) (also with I/J/L) " Range="72" Field="0">
      <ConditionMacro Description="">
        <Macro Name="SubroutineName" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="727200"  Units="0"/>
        </Macro>
        <Macro Name="CallSub" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: High-Speed Peck Drilling Canned Cycle" Range="73" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesDeep" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleStepUpMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Reverse Tap Canned Cycle" Range="74" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesTap" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleDir" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CCW"/>
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Fine boring canned cycle, orient spindle" Range="76" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBoreOrient" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Back Bore Canned Cycle" Range="77" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBore" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleBoreShiftFlags" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="-1 1 -1 0 1"/>
        </Macro>
        <Macro Name="CycleBoreSpindleOnOffFlags" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="0 0 0 1 0 0 0 0 0 1"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Canned Cycle Cancel" Range="80" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesCancel" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="0"/>
        </Macro>
        <Macro Name="SetCyclePartSurface" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="-0.1"  Units="0"/>
          <Override  Type="text"  Value="2"/>
        </Macro>
        <Macro Name="SetCycleRapidLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="0"/>
        </Macro>
        <Macro Name="SetCycleRetractLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="2"/>
        </Macro>
        <Macro Name="CycleXyzDepth" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Drill Canned Cycle" Range="81" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesDrill" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Spot Drill Canned Cycle, face" Range="82" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesFace" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Normal Peck Drilling Canned Cycle, deep" Range="83" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesDeep" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleStepUpMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Tapping Canned Cycle CW" Range="84" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesTap" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleDir" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CW"/>
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Bore In, Bore Out Canned Cycle" Range="85" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBore" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Bore and Stop Canned Cycle, orient spindle" Range="86" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBoreOrient" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Boring cycle, drag" Range="87" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBoreDrag" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Boring cycle, drag" Range="88" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBoreDrag" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Bore In, Dwell, Bore Out Canned Cycle" Range="89" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBore" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Canned Cycle Initial Point Return" Range="98" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4010" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="SetCycleRetractLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: Canned Cycle R Plane Return" Range="99" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4010" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="SetCycleRetractLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="2"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="POCKET CYCLES: General Purpose Pocket Milling cycle (also with D/F/I/J/K/P/Q/R/S/X/Y/Z)" Range="150" Field="0">
      <ConditionMacro Description="Absolute mode and R word not present">
        <CondState Logical="and" Name="ABS_INC" Value="ABSOLUTE"/>
        <CondWord Logical="and_not" Name="R"/>
        <Macro Name="CycleMillPocketCenterCurrentX" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleMillPocketCenterCurrentY" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleMillPocketType" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketRetractOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="SetCycleRapidLevel" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="#CGT_G150_LASTR"  Units="0"/>
          <Override  Type="text"  Value="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Incremental mode and R word not present">
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <CondWord Logical="and_not" Name="R"/>
        <Macro Name="CycleMillPocketCenterCurrentX" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleMillPocketCenterCurrentY" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleMillPocketType" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketRetractOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="SetCycleRapidLevel" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="#CGT_G150_LASTR"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="CycleMillPocketCenterCurrentX" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleMillPocketCenterCurrentY" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleMillPocketType" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketRetractOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis High Speed Peck Drilling Canned Cycle, deep" Range="153" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesDeep" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="CycleStepUpMode" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis Reverse Tap Canned Cycle" Range="155" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesTap" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleDir" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CCW"/>
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis Drill Canned Cycle" Range="161" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesDrill" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis Spot Drill Canned Cycle, face" Range="162" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesFace" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis Normal Peck Drilling Canned Cycle, deep" Range="163" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesDeep" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis Tapping Canned Cycle" Range="164" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesTap" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis Boring Canned Cycle" Range="165" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBore" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis Bore and Stop Canned Cycle, drag" Range="166" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBoreDrag" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: 5-Axis Bore and Dwell Canned Cycle" Range="169" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesBore" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: CCW Non-Vertical Rigid Tap, reverse" Range="174" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesTap" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="6"/>
        </Macro>
        <Macro Name="SetCyclePartSurface" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Macro Name="SetCycleRapidLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Macro Name="SetCycleRetractLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Macro Name="CycleXyzDepth" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleDir" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CCW"/>
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="DRILL CYCLES: CW Non-Vertical Rigid Tap" Range="184" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4009" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CyclesTap" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="6"/>
        </Macro>
        <Macro Name="SetCyclePartSurface" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Macro Name="SetCycleRapidLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Macro Name="SetCycleRetractLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Macro Name="CycleXyzDepth" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleDir" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CW"/>
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
  </SuperGroup>
  <SuperGroup Name="Variables">
    <Group Name="3000" Type="variable" Description="MISCELLANEOUS: Programmable Alarm Messages" Field="0">
      <ConditionMacro Description="">
        <Macro Name="AlarmSignal" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="#3000 Alarm Signal"/>
        </Macro>
        <Macro Name="StopUnconditional" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="3006" Type="variable" Description="MISCELLANEOUS: Programmable Stop" Field="0">
      <ConditionMacro Description="">
        <Macro Name="MessageMacro" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
          <Override  Type="text"  Value="#3006 Operator Message"/>
        </Macro>
        <Macro Name="StopProgram" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="7000-7386" Type="variable" Description="VARIABLES: additional work offsets #14001-#14386" Field="0">
      <ConditionMacro Description="">
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 1 20 14000 20"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 100 129 14000 20"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="14000-14386" Type="variable" Description="VARIABLES: additional work offsets #7001-#7386" Field="0">
      <ConditionMacro Description="">
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 1 20 7000 20"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 110 129 7000 20"/>
        </Macro>
      </ConditionMacro>
    </Group>
  </SuperGroup>
  <SuperGroup Name="Registers">
    <Group Name="A" Type="word" Description="MOTION: A" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, A-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordAValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, A-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordAValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="AAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="AAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, A-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordAValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Programmable output to RS-232, Optional A-axis command">
        <CondWord Logical="and" Name="G" Range="102"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="AAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="B" Type="word" Description="MOTION: B" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, B-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordBValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, B-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordBValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="BAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="BAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, B-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordBValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Programmable output to RS-232, Optional B-axis command">
        <CondWord Logical="and" Name="G" Range="102"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Variable Name="4102" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="BAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name=",C" Type="word" Description="CHAMFER / ROUND: Chamfer distance (non-modal)" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CornerMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="CornerValue" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CornerMode" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="C" Type="word" Description="MOTION: C" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, C-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordCValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, C-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordCValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="CAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="CAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, C-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordCValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Programmable output to RS-232, Optional C-axis command">
        <CondWord Logical="and" Name="G" Range="102"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="CAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="D" Type="word" Description="CUTTER COMPENSATION: Cutter compensation register" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4107" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="ToolCutterComp" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="DPRNT" Type="word" Description="MISCELLANEOUS: Write data to external file specified and opened via POPEN" Field="0">
      <ConditionMacro Description="">
        <Macro Name="FanucDprint" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="E" Type="word" Description="DRILL CYCLES: Cycle depth" Field="0">
      <ConditionMacro Description="SUBROUTINES: Engraving, Plunge feed rate (units/min)">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Cycle depth">
        <CondWord Logical="and" Name="G" Range="153 155-184"/>
        <Macro Name="SetCycleRapidLevel" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="$*-1"  Units="0"/>
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Macro Name="SetMotionFlag" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="ProcessMotion" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ACCEL/DECEL: Accuracy control high speed machining (also with E/P)">
        <CondWord Logical="and" Name="G" Range="187"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="F" Type="word" Description="FEEDS &amp; SPEEDS: Feedrate" Field="0">
      <ConditionMacro Description="POCKET CYCLES: Circle Pocket Milling, Feedrate">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <Macro Name="CycleMillPocketPlungeFeed" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CycleMillPocketRoughFeed" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Engraving, Engraving feed rate (units/min)">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Feedrate">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <Macro Name="SetCycleFeedrate" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Variable Name="4109" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="FeedRate" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="H" Type="word" Description="TOOL OFFSETS: Tool length compensation register" Field="0">
      <ConditionMacro Description="TOOL OFFSETS: Tool length compensation register set to 0">
        <CondWord Logical="and" Name="H" Range="0"/>
        <Variable Name="4111" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="TurnOnOffGagePivotOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGageOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="RotaryControlPointOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Variable Name="4111" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="GageOffsetDrivenPoint" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="SetGageOffsetVar" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="{2000 + $}"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="I" Type="word" Description=" CIRCLES: Circle Center" Field="0">
      <ConditionMacro Description=" CIRCLES: Circle Center X">
        <CondState Logical="and" Name="MOTION_TYPE" Value="CW"/>
        <Macro Name="CircleCenterX" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description=" CIRCLES: Circle Center X">
        <CondState Logical="and" Name="MOTION_TYPE" Value="CCW"/>
        <Macro Name="CircleCenterX" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: Circle Pocket Milling, Radius of finish circle">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <CondWord Logical="and_not" Name="K"/>
        <Macro Name="CycleMillPocketInsideRadius" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CycleMillPocketInsideRadius" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: Circle Pocket Milling, Radius of finish circle">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <Macro Name="CycleMillPocketInsideRadius" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Engraving, Angle of rotation (-360. to +360.); default is 0">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Bolt Hole Circle/Arc, radius ">
        <CondWord Logical="and" Name="G" Range="70 71"/>
        <Variable Name="RADIUS" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Bolt Holes Along An Angle, Distance between holes">
        <CondWord Logical="and" Name="G" Range="72"/>
        <Variable Name="DELTADIST" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Fine Boring Canned Cycle, Shift value along the X-Axis before retracting">
        <CondWord Logical="and" Name="G" Range="76"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Back Bore Canned Cycle, Shift value along the X-Axis before retracting">
        <CondWord Logical="and" Name="G" Range="77"/>
        <Macro Name="CycleBoreShiftValue" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="ABS($)"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CUTTER COMPENSATION: 3D+ Cutter Compensation, X-Axis cutter compensation direction from program path">
        <CondWord Logical="and" Name="G" Range="141"/>
        <Macro Name="Tool3dXOffset" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling, X-Axis cut increment (positive value)">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketStepover" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Y"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Peck Drilling Canned Cycle, Cycle first step/peck depth">
        <CondWord Logical="and" Name="G" Range="153 163"/>
        <Macro Name="CycleStepValue" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CUTTER COMPENSATION: 3D+ Cutter Compensation, X-Axis cutter compensation direction from program path">
        <CondState Logical="and" Name="3D_TOOL_OFFSET" Value="ON"/>
        <Macro Name="Tool3dXOffset" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Peck Drilling Canned Cycle, Cycle first step/peck depth ">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <Macro Name="CycleStepValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="Unsupported" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="J" Type="word" Description="CIRCLES: Circle Center Y" Field="0">
      <ConditionMacro Description="SUBROUTINES: Engraving, Height of text in in/mm (minimum = 0.001 inch); default is 1.0 inch (1.0 mm)">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Bolt Hole Circle/Arc, Starting angle (0 to 360.0 degrees CCW from horizontal; or 3 o’clock position)">
        <CondWord Logical="and" Name="G" Range="70 71"/>
        <Variable Name="STARTANGLE" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Bolt Holes Along An Angle, Angle of line (degrees CCW from horizontal)">
        <CondWord Logical="and" Name="G" Range="72"/>
        <Variable Name="LINEANGLE" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Fine boring canned cycle, Shift value along the Y-Axis before retracting, if Q is not specified">
        <CondWord Logical="and" Name="G" Range="76"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Back Bore Canned Cycle, Shift value along the Y Axis before retracting, if Q is not specified">
        <CondWord Logical="and" Name="G" Range="77"/>
        <Macro Name="CycleBoreShiftValue" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="ABS($)"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CUTTER COMPENSATION: 3D+ Cutter Compensation, Y-Axis cutter compensation direction from program path">
        <CondWord Logical="and" Name="G" Range="141"/>
        <Macro Name="Tool3dYOffset" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling, X-Axis cut increment (positive value)">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketStepover" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="X"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Peck Drilling Canned Cycle, Amount to reduce peck depth each pass">
        <CondWord Logical="and" Name="G" Range="153 163"/>
        <Macro Name="CycleStepValueDelta" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CUTTER COMPENSATION: 3D+ Cutter Compensation, Y-Axis cutter compensation direction from program path">
        <CondState Logical="and" Name="3D_TOOL_OFFSET" Value="ON"/>
        <Macro Name="Tool3dYOffset" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Peck Drilling Canned Cycle, Amount to reduce peck depth each pass">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <Macro Name="CycleStepValueDelta" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CIRCLES: Circle Center Y">
        <CondState Logical="and" Name="MOTION_TYPE" Value="CW"/>
        <Macro Name="CircleCenterY" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CIRCLES: Circle Center Y">
        <CondState Logical="and" Name="MOTION_TYPE" Value="CCW"/>
        <Macro Name="CircleCenterY" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="Unsupported" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="K" Type="word" Description="CIRCLES: Circle Center Z" Field="0">
      <ConditionMacro Description="POCKET CYCLES: Radius of finish circle">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <Macro Name="CycleMillPocketCornerRadius" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Bolt Hole Arc, Angular spacing of holes (+ or –)">
        <CondWord Logical="and" Name="G" Range="71"/>
        <Variable Name="DELTAANGLE" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="CUTTER COMPENSATION: 3D+ Cutter Compensation, Z-Axis cutter compensation direction from program path">
        <CondWord Logical="and" Name="G" Range="141"/>
        <Macro Name="Tool3dZOffset" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling, Finishing pass amount (positive value)">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketSideAllowance" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Peck Drilling Canned Cycle, Cycle minimum step/peck depth">
        <CondWord Logical="and" Name="G" Range="153 163"/>
        <Macro Name="CycleStepValueMin" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CUTTER COMPENSATION: 3D+ Cutter Compensation, Z-Axis cutter compensation direction from program path">
        <CondState Logical="and" Name="3D_TOOL_OFFSET" Value="ON"/>
        <Macro Name="Tool3dZOffset" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Peck Drilling Canned Cycle, Cycle minimum step/peck depth">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <Macro Name="CycleStepValueMin" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CIRCLES: Circle Center Z">
        <CondState Logical="and" Name="MOTION_TYPE" Value="CW"/>
        <Macro Name="CircleCenterZ" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CIRCLES: Circle Center Z">
        <CondState Logical="and" Name="MOTION_TYPE" Value="CCW"/>
        <Macro Name="CircleCenterZ" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="Unsupported" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="L" Type="word" Description="BRANCHING: Loop count" Field="0">
      <ConditionMacro Description="POCKET CYCLES: Radius of finish circle, Loop count for repeating deeper cuts">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <Macro Name="CycleMillPocketLoopCount" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Bolt Hole, Number of holes ">
        <CondWord Logical="and" Name="G" Range="70 71 72"/>
        <Variable Name="QTYHOLES" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="LoopCount" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="P" Type="word" Description="WORK OFFSETS: Set Offsets" Field="0">
      <ConditionMacro Description="DWELL: The dwell time in seconds or milliseconds">
        <CondWord Logical="and" Name="G" Range="4"/>
        <Variable Name="3001" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="#3001 + $"  Units="0"/>
        </Variable>
        <Macro Name="DwellTime" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="3.4" MetricType="trailing" MetricFormat="4.3"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Selects a specific offset">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordIndex" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="TableIndex" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Engraving, 0 for literal text engraving - 1 for sequential serial number engraving - 32-126 for ASCII characters">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATION PLANE: Scaling, G47, Scaling factor for XY axes">
        <CondWord Logical="and" Name="G" Range="51"/>
        <CondVariable Logical="and" Name="CGT_G47" Range="47"/>
        <Macro Name="RotationPlaneXScale" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="3.3" MetricType="trailing" MetricFormat="3.3"/>
        </Macro>
        <Macro Name="RotationPlaneYScale" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="3.3" MetricType="trailing" MetricFormat="3.3"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATION PLANE: Scaling, Scaling factor for all axes">
        <CondWord Logical="and" Name="G" Range="51"/>
        <Macro Name="RotationPlaneXScale" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="3.3" MetricType="trailing" MetricFormat="3.3"/>
        </Macro>
        <Macro Name="RotationPlaneYScale" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="3.3" MetricType="trailing" MetricFormat="3.3"/>
        </Macro>
        <Macro Name="RotationPlaneZScale" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="3.3" MetricType="trailing" MetricFormat="3.3"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Macro subprogram call, Subroutine number/NC macro name">
        <CondWord Logical="and" Name="G" Range="65 66 66.1"/>
        <Macro Name="SubroutineName" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ACCEL/DECEL: Limit Block Look-Ahead, maximum number of blocks the control looks ahead">
        <CondWord Logical="and" Name="G" Range="103"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling, Subprogram number that defines pocket geometry">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketBoundarySub" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Select Work Coordinates, Activates additional work offsets">
        <CondWord Logical="and" Name="G" Range="154"/>
        <CondWord Logical="and" Name="P" Range="1-99"/>
        <Variable Name="4130" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="WorkCoordIndex" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ACCEL/DECEL: Accuracy Control, Controls the smoothness level, P1(rough), P2(medium), or P3(finish)">
        <CondWord Logical="and" Name="G" Range="187"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Selects a specific offset">
        <CondWord Logical="and" Name="L" Range="20"/>
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordIndex" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="$+109"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Spindle Orientation, Number of degrees (0 - 360)">
        <CondWord Logical="and" Name="M" Range="19"/>
        <Macro Name="C2AxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MISCELLANEOUS: Pallet Status, status of the currently loaded pallet">
        <CondWord Logical="and" Name="M" Range="49"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MISCELLANEOUS: Turn Off Output Relay, Discrete output relay number from 0 to 255.">
        <CondWord Logical="and" Name="M" Range="69"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MISCELLANEOUS: Auto Air Gun On, turns the AAG on for the specified time">
        <CondWord Logical="and" Name="M" Range="83"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Local Subprogram Call, Program line number to go to when conditional test is met">
        <CondWord Logical="and" Name="M" Range="97"/>
        <Macro Name="SubStartingSeq" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Subprogram Call, The subprogram number to run">
        <CondWord Logical="and" Name="M" Range="98"/>
        <Macro Name="SubroutineName" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Subprogram Return or Loop, Program line number to go to when conditional test is met">
        <CondWord Logical="and" Name="M" Range="99"/>
        <Variable Name="100016" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: The dwell time at the bottom of the hole">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <Macro Name="CycleDwellTime" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="3.4" MetricType="trailing" MetricFormat="4.3"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="PCLOS" Type="word" Description="MISCELLANEOUS: Terminates communication with external devices" Field="0">
      <ConditionMacro Description="">
        <Macro Name="FanucPclose" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="POPEN" Type="word" Description="MISCELLANEOUS: Opens communication with external devices" Field="0">
      <ConditionMacro Description="">
        <Macro Name="FanucPopen" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="DPRNT_report.txt"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="Q" Type="word" Description="DRILL CYCLES: Peck depth" Field="0">
      <ConditionMacro Description="POCKET CYCLES: Circular Pocket Milling,Radius increment, or stepover (must be used with K)">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <Macro Name="CycleMillPocketStepover" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Fine Boring Canned Cycle, The shift value, always incremental">
        <CondWord Logical="and" Name="G" Range="76"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Back Bore Canned Cycle, The shift value, always incremental">
        <CondWord Logical="and" Name="G" Range="77"/>
        <Macro Name="CycleBoreShiftValue" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="ABS($)"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CYLINDRICAL / POLAR: Cylindrical mapping, Diameter of the cylindrical surface">
        <CondWord Logical="and" Name="G" Range="107"/>
        <Variable Name="107118" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="$ / 2"  Units="0"/>
          <OverrideWordFormat  InchType="trailing"  InchFormat="5.4" MetricType="trailing" MetricFormat="5.3"/>
        </Variable>
        <Macro Name="CylindricalDiameter" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="5.4" MetricType="trailing" MetricFormat="5.3"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling cycle, Incremental Z-Axis cut depth per pass (positive value)">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketMaxCutDepth" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: 5-Axis High Speed Peck Drilling Canned Cycle, Peck depth, always incremental">
        <CondWord Logical="and" Name="G" Range="153 163"/>
        <Macro Name="CycleStepValue" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MISCELLANEOUS: Pallet Status, sets at status of the pallet specified">
        <CondWord Logical="and" Name="M" Range="49"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Peck depth, always incremental">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <Macro Name="CycleStepValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="Unsupported" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name=",R" Type="word" Description="CHAMFER / ROUND: Corner radius (non-modal)" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CornerMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
        <Macro Name="CornerValue" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="CornerMode" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="R" Type="word" Description="CIRCLES: Radius of circle" Field="0">
      <ConditionMacro Description="SUBROUTINES: Engraving, Return plane">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATE 2D: Rotation, Angle of rotation, in degrees. Three-place decimal, -360.000 to 360.000">
        <CondWord Logical="and" Name="G" Range="68"/>
        <Macro Name="RotationAngle" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CYLINDRICAL / POLAR: Cylindrical Mapping, Radius of the rotary axis">
        <CondWord Logical="and" Name="G" Range="107"/>
        <Variable Name="107118" Scan="no" AfterMotion="no">
          <OverrideWordFormat  InchType="trailing"  InchFormat="5.4" MetricType="trailing" MetricFormat="5.3"/>
        </Variable>
        <Macro Name="CylindricalDiameter" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="$ * 2"  Units="0"/>
          <OverrideWordFormat  InchType="trailing"  InchFormat="5.4" MetricType="trailing" MetricFormat="5.3"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling cycle, Position of the rapid R-plane location">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketRetractPlane" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: 5-Axis Spot Drill Canned Cycle, (Not used)">
        <CondWord Logical="and" Name="G" Range="161-184"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Spindle Orientation, Number of degrees with two decimal places (0.00 - 360.00)">
        <CondWord Logical="and" Name="M" Range="19"/>
        <Macro Name="C2AxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Absolute, Position of the R plane (position above the part)">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <CondState Logical="and" Name="ABS_INC" Value="ABSOLUTE"/>
        <Macro Name="SetCycleRapidLevel" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="0"/>
        </Macro>
        <Variable Name="CGT_G150_LASTR" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Incremental, Position of the R plane (position above the part)">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="SetCycleRapidLevel" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="1"/>
        </Macro>
        <Variable Name="CGT_G150_LASTR" Scan="no" AfterMotion="no">
        </Variable>
      </ConditionMacro>
      <ConditionMacro Description="CIRCLES: Circular/helical interpolation CW, Radius of circle">
        <CondState Logical="and" Name="MOTION_TYPE" Value="CW"/>
        <Macro Name="CircleRadius" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CIRCLES: Circular/helical interpolation CCW, Radius of circle">
        <CondState Logical="and" Name="MOTION_TYPE" Value="CCW"/>
        <Macro Name="CircleRadius" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="Unsupported" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="S" Type="word" Description="FEEDS &amp; SPEEDS: Spindle speed" Field="0">
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling cycle, Spindle speed">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketSpeed" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Variable Name="4119" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="ActiveSpindleSpeed" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="T" Type="word" Description="TOOLING: Select tool" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4120" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="ToolCode" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="U" Type="word" Description="MOTION: U" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, U-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordUValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, U-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordUValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="UAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="UAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, U-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordUValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="UAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="V" Type="word" Description="MOTION: V" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, V-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordVValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, V-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordVValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="VAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="VAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, V-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordVValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="VAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="W" Type="word" Description="MOTION: W" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, W-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordWValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, W-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordWValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="WAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="WAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, W-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordWValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="WAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="X" Type="word" Description="MOTION: X" Field="0">
      <ConditionMacro Description="DWELL: The dwell time in seconds or milliseconds">
        <CondWord Logical="and" Name="G" Range="4"/>
        <Macro Name="DwellTime" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, X-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordXValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: Circle Pocket Milling, Pocket Center X">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <Macro Name="CycleMillPocketCenterX" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Engraving, X start of engraving">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATION PLANE: Scaling, Center of scaling for the X Axis">
        <CondWord Logical="and" Name="G" Range="51"/>
        <Macro Name="RotationPlaneXPoint" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, X-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordXValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="XAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="XAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATE 2D: Rotation, Angle of rotation, Center of rotation coordinates on the selected plane ">
        <CondWord Logical="and" Name="G" Range="68"/>
        <Macro Name="RotateXValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, X-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordXValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Mirroring, Disable mirror image, X-Axis command">
        <CondWord Logical="and" Name="G" Range="100"/>
        <Macro Name="MirrorXCancel" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Mirroring, Enable mirror image, X-Axis command">
        <CondWord Logical="and" Name="G" Range="101"/>
        <Macro Name="MirrorXValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Programmable output to RS-232, Optional X-axis command">
        <CondWord Logical="and" Name="G" Range="102"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CYLINDRICAL / POLAR: Cylindrical mapping, X-Axis command">
        <CondWord Logical="and" Name="G" Range="107"/>
        <Macro Name="CylindricalLinearAxis" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling cycle, X start position">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketCenterX" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="XAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: X, #4009=174,184">
        <CondVariable Logical="and" Name="4009" Range="174 184"/>
        <Macro Name="XAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Absolute, YZ, Cycle depth">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <CondState Logical="and" Name="ABS_INC" Value="ABSOLUTE"/>
        <CondState Logical="and" Name="MOTION_PLANE" Value="YZ"/>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="0"/>
        </Macro>
        <Macro Name="SetMotionFlag" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Incremental, YZ, Cycle depth">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <CondState Logical="and" Name="MOTION_PLANE" Value="YZ"/>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="2"/>
        </Macro>
        <Macro Name="SetMotionFlag" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: B, CYLINDRICAL / POLAR, #107100=5">
        <CondState Logical="and" Name="INTERPOLATION" Value="CYLINDRICAL"/>
        <CondVariable Logical="and" Name="107100" Range="5"/>
        <Macro Name="BAxisMotion" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="$ * 57.29578 / #107118"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="XAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="Y" Type="word" Description="MOTION: Y" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Y-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordYValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: Circle Pocket Milling, Pocket Center Y">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <Macro Name="CycleMillPocketCenterY" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Engraving, Y start of engraving">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATION PLANE: Scaling, Center of scaling for the Y Axis">
        <CondWord Logical="and" Name="G" Range="51"/>
        <Macro Name="RotationPlaneYPoint" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, Y-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordYValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="YAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="YAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATE 2D: Rotation, Angle of rotation, Center of rotation coordinates on the selected plane ">
        <CondWord Logical="and" Name="G" Range="68"/>
        <Macro Name="RotateYValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, Y-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordYValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Mirroring, Disable mirror image, Y-Axis command">
        <CondWord Logical="and" Name="G" Range="100"/>
        <Macro Name="MirrorYCancel" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Mirroring, Enable mirror image, Y-Axis command">
        <CondWord Logical="and" Name="G" Range="101"/>
        <Macro Name="MirrorYValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Programmable output to RS-232, Optional Y-axis command">
        <CondWord Logical="and" Name="G" Range="102"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CYLINDRICAL / POLAR: Cylindrical mapping, Y-Axis command">
        <CondWord Logical="and" Name="G" Range="107"/>
        <Macro Name="CylindricalLinearAxis" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling cycle, Y start position">
        <CondWord Logical="and" Name="G" Range="150"/>
        <Macro Name="CycleMillPocketCenterY" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="YAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Y, #4009=174,184">
        <CondVariable Logical="and" Name="4009" Range="174 184"/>
        <Macro Name="YAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Absolute, ZX, Cycle depth">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <CondState Logical="and" Name="ABS_INC" Value="ABSOLUTE"/>
        <CondState Logical="and" Name="MOTION_PLANE" Value="ZX"/>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="0"/>
        </Macro>
        <Macro Name="SetMotionFlag" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Incremental, ZX, Cycle depth">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <CondState Logical="and" Name="MOTION_PLANE" Value="ZX"/>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="2"/>
        </Macro>
        <Macro Name="SetMotionFlag" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: A, CYLINDRICAL / POLAR, #107100=4">
        <CondState Logical="and" Name="INTERPOLATION" Value="CYLINDRICAL"/>
        <CondVariable Logical="and" Name="107100" Range="4"/>
        <Macro Name="AAxisMotion" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="$ * 57.29578 / #107118"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="YAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="Z" Type="word" Description="MOTION: Z" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Z-Axis zero location">
        <CondWord Logical="and" Name="G" Range="10"/>
        <Macro Name="WorkCoordZValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: Circle Pocket Milling, Incremental, Depth of cut or increment">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="CycleMillPocketDepth" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: Circle Pocket Milling, Absolute, Depth of cut or increment">
        <CondWord Logical="and" Name="G" Range="12 13"/>
        <CondState Logical="and" Name="ABS_INC" Value="ABSOLUTE"/>
        <Macro Name="CycleMillPocketAbsDepth" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="SUBROUTINES: Engraving, Depth of cut">
        <CondWord Logical="and" Name="G" Range="47"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATION PLANE: Scaling, Center of scaling for the Z Axis">
        <CondWord Logical="and" Name="G" Range="51"/>
        <Macro Name="RotationPlaneZPoint" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate System, Z-Axis zero location">
        <CondWord Logical="and" Name="G" Range="52"/>
        <Macro Name="WorkCoordZValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Incremental, Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="ZAxisIncreMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Non-Modal Machine Coordinate Selection">
        <CondWord Logical="and" Name="G" Range="53"/>
        <Macro Name="ZAxisMachineMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="ROTATE 2D: Rotation, Angle of rotation, Center of rotation coordinates on the selected plane ">
        <CondWord Logical="and" Name="G" Range="68"/>
        <Macro Name="RotateZValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value, Z-Axis zero location">
        <CondWord Logical="and" Name="G" Range="92"/>
        <Macro Name="WorkCoordZValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Mirroring, Disable mirror image, Z-Axis command">
        <CondWord Logical="and" Name="G" Range="100"/>
        <Macro Name="MirrorZCancel" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Mirroring, Enable mirror image, Z-Axis command">
        <CondWord Logical="and" Name="G" Range="101"/>
        <Macro Name="MirrorZValue" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Programmable output to RS-232, Optional Z-axis command">
        <CondWord Logical="and" Name="G" Range="102"/>
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="CYLINDRICAL / POLAR: Cylindrical mapping, Z-Axis command">
        <CondWord Logical="and" Name="G" Range="107"/>
        <Macro Name="CylindricalLinearAxis" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling cycle, Incremental, Final depth of pocket">
        <CondWord Logical="and" Name="G" Range="150"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <Macro Name="CycleMillPocketDepth" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="POCKET CYCLES: General Purpose Pocket Milling cycle, Absolute, Final depth of pocket">
        <CondWord Logical="and" Name="G" Range="150"/>
        <CondState Logical="and" Name="ABS_INC" Value="ABSOLUTE"/>
        <Macro Name="CycleMillPocketAbsDepth" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: Z, #4009=174,184">
        <CondVariable Logical="and" Name="4009" Range="174 184"/>
        <Macro Name="ZAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Absolute, XY, Cycle depth">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <CondState Logical="and" Name="ABS_INC" Value="ABSOLUTE"/>
        <CondState Logical="and" Name="MOTION_PLANE" Value="XY"/>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="0"/>
        </Macro>
        <Macro Name="SetMotionFlag" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="DRILL CYCLES: Incremental, XY, Cycle depth">
        <CondState Logical="and" Name="CYCLE" Value="ON"/>
        <CondState Logical="and" Name="ABS_INC" Value="INCREMENTAL"/>
        <CondState Logical="and" Name="MOTION_PLANE" Value="XY"/>
        <Macro Name="SetCycleDepth" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="2"/>
        </Macro>
        <Macro Name="SetMotionFlag" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="MOTION: C, CYLINDRICAL / POLAR, #107100=6">
        <CondState Logical="and" Name="INTERPOLATION" Value="CYLINDRICAL"/>
        <CondVariable Logical="and" Name="107100" Range="6"/>
        <Macro Name="CAxisMotion" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="$ * 57.29578 / #107118"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="ZAxisMotion" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
  </SuperGroup>
  <SuperGroup Name="M_Misc">
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Stop Program" Range="0" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CoolantOff" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="StopProgram" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Optional Program Stop" Range="1" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CoolantOff" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="StopOptional" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="SUBROUTINES: Program End" Range="2" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CoolantOff" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="EndProgramRewindSpecial" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="TOOLING: Tool Change" Range="6" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CoolantOff" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="ToolChangeMachineSubroutine" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="COOLANT: Coolant On" Range="7" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CoolantFlood" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="COOLANT: Coolant On" Range="8" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CoolantFlood" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="COOLANT: Coolant Off" Range="9" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CoolantOff" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Engage / Release 4th Axis Brake" Range="10 11" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Engage / Release 5th Axis Brake" Range="12 13" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="TOOLING: Tool Change" Range="16" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CoolantOff" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="ToolChangeMachineSubroutine" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: APC pallet Unclamp and APC door open" Range="17" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: APC pallet Clamp   and APC door close" Range="18" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MOTION: Orient Spindle" Range="19" Field="0">
      <ConditionMacro Description="FEEDS &amp; SPEEDS: Orient Spindle, Spindle off">
        <CondWord Logical="and" Name="P"/>
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="FEEDS &amp; SPEEDS: Orient Spindle, Spindle off">
        <CondWord Logical="and" Name="R"/>
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="C2AxisMachineMotion" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="ProcessMotion" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="SUBROUTINES: Program End and Reset" Range="30" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ActiveSpindleActiveTool" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ActiveSpindleOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="CoolantOff" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="EndProgramRewindSpecial" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Chip Conveyor Forward / Chip Conveyor Stop" Range="31-33" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Coolant Increment / Coolant Decrement" Range="34 35" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Pallet Part Ready/Rotate" Range="36" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Rotate Tool Turret" Range="39" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Low Gear Override / High Gear Override" Range="41 42" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Validate That The Current Program is Appropriate for Loaded Pallet" Range="48" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Set Status of Pallet" Range="49" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Pallet Change Sequence" Range="50" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Engage 5th axis brake, continue with program" Range="57" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Release 5th axis brake, continue with program" Range="67" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Turn Off Built-In M-code Relay, Clear Optional User M Codes" Range="61-68" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Turn Off Output Relay" Range="69" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Disable/Enable screen display" Range="76 77" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Alarm if Skip Signal Found/Not Found" Range="78 79" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Auto Door Open / Auto Door Close" Range="80 81" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="TOOLING: Tool Unclamp" Range="82" Field="0">
      <ConditionMacro Description="">
        <Macro Name="MessageMacro" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
          <Override  Type="text"  Value="TOOL RELEASED FROM THE SPINDLE"/>
        </Macro>
        <Macro Name="UnloadToolNoRetract" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Auto Air Gun On / Auto Air Gun Off" Range="83 84" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Tool Clamp" Range="86" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="COOLANT: Through-Spindle Coolant On" Range="88" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CoolantFlood" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="COOLANT: Through-Spindle Coolant Off" Range="89" Field="0">
      <ConditionMacro Description="">
        <Macro Name="CoolantOff" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Sleep Mode" Range="95" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="SUBROUTINES: Local Subprogram Call" Range="97" Field="0">
      <ConditionMacro Description="">
        <CondWord Logical="and" Name="P"/>
        <Macro Name="CallSubCurrent" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="SUBROUTINES: Subprogram Call" Range="98" Field="0">
      <ConditionMacro Description="">
        <CondWord Logical="and" Name="P"/>
        <Macro Name="CallSub" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="SUBROUTINES: Subprogram Return or Loop" Range="99" Field="0">
      <ConditionMacro Description="BRANCHING: Program line number to go to when conditional test is met">
        <CondWord Logical="and" Name="P"/>
        <Macro Name="ReturnFromSub" Scan="no" AfterMotion="yes">
        </Macro>
        <Macro Name="GotoJumpForwardBackwardStart" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#100016"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="">
        <Macro Name="ReturnFromSub" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: Probe Arm Extend/Retract (Optional)" Range="104 105" Field="0">
      <ConditionMacro Description="">
        <Macro Name="IgnoreMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="M" Type="word" Description="MISCELLANEOUS: VERICUT warning, specified M code is unsupported" Field="0">
      <ConditionMacro Description="">
        <Macro Name="Unsupported" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
  </SuperGroup>
  <SuperGroup Name="G_Prep">
    <Group Name="G" Type="word" Description="DWELL: Used with P word, The dwell time in seconds or milliseconds" Range="4" Field="0">
      <ConditionMacro Description="">
        <Macro Name="DwellMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="WORK OFFSETS: Set Offsets" Range="10" Field="0">
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Base Work Offset ">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondWord Logical="and" Name="P" Range="0"/>
        <CondVariable Logical="and" Name="4014" Range="54-59"/>
        <Macro Name="BaseWorkOffsetValues" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Base Work Offset 1 1 5200 20 "/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#4014"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Base Work Offset ">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondWord Logical="and" Name="P" Range="0"/>
        <CondVariable Logical="and" Name="4014" Range="110-129"/>
        <Macro Name="BaseWorkOffsetValues" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Base Work Offset 1 1 5200 20"/>
        </Macro>
        <Macro Name="WorkCoordIndex" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#4014 - 109"  Units="0"/>
        </Macro>
        <Macro Name="AdditionalWorkCoord" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Base Work Offset ">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondWord Logical="and" Name="P" Range="0"/>
        <CondVariable Logical="and" Name="4014" Range="154"/>
        <Macro Name="BaseWorkOffsetValues" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Base Work Offset 1 1 5200 20 "/>
        </Macro>
        <Macro Name="WorkCoordIndex" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#4130"  Units="0"/>
        </Macro>
        <Macro Name="AdditionalWorkCoord" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Base Work Offset ">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondWord Logical="and" Name="P" Range="0"/>
        <Macro Name="BaseWorkOffsetValues" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Base Work Offset 1 1 5200 20 "/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Work Offset 54">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondVariable Logical="and" Name="4014" Range="54"/>
        <Macro Name="SetWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 54 59 5220 20"/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="54"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Work Offset 55">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondVariable Logical="and" Name="4014" Range="55"/>
        <Macro Name="SetWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 54 59 5220 20 "/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="55"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Work Offset 56">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondVariable Logical="and" Name="4014" Range="56"/>
        <Macro Name="SetWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 54 59 5220 20 "/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="56"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Work Offset 57">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondVariable Logical="and" Name="4014" Range="57"/>
        <Macro Name="SetWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 54 59 5220 20"/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="57"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Work Offset 58">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondVariable Logical="and" Name="4014" Range="58"/>
        <Macro Name="SetWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 54 59 5220 20"/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="58"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Work Offset 59">
        <CondWord Logical="and" Name="L" Range="2"/>
        <CondVariable Logical="and" Name="4014" Range="59"/>
        <Macro Name="SetWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 54 59 5220 20 "/>
        </Macro>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="59"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Work Offset 54-59">
        <CondWord Logical="and" Name="L" Range="2"/>
        <Macro Name="SetWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 54 59 5220 20 "/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Tool OFFSETS: Set Offsets, Length offset amount (for H code)">
        <CondWord Logical="and" Name="L" Range="10"/>
        <Macro Name="SetTableValues" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Tool Length Compensation"/>
        </Macro>
        <Macro Name="AutosetToolLengthCompVars" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="2000"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="Tool OFFSETS: Set Offsets, Diameter offset amount (for D code)">
        <CondWord Logical="and" Name="L" Range="12"/>
        <Macro Name="SetTableValues" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Cutter Compensation"/>
        </Macro>
        <Macro Name="AutosetCutterCompVars" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="2400"  Units="0"/>
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Auxiliary work coordinate origin for G110-G129">
        <CondWord Logical="and" Name="L" Range="20"/>
        <CondVariable Logical="and" Name="4014" Range="110-129"/>
        <Macro Name="SetAdditionalWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 1 20 7000 20"/>
        </Macro>
        <Macro Name="WorkCoordIndex" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#4014 - 109"  Units="0"/>
        </Macro>
        <Macro Name="AdditionalWorkCoord" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Auxiliary work coordinate origin for G154">
        <CondWord Logical="and" Name="L" Range="20"/>
        <CondVariable Logical="and" Name="4014" Range="154"/>
        <Macro Name="SetAdditionalWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 1 20 7000 20"/>
        </Macro>
        <Macro Name="WorkCoordIndex" Scan="no" AfterMotion="yes">
          <Override  Type="expression"  Value="#4130"  Units="0"/>
        </Macro>
        <Macro Name="AdditionalWorkCoord" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
      <ConditionMacro Description="WORK OFFSETS: Set Offsets, Auxiliary work coordinate origin">
        <CondWord Logical="and" Name="L" Range="20"/>
        <Macro Name="SetAdditionalWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="yes">
          <Override  Type="text"  Value="Work Offsets 1 20 7000 20"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MOTION: Return to Machine Zero Point, returns all axes (X, Y, Z, A and B) simultaneously to the machine zero" Range="28" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4008" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="49"  Units="0"/>
        </Variable>
        <Macro Name="RotaryControlPointOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="ShortLongOffsetReset" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="ReferencePointIndex" Scan="no" AfterMotion="yes">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="ProcessMotion" Scan="no" AfterMotion="yes">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="CUTTER COMPENSATION: Cutter Comp Cancel / 3D Tool Compensation Cancel" Range="40" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4007" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CutterCompOff" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="Cancel3dToolOffset" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="CUTTER COMPENSATION: 2D Cutter Compensation Left" Range="41" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4007" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CutterCompLeft" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="CUTTER COMPENSATION: 2D Cutter Compensation Right" Range="42" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4007" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="CutterCompRight" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="WORK OFFSETS: Set Work Coordinate System" Range="52" Field="0">
      <ConditionMacro Description="">
        <Macro Name="AbsoluteShiftNum" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="WORK OFFSETS: Select Work Coordinate System #1 - #6 (54-59)" Range="54-59" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4014" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="WorkCoord" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="ERROR"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="ROTATE 2D: Rotation, Coordinate system rotation (also with R/X/Y/Z)" Range="68" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4016" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="RotateMacro" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="ROTATE 2D: Rotation, Coordinate system rotation cancel" Range="69" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4016" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="RotateCancel" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="WORK OFFSETS: Set Work Coordinate Systems Shift Value (with A/B/C/U/V/W/X/Y/Z)" Range="92" Field="0">
      <ConditionMacro Description="">
        <Macro Name="ChangeWorkCoord" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="WORK OFFSETS: Select Work Coordinate System #7 - #26 " Range="110-129" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4014" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="WorkCoordIndex" Scan="no" AfterMotion="no">
          <Override  Type="expression"  Value="$-109"  Units="0"/>
        </Macro>
        <Macro Name="AdditionalWorkCoord" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="ERROR"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="WORK OFFSETS: Select Work Coordinates P1-P99" Range="154" Field="0">
      <ConditionMacro Description="">
        <Variable Name="4014" Scan="no" AfterMotion="no">
        </Variable>
        <Macro Name="AdditionalWorkCoord" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="ERROR"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="G" Type="word" Description="MISCELLANEOUS: VERICUT warning, specified G code is unsupported" Field="0">
      <ConditionMacro Description="">
        <Macro Name="Unsupported" Scan="no" AfterMotion="no">
        </Macro>
      </ConditionMacro>
    </Group>
  </SuperGroup>
  <SuperGroup Name="CGTech">
    <Group Name="BLANK" Type="word" Description="MISCELLANEOUS: Disable Component " Field="0">
      <ConditionMacro Description="">
        <Macro Name="SetComponentDisableEnable" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
    <Group Name="UNBLANK" Type="word" Description="MISCELLANEOUS: Enable Component " Field="0">
      <ConditionMacro Description="">
        <Macro Name="SetComponentDisableEnable" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </ConditionMacro>
    </Group>
  </SuperGroup>
  <Events>
    <Event Type="conversion_init">
      <EventSub Name="">
        <Macro Name="AccelDecelLogic" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
        <Macro Name="CycleMotionPlaneCheckOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="CycleDrillingAxisLogic" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="ConversionInit" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="AutosetCutterCompVars" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="2400"  Units="0"/>
        </Macro>
        <Macro Name="AutosetToolLengthCompVars" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="2000"  Units="0"/>
        </Macro>
        <Macro Name="BlockSkipAnywhere" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="GetCurrentDate" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="3011"/>
        </Macro>
        <Macro Name="NCVarDefaultValue" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </EventSub>
      <EventSub Name="1">
        <Macro Name="AxisVarsMapping" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="1 2 3 4 5 6 7 8 9"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Base Work Offset 1 1 5200 20"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Work Offsets 54 59 5220 20"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Work Offsets 1 20 7000 20"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Work Offsets 110 129 7000 20"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Work Offsets 1 20 14000 20"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Work Offsets 100 129 14000 20"/>
        </Macro>
        <Macro Name="AutosetTableAxisVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="Work Offsets 21 99 14400 20"/>
        </Macro>
        <Macro Name="BiDirVarsModeOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
        <Macro Name="BiDirVarsApplyOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="BiDirVarsAbsIncr" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="DynamicWorkOffsetsMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="3"  Units="0"/>
        </Macro>
        <Macro Name="DynamicWorkOffsetsTypes" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
          <Override  Type="text"  Value="WORK"/>
        </Macro>
        <Macro Name="DynamicWorkOffsetsTypes" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="SECONDARY"/>
        </Macro>
        <Macro Name="DynamicWorkOffsetsTypes" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="SHIFT"/>
        </Macro>
        <Macro Name="GageOffsetAttributes" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="10000010000"/>
        </Macro>
        <Macro Name="GetCommentString" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CommentString"/>
        </Macro>
        <Macro Name="IfCheckAllMacros" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="RapidInterpolationWarningOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="RotationPlaneSpecialOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="RpcpMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="RtcpMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="ReportExpressionErrorsOnOff" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="SetCyclePartSurface" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="-0.1"  Units="0"/>
          <Override  Type="text"  Value="2"/>
        </Macro>
        <Macro Name="SetCycleRetractLevel" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
          <Override  Type="text"  Value="2"/>
        </Macro>
        <Macro Name="SetCycleSquareOffType" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="SetCycleTapFeedMode" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="2"  Units="0"/>
        </Macro>
        <Macro Name="SetDynamicVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="AxisLocalPlus 0000000 5000"/>
        </Macro>
        <Macro Name="SetDynamicVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="AxisMachineMinus 0000000 5020"/>
        </Macro>
        <Macro Name="SetDynamicVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="AxisLocalPlus 1000000 5040"/>
        </Macro>
        <Macro Name="SetDynamicVars" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="CurGageOffset 5081 5082 5083"/>
        </Macro>
        <Macro Name="StringMatchCase" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffGagePivotOffset" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="TurnOnOffRealTimeClock" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="1"  Units="0"/>
        </Macro>
      </EventSub>
    </Event>
    <Event Type="conversion_finish">
      <EventSub Name="">
        <Macro Name="ConversionFinish" Scan="no" AfterMotion="no">
        </Macro>
      </EventSub>
    </Event>
    <Event Type="block_init">
      <EventSub Name="">
        <Macro Name="BlockInit" Scan="no" AfterMotion="no">
        </Macro>
      </EventSub>
    </Event>
    <Event Type="block_finish">
      <EventSub Name="">
        <Macro Name="BlockFinish" Scan="no" AfterMotion="no">
        </Macro>
        <Macro Name="UpdateVariableBlockProcessing" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="3001;#3001 + (#CGT_REAL_TIME * 1000);Milliseconds"/>
        </Macro>
        <Macro Name="UpdateVariableBlockProcessing" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="3002;#3002 + (#CGT_REAL_TIME / 3600);Hours"/>
        </Macro>
      </EventSub>
    </Event>
    <Event Type="start_init">
      <EventSub Name="">
        <Macro Name="BlockSkipAnywhere" Scan="no" AfterMotion="no">
          <Override  Type="value"  Value="0"  Units="0"/>
        </Macro>
        <Macro Name="GlobalVariables" Scan="no" AfterMotion="no">
          <Override  Type="text"  Value="120001-"/>
        </Macro>
      </EventSub>
    </Event>
  </Events>
  <Variables>
    <Variable Name="PROBE_TOUCHED" Type="value" System="" Description="" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>0</Value>
    </Variable>
    <Variable Name="3026" Type="value" System="1" Description="T code - Tool number in spindle" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>-1</Value>
    </Variable>
    <Variable Name="4001" Type="value" System="1" Description="G code - Motion" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>0</Value>
    </Variable>
    <Variable Name="4002" Type="value" System="1" Description="G code - Motion plane" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>17</Value>
    </Variable>
    <Variable Name="4003" Type="value" System="1" Description="G code - Command" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>90</Value>
    </Variable>
    <Variable Name="4005" Type="value" System="1" Description="G code - Feed" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>94</Value>
    </Variable>
    <Variable Name="4006" Type="value" System="1" Description="G code - Input units" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>20</Value>
    </Variable>
    <Variable Name="4007" Type="value" System="1" Description="G code - Cutter compensation" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>40</Value>
    </Variable>
    <Variable Name="4008" Type="value" System="1" Description="G code - Tool length compensation" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>49</Value>
    </Variable>
    <Variable Name="4009" Type="value" System="1" Description="G code - Cycle" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>80</Value>
    </Variable>
    <Variable Name="4010" Type="value" System="1" Description="G code - Cycle return" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>99</Value>
    </Variable>
    <Variable Name="4011" Type="value" System="1" Description="G code - Scaling" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>50</Value>
    </Variable>
    <Variable Name="4014" Type="value" System="1" Description="G code - Work offset" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>54</Value>
    </Variable>
    <Variable Name="4016" Type="value" System="1" Description="G code - Coordinate system rotation" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>69</Value>
    </Variable>
    <Variable Name="4022" Type="value" System="1" Description="G code - Mirror" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>100</Value>
    </Variable>
    <Variable Name="CGT_G150_LASTR" Type="value" System="1" Description="" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>0</Value>
    </Variable>
    <Variable Name="CGT_G47" Type="value" System="1" Description="" Expand="off">
      <NumberType>real</NumberType>
      <Vacancy Current="false" Initial="false" />
      <Value>0</Value>
    </Variable>
  </Variables>
  <MacroModals>
    <MacroModal Name="mmCONTROLLER_TYPE"  Value="mmCTL_GENERIC"/>
    <MacroModal Name="mmTOLERANCE_VALUE"  Value="0.001"/>
    <MacroModal Name="mmORDER_OF_MATH_OPERATIONS"  Value="mmRULES_OF_PRECEDENCE"/>
    <MacroModal Name="mmDEFAULT_WORD"  Value=""/>
    <MacroModal Name="mmMAX_WIRE_ANGLE"  Value="30"/>
    <MacroModal Name="mmDEFAULT_VOLTAGE"  Value="mmON_TEXT"/>
    <MacroModal Name="mmUV_INCREMENTAL_XY"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmXY_DRIVES_UV"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmDEFAULT_TOOL_COMP_ID"  Value="1"/>
    <MacroModal Name="mmTOOL_NUMBER_METHOD"  Value="mmTOOL_SELECT_ONLY"/>
    <MacroModal Name="mmTOOL_CHANGE_RETRACT_METHOD"  Value="mmTOOL_RETRACT_Z"/>
    <MacroModal Name="mmTOOL_CHANGE_CAUSE_CANCEL"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmTOOL_CHANGE_CAUSE_RAPID"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmDEFAULT_WORK_OFFSET"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmDEFAULT_WORK_INDEX"  Value="54"/>
    <MacroModal Name="mmDEFAULT_MOTION_TYPE"  Value="mmRAPID"/>
    <MacroModal Name="mmDEFAULT_MOTION_PLANE"  Value="mmMOTION_PLANE_XY"/>
    <MacroModal Name="mmDEFAULT_UNITS"  Value="mmUNITS_PROJECT"/>
    <MacroModal Name="mmDEFAULT_ABSINCR"  Value="mmABSOLUTE_MODE"/>
    <MacroModal Name="mmDEFAULT_FEEDMODE"  Value="mmUNITS_PER_MINUTE"/>
    <MacroModal Name="mmDEFAULT_FEEDRATE"  Value="1"/>
    <MacroModal Name="mmOUTPUT_INIT_SPINDLE_LOC"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmRAPID_MOTION_CAUSE_CANCEL"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmLINEAR_MOTION_CAUSE_CANCEL"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmCW_MOTION_CAUSE_CANCEL"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmCCW_MOTION_CAUSE_CANCEL"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmRAPID_FEEDRATE_MOTION"  Value="mmRAPID_TEXT"/>
    <MacroModal Name="mmMAX_CUT_FEED_RATE"  Value="100"/>
    <MacroModal Name="mmOUTPUT_PRECISION"  Value="mmFULL_PRECISION"/>
    <MacroModal Name="mmSPECIFIED_OUTPUT_PRECISION"  Value="3"/>
    <MacroModal Name="mmCIRCLE_CENTER_MODE"  Value="mmINCREMENTAL_MODE"/>
    <MacroModal Name="mmCIRCLE_INC_IJK_METHOD"  Value="mmINC_IJK_FROM_START"/>
    <MacroModal Name="mmPITCH_SPECIFIED_WITH_IJK"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmAPT_CIRCLE_OUTPUT"  Value="mmAPT_CIRCLE"/>
    <MacroModal Name="mmCYCLE_RETRACT_LEVEL"  Value="mmRETRACT_R_POINT_TEXT"/>
    <MacroModal Name="mmCYCLE_CLEARANCE_DISTANCE"  Value="0.1"/>
    <MacroModal Name="mmCYCLE_RAPID_METHOD"  Value="mmCLEARANCE_PLANE"/>
    <MacroModal Name="mmCYCLE_DEPTH_VALUE"  Value="mmG_CODE_DEPENDENT"/>
    <MacroModal Name="mmCYCLE_INCREMENTAL_DEPTH_VALUE"  Value="mmRELATIVE_TO_CYCLE_RAPID_VALUE"/>
    <MacroModal Name="mmCYCLE_RAPID_VALUE"  Value="mmG_CODE_DEPENDENT"/>
    <MacroModal Name="mmCYCLE_INCREMENTAL_RAPID_VALUE"  Value="mmRELATIVE_TO_CYCLE_INITIAL_LEVEL"/>
    <MacroModal Name="mmCYCLE_CANCEL_CAUSE_RAPID"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmCYCLE_IGNORE_ROTARY"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmCYCLE_EXECUTE"  Value="mmON_MOTION"/>
    <MacroModal Name="mmA_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmB_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmC_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmA2_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmB2_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmC2_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmA3_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmB3_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmC3_AXIS_ROTARY_TYPE"  Value="mmLINEAR"/>
    <MacroModal Name="mmABSOLUTE_ROTARY_DIRECTION"  Value="mmPOS_CCW"/>
    <MacroModal Name="mmRTCP"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmRTCP_CONTOUR"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmRTCP_WITH_MOTION"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmRTCP_USES"  Value="mmGAGE_PIVOT_OFFSET"/>
    <MacroModal Name="mmCDC_ONOFF_METHOD"  Value="mmRAMP_ONOFF_METHOD"/>
    <MacroModal Name="mmCDC_ONOFF_MOTION"  Value="mmCUTTER_PLANE_MOTION_TEXT"/>
    <MacroModal Name="mmTYPE_OF_SUB_NAMES"  Value="mmNUMERIC_NAMES"/>
    <MacroModal Name="mmAUTO_SEQUENCE_NUMBERING"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmADD_SEQUENCE_NUMBER"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmSEQUENCE_INCREMENT_VALUE"  Value="10"/>
    <MacroModal Name="mmWORD_VALUE_SPACING"  Value="mmNO_TEXT"/>
    <MacroModal Name="mmADD_DATETIME_STAMP"  Value="mmYES_TEXT"/>
    <MacroModal Name="mmADD_DATETIME_STAMP_LINE"  Value="1"/>
    <MacroModal Name="mmOUTPUT_FORMAT"  Value="mmWORD_FORMAT"/>
    <MacroModal Name="mmVNC_TIME_SLICE_VALUE"  Value="100"/>
    <MacroModal Name="mmVNC_OFFSET_X"  Value="0"/>
    <MacroModal Name="mmVNC_OFFSET_Y"  Value="0"/>
    <MacroModal Name="mmVNC_OFFSET_Z"  Value="0"/>
  </MacroModals>
  <SyntaxCheck>
    <VC>11111111111111111</VC>
  </SyntaxCheck>
</VcControl>
