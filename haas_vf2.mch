<?xml version="1.0"?>
<VcMachine Version="9.7" Machine="haas_vf2" Unit="millimeter">
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
  <PriorityType>single</PriorityType>
  <Subroutines>
    <File>haas_vf2_toolchange.sub</File>
  </Subroutines>
  <Table Name="Machine Reference Location">
    <Row Index="1" SubIndex="1" Auto="manual">
      <System>1</System>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
    </Row>
    <Row Index="1" SubIndex="1" Auto="manual">
      <System>TC</System>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
      <Value>0</Value>
    </Row>
  </Table>
  <Collision>
    <Between Sub1="off" SubCompStop1="" Sub2="on" SubCompStop2="" Tol="10">
      <Component>Z</Component>
      <Component>Y</Component>
    </Between>
    <Between Sub1="off" SubCompStop1="" Sub2="off" SubCompStop2="" Tol="10">
      <Component>Tool</Component>
      <Component>X</Component>
    </Between>
    <Between Sub1="off" SubCompStop1="" Sub2="off" SubCompStop2="" Tol="10">
      <Component>TR160_Base</Component>
      <Component>Tool</Component>
    </Between>
    <Between Sub1="off" SubCompStop1="" Sub2="on" SubCompStop2="" Tol="10">
      <Component>TR160_Base</Component>
      <Component>changer_arm</Component>
    </Between>
    <Between Sub1="off" SubCompStop1="" Sub2="off" SubCompStop2="" Tol="10">
      <Component>A_Axis</Component>
      <Component>Tool</Component>
    </Between>
    <Between Sub1="off" SubCompStop1="" Sub2="on" SubCompStop2="" Tol="10">
      <Component>A_Axis</Component>
      <Component>changer_arm</Component>
    </Between>
    <Between Sub1="off" SubCompStop1="" Sub2="on" SubCompStop2="" Tol="10">
      <Component>B_Axis</Component>
      <Component>changer_arm</Component>
    </Between>
  </Collision>
  <Component Name="Base"
   Subsystem="1"
   Type="base" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x009370DB">
    <Attach></Attach>
    <Position X="0" Y="0" Z="0"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x009370DB" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x00FFFFFF">
      <File>haas_vf2_y_cover.swp</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="6.12323399574e-17" Z="1"/>
        <MatrixZAxis X="0" Y="-1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-417.0779" Y="704.5913" Z="-364"/>
      </ModelMatrix>
    </SWEEP>
  </Component>
  <Component Name="Y"
   Subsystem="1"
   Type="linear" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00C8C8C8">
    <Attach>Base</Attach>
    <Position X="75.000000012" Y="-29.999999995" Z="0"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00C8C8C8" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="Y" PartSide="auto" Register="Y"
     RapidRate="25400" Accel="127" Decel="127" MaxLinearVelocity="25400" MaxCornerVelocity="635">
      <AxisPriority PriorityGroup="0" PriorityPos="1" InterpolatedPos="off" PriorityNeg="1" InterpolatedNeg="off"/>
      <TlRecord TlGroup="0" TlComp="Y" TlMin="-410.2" TlMax="0" TlMinWarn="0" TlMaxWarn="0" TlCompCond="" TlMinCond="0" TlMaxCond="0" TlIgnore="off"/>
    </Link>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x80000000">
      <File>haas_vf2_x_cover.swp</File>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="6.12323399574e-17" Z="1"/>
        <MatrixZAxis X="0" Y="-1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-74.5115" Y="-191.9042" Z="-83.999996789"/>
      </ModelMatrix>
    </SWEEP>
    <Block Length="400" Width="400" Height="215" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-274.5174" Y="-391.6371" Z="-279"/>
      </ModelMatrix>
    </Block>
    <Block Length="900" Width="390" Height="210" Visible="on" Enabled="on" XRGB="0x00969696">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00969696" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-524.5159" Y="-386.7113" Z="-279"/>
      </ModelMatrix>
    </Block>
    <Block Length="1400" Width="380" Height="205" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-774.5145" Y="-381.7855" Z="-279"/>
      </ModelMatrix>
    </Block>
    <Block Length="1800" Width="370" Height="200" Visible="on" Enabled="on" XRGB="0x00969696">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00969696" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-974.513" Y="-376.8448" Z="-279"/>
      </ModelMatrix>
    </Block>
  </Component>
  <Component Name="X"
   Subsystem="1"
   Type="linear" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x004B4B4B">
    <Attach>Y</Attach>
    <Position X="0" Y="0" Z="0"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x004B4B4B" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="X" PartSide="auto" Register="X"
     RapidRate="25400" Accel="127" Decel="127" MaxLinearVelocity="25400" MaxCornerVelocity="635">
      <AxisPriority PriorityGroup="0" PriorityPos="1" InterpolatedPos="off" PriorityNeg="1" InterpolatedNeg="off"/>
      <TlRecord TlGroup="0" TlComp="X" TlMin="-762.8" TlMax="0" TlMinWarn="0" TlMaxWarn="0" TlCompCond="" TlMinCond="0" TlMaxCond="0" TlIgnore="off"/>
    </Link>
    <Block Length="915" Width="355" Height="80" Visible="on" Enabled="on" XRGB="0x00969696">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00969696" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-914.5067" Y="-355.3286" Z="-120"/>
      </ModelMatrix>
    </Block>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x80000000">
      <File>haas_vf2_tray.swp</File>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="-59.999996789"/>
      </ModelMatrix>
    </SWEEP>
    <Block Length="1151.8559" Width="4" Height="36" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-1033.2848" Y="-524.536" Z="-56"/>
      </ModelMatrix>
    </Block>
    <Block Length="100" Width="4" Height="36" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="126.8951" Y="-353.6672" Z="-56"/>
      </ModelMatrix>
    </Block>
    <Block Length="4" Width="367" Height="36" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="123" Y="-353.6376" Z="-56"/>
      </ModelMatrix>
    </Block>
    <Block Length="100" Width="4" Height="36" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-1141.3972" Y="-353.2909" Z="-56"/>
      </ModelMatrix>
    </Block>
    <Block Length="4" Width="367" Height="36" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-1041.3972" Y="-353.6376" Z="-56"/>
      </ModelMatrix>
    </Block>
    <Block Length="1168" Width="4" Height="36" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-1041.3972" Y="9.3624" Z="-56"/>
      </ModelMatrix>
    </Block>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x00969696">
      <File>haas_vf2_z_table.swp</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00969696" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="-1" Z="0"/>
        <MatrixYAxis X="6.12323399574e-17" Y="3.74939945665e-33" Z="1"/>
        <MatrixZAxis X="-1" Y="-6.12323399574e-17" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-457.0067" Y="-177.8286" Z="0"/>
      </ModelMatrix>
    </SWEEP>
  </Component>
  <Component Name="TR160_Base"
   Subsystem="1"
   Type="other" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00FFFFFF">
    <Attach>X</Attach>
    <Position X="-393.5067" Y="-177.8286" Z="0"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x80000000">
      <File>haas_vf2_tr160_base.swp</File>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="6.12323399574e-17" Z="1"/>
        <MatrixZAxis X="0" Y="-1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="0" Y="0" Z="0"/>
      </ModelMatrix>
    </SWEEP>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x80000000">
      <File>haas_vf2_tr160_base2.swp</File>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="-1" Z="0"/>
        <MatrixYAxis X="6.12323399574e-17" Y="3.74939945665e-33" Z="1"/>
        <MatrixZAxis X="-1" Y="-6.12323399574e-17" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-369" Y="213.5" Z="2"/>
      </ModelMatrix>
    </SWEEP>
    <Block Length="235" Width="60" Height="200" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="290" Y="-148.5" Z="110"/>
      </ModelMatrix>
    </Block>
    <Block Length="260" Width="15" Height="220" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="280" Y="-98.5" Z="100"/>
      </ModelMatrix>
    </Block>
    <Block Length="150" Width="50" Height="250" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="394" Y="86.5" Z="90"/>
      </ModelMatrix>
    </Block>
    <Block Length="140" Width="35" Height="90" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="399" Y="136.5" Z="200"/>
      </ModelMatrix>
    </Block>
    <Block Length="179" Width="240" Height="10" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-459" Y="-88.5" Z="330"/>
      </ModelMatrix>
    </Block>
  </Component>
  <Component Name="A_Axis"
   Subsystem="1"
   Type="rotary" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00FFFFFF" RotarySpin="off">
    <Attach>TR160_Base</Attach>
    <Position X="0" Y="0" Z="241.3"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="-X" PartSide="auto" Register="A"
     RapidRate="200" Accel="5" Decel="5" MaxLinearVelocity="200" MaxCornerVelocity="25">
      <AxisPriority PriorityGroup="0" PriorityPos="1" InterpolatedPos="on" PriorityNeg="1" InterpolatedNeg="on"/>
      <TlRecord TlGroup="0" TlComp="A_Axis" TlMin="-122.9" TlMax="122.9" TlMinWarn="0" TlMaxWarn="0" TlCompCond="" TlMinCond="0" TlMaxCond="0" TlIgnore="off"/>
    </Link>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x0020B2AA">
      <File>haas_vf2_a_cradle.swp</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="6.12323399574e-17" Z="1"/>
        <MatrixZAxis X="0" Y="-1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="0" Y="0" Z="0"/>
      </ModelMatrix>
    </SWEEP>
    <Cylinder Radius="88.5" Height="40" Visible="on" Enabled="on" XRGB="0x0020B2AA">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="0" Z="-1"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="1" Y="0" Z="6.12323399574e-17"/>
        <MatrixOrigin X="237" Y="0" Z="0"/>
      </ModelMatrix>
    </Cylinder>
    <Cylinder Radius="88.5" Height="40" Visible="on" Enabled="on" XRGB="0x0020B2AA">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="0" Z="-1"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="1" Y="0" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-277" Y="0" Z="0"/>
      </ModelMatrix>
    </Cylinder>
    <Cylinder Radius="37.5" Height="15" Visible="on" Enabled="on" XRGB="0x0020B2AA">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="0" Z="-1"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="1" Y="0" Z="6.12323399574e-17"/>
        <MatrixOrigin X="227" Y="0" Z="0"/>
      </ModelMatrix>
    </Cylinder>
    <Cylinder Radius="37.5" Height="15" Visible="on" Enabled="on" XRGB="0x0020B2AA">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="0" Z="-1"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="1" Y="0" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-242" Y="0" Z="0"/>
      </ModelMatrix>
    </Cylinder>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x0020B2AA">
      <File>haas_vf2_a_cradle2.swp</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="-1" Z="0"/>
        <MatrixYAxis X="6.12323399574e-17" Y="3.74939945665e-33" Z="1"/>
        <MatrixZAxis X="-1" Y="-6.12323399574e-17" Z="6.12323399574e-17"/>
        <MatrixOrigin X="267" Y="-88.5" Z="-146.89799881"/>
      </ModelMatrix>
    </SWEEP>
    <Cylinder Radius="45" Height="21" Visible="on" Enabled="on" XRGB="0x0020B2AA">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="6.12323399574e-17" Z="1"/>
        <MatrixZAxis X="0" Y="-1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-64.999999442" Y="109.500000005" Z="-96.1479985"/>
      </ModelMatrix>
    </Cylinder>
    <Cone Base="35" Top="45" Height="10" Visible="on" Enabled="on" XRGB="0x0020B2AA">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="6.12323399574e-17" Z="1"/>
        <MatrixZAxis X="0" Y="-1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-64.999999442" Y="119.500000005" Z="-96.1479985"/>
      </ModelMatrix>
    </Cone>
  </Component>
  <Component Name="B_Axis"
   Subsystem="1"
   Type="rotary" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x009370DB" RotarySpin="off">
    <Attach>A_Axis</Attach>
    <Position X="0" Y="0" Z="-3.048"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x009370DB" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="Z" PartSide="auto" Register="B"
     RapidRate="200" Accel="5" Decel="5" MaxLinearVelocity="200" MaxCornerVelocity="25">
      <AxisPriority PriorityGroup="0" PriorityPos="1" InterpolatedPos="on" PriorityNeg="1" InterpolatedNeg="on"/>
      <TlRecord TlGroup="0" TlComp="B_Axis" TlMin="0" TlMax="0" TlMinWarn="0" TlMaxWarn="0" TlCompCond="" TlMinCond="0" TlMaxCond="0" TlIgnore="on"/>
    </Link>
    <SOR Unit="millimeter" Visible="on" Enabled="on" XRGB="0x00FFDEAD">
      <File>haas_vf2_b_axis.sor</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFDEAD" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="0"/>
      </ModelMatrix>
    </SOR>
    <Cylinder Radius="10" Height="20" Visible="on" Enabled="on" XRGB="0x00FF0000">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FF0000" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="6.12323399574e-17" Z="-1"/>
        <MatrixZAxis X="0" Y="1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="0" Y="-85.000000005" Z="-20.000000005"/>
      </ModelMatrix>
    </Cylinder>
  </Component>
  <Component Name="Attach"
   Subsystem="1"
   Type="attach" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00FF0000">
    <Attach>B_Axis</Attach>
    <Position X="0" Y="0" Z="0"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FF0000" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
  </Component>
  <Component Name="Z"
   Subsystem="1"
   Type="linear" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00FFFFFF">
    <Attach>Base</Attach>
    <Position X="0" Y="0" Z="609.6"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="Z" PartSide="auto" Register="Z"
     RapidRate="25400" Accel="127" Decel="127" MaxLinearVelocity="25400" MaxCornerVelocity="635">
      <AxisPriority PriorityGroup="0" PriorityPos="1" InterpolatedPos="off" PriorityNeg="1" InterpolatedNeg="off"/>
      <TlRecord TlGroup="0" TlComp="Z" TlMin="-503.3" TlMax="7.2" TlMinWarn="0" TlMaxWarn="0" TlCompCond="" TlMinCond="0" TlMaxCond="0" TlIgnore="off"/>
    </Link>
    <SWEEP Unit="inch" Visible="on" Enabled="on" XRGB="0x00FFFFFF">
      <File>haas_vf2_z1.swp</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="120.000000005"/>
      </ModelMatrix>
    </SWEEP>
    <Block Length="45.000012" Width="64.999997" Height="32.000012" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="40.999999991" Y="-32.499999999" Z="-21.999999993"/>
      </ModelMatrix>
    </Block>
    <Block Length="25.000001" Width="29.999991" Height="14.999995" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="86.000000009" Y="-17.500000001" Z="-6.999999995"/>
      </ModelMatrix>
    </Block>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x00000096">
      <File>haas_vf2_z_column.swp</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00000096" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="-1" Y="1.22464679915e-16" Z="0"/>
        <MatrixYAxis X="-1.22464679915e-16" Y="-1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="207.5" Y="510.4" Z="70"/>
      </ModelMatrix>
    </SWEEP>
    <SOR Unit="millimeter" Visible="on" Enabled="on" XRGB="0x00640096">
      <File>haas_vf2_spindle.sor</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00640096" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="0"/>
      </ModelMatrix>
    </SOR>
  </Component>
  <Component Name="Spindle"
   Subsystem="1"
   Type="spindle" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x009370DB">
    <Attach>Z</Attach>
    <Position X="0" Y="0" Z="0"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x009370DB" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="Z" PartSide="auto" Register="Spindle">
    </Link>
    <Cylinder Radius="36.000004" Height="2.499995" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="0"/>
      </ModelMatrix>
    </Cylinder>
    <Block Length="10.000005" Width="14.999995" Height="9.000007" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-35.000000002" Y="-7.500000011" Z="-9.000000009"/>
      </ModelMatrix>
    </Block>
    <Block Length="10.000005" Width="14.999995" Height="9.000007" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="25.000000013" Y="-7.500000011" Z="-9.000000009"/>
      </ModelMatrix>
    </Block>
  </Component>
  <Component Name="Tool"
   Subsystem="1"
   Type="tool" Visible="all" Enabled="on" Draw="translucent" XRGB="0x0020B2AA">
    <Attach>Spindle</Attach>
    <Position X="0" Y="0" Z="0"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x0020B2AA" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Tool TurretIndex="1"/>
    <Link Axis="Z" PartSide="auto" Register="">
    </Link>
  </Component>
  <Component Name="Tool Chain"
   Subsystem="1"
   Type="toolchain" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00FFFFFF">
    <Attach>Base</Attach>
    <Position X="-630" Y="137.087" Z="1019.6"/>
    <Rotation I="180" J="-90" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <ToolChain Count="24" StartNumber="1" Direction="CW" Collision="off" ToolLength="on" Display="off" ReplaceTool="on" Time="1" ExchangeTime="3.9" Spacing="78.54" Offset="0" MaxToolLength="279.4"/>
    <SWEEP Unit="millimeter" Visible="off" Enabled="off" XRGB="0x00FFDEAD">
      <File>haas_vf2_toolchain.swp</File>
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFDEAD" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="0"/>
      </ModelMatrix>
    </SWEEP>
  </Component>
  <Component Name="Tool_changer"
   Subsystem="TC"
   Type="linear" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x009370DB">
    <Attach>Base</Attach>
    <Position X="-259.999999989" Y="64.999999997" Z="609.6"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x009370DB" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="Z" PartSide="auto" Register="W"
     RapidRate="3870960" Accel="3225.8" Decel="3225.8" MaxLinearVelocity="129032" MaxCornerVelocity="16129">
      <AxisPriority PriorityGroup="0" PriorityPos="1" InterpolatedPos="on" PriorityNeg="1" InterpolatedNeg="on"/>
      <TlRecord TlGroup="0" TlComp="Tool_changer" TlMin="0" TlMax="0" TlMinWarn="0" TlMaxWarn="0" TlCompCond="" TlMinCond="0" TlMaxCond="0" TlIgnore="on"/>
    </Link>
  </Component>
  <Component Name="changer_arm"
   Subsystem="TC"
   Type="rotary" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00000000" RotarySpin="off">
    <Attach>Tool_changer</Attach>
    <Position X="4" Y="3.5" Z="-50"/>
    <Rotation I="0" J="0" K="10"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00000000" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="Z" PartSide="auto" Register="C"
     RapidRate="8000" Accel="125" Decel="125" MaxLinearVelocity="5000" MaxCornerVelocity="600">
      <AxisPriority PriorityGroup="0" PriorityPos="1" InterpolatedPos="on" PriorityNeg="1" InterpolatedNeg="on"/>
      <TlRecord TlGroup="0" TlComp="changer_arm" TlMin="0" TlMax="0" TlMinWarn="0" TlMaxWarn="0" TlCompCond="" TlMinCond="0" TlMaxCond="0" TlIgnore="on"/>
    </Link>
    <Cylinder Radius="29.999991" Height="200.000006" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="0"/>
      </ModelMatrix>
    </Cylinder>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x80000000">
      <File>haas_vf2_toolarm.swp</File>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="-1" Z="0"/>
        <MatrixYAxis X="1" Y="6.12323399574e-17" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="17.999999992"/>
      </ModelMatrix>
    </SWEEP>
    <SWEEP Unit="millimeter" Visible="on" Enabled="on" XRGB="0x80000000">
      <File>haas_vf2_toolarm.swp</File>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="1" Z="0"/>
        <MatrixYAxis X="-1" Y="6.12323399574e-17" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="17.999999992"/>
      </ModelMatrix>
    </SWEEP>
    <Cylinder Radius="10.000005" Height="20.000011" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="22.598305476" Y="-44.60175545" Z="0"/>
      </ModelMatrix>
    </Cylinder>
  </Component>
  <Component Name="Tool_select"
   Subsystem="1"
   Type="tool" Visible="all" Enabled="on" Draw="translucent" XRGB="0x009370DB">
    <Attach>changer_arm</Attach>
    <Position X="0" Y="265" Z="50"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x009370DB" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Tool TurretIndex="10000"/>
    <Link Axis="Z" PartSide="auto" Register="">
    </Link>
  </Component>
  <Component Name="Tool_return"
   Subsystem="1"
   Type="tool" Visible="all" Enabled="on" Draw="translucent" XRGB="0x009370DB">
    <Attach>changer_arm</Attach>
    <Position X="0" Y="-265" Z="50"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x009370DB" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Tool TurretIndex="10010"/>
    <Link Axis="Z" PartSide="auto" Register="">
    </Link>
  </Component>
  <Component Name="Tool_Store"
   Subsystem="1"
   Type="other" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00969696">
    <Attach>Base</Attach>
    <Position X="-666" Y="137.09" Z="1019.6"/>
    <Rotation I="180" J="-90" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00969696" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Cylinder Radius="347.499991" Height="284.999989" Visible="on" Enabled="on" XRGB="0x00FFFFFF">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="197.534000004"/>
      </ModelMatrix>
    </Cylinder>
    <Block Length="284.999989" Width="365.000007" Height="864.999997" Visible="on" Enabled="on" XRGB="0x00FFFFFF">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="0" Z="-1"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="1" Y="0" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-382" Y="-215" Z="482.534"/>
      </ModelMatrix>
    </Block>
    <Block Length="197.533989" Width="543.422307" Height="300" Visible="on" Enabled="on" XRGB="0x00FFFFFF">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="6.12323399574e-17" Y="0" Z="-1"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="1" Y="0" Z="6.12323399574e-17"/>
        <MatrixOrigin X="-382.000000007" Y="-393.422300012" Z="297.534011005"/>
      </ModelMatrix>
    </Block>
    <SOR Unit="millimeter" Visible="on" Enabled="on" XRGB="0x80000000">
      <File>haas_vf2_toolstore.sor</File>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="-1" Z="1.22464679915e-16"/>
        <MatrixZAxis X="0" Y="-1.22464679915e-16" Z="-1"/>
        <MatrixOrigin X="0" Y="0" Z="197.534000004"/>
      </ModelMatrix>
    </SOR>
    <Cone Base="270" Top="150" Height="20" Visible="on" Enabled="on" XRGB="0x00FFFFFF">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="2.534000004"/>
      </ModelMatrix>
    </Cone>
  </Component>
  <Component Name="Enclosures"
   Subsystem="1"
   Type="other" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00FFFFFF">
    <Attach>Base</Attach>
    <Position X="0" Y="0" Z="0"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Block Length="2240" Width="10" Height="1280" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-1120" Y="453.4223" Z="-339.999996789"/>
      </ModelMatrix>
    </Block>
    <Block Length="500" Width="27" Height="830" Visible="on" Enabled="on" XRGB="0x00FFFFFF">
      <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00FFFFFF" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-250" Y="426.4223" Z="-90"/>
      </ModelMatrix>
    </Block>
    <Block Length="1000" Width="770" Height="1800" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="-500" Y="463.4223" Z="-714"/>
      </ModelMatrix>
    </Block>
    <Block Length="1000" Width="350" Height="1050" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="-1" Y="1.22464679915e-16" Z="0"/>
        <MatrixYAxis X="-7.49879891331e-33" Y="-6.12323399574e-17" Z="-1"/>
        <MatrixZAxis X="-1.22464679915e-16" Y="-1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="500" Y="463.179603658" Z="-364"/>
      </ModelMatrix>
    </Block>
  </Component>
  <Component Name="Tool_Drop_B"
   Subsystem="TC"
   Type="rotary" Visible="machine" Enabled="on" Draw="shaded" XRGB="0x00464646" RotarySpin="off">
    <Attach>Base</Attach>
    <Position X="-511.97" Y="137.09" Z="720"/>
    <Rotation I="0" J="90" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00464646" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Link Axis="Y" PartSide="auto" Register="B2"
     RapidRate="5000" Accel="125" Decel="125" MaxLinearVelocity="5000" MaxCornerVelocity="600">
      <AxisPriority PriorityGroup="0" PriorityPos="1" InterpolatedPos="on" PriorityNeg="1" InterpolatedNeg="on"/>
      <TlRecord TlGroup="0" TlComp="Tool_Drop_B" TlMin="0" TlMax="0" TlMinWarn="0" TlMaxWarn="0" TlCompCond="" TlMinCond="0" TlMaxCond="0" TlIgnore="on"/>
    </Link>
    <Cylinder Radius="5" Height="100" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="6.12323399574e-17" Z="1"/>
        <MatrixZAxis X="0" Y="-1" Z="6.12323399574e-17"/>
        <MatrixOrigin X="0" Y="50" Z="0"/>
      </ModelMatrix>
    </Cylinder>
    <Cone Base="22.5" Top="12" Height="90" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="-70"/>
      </ModelMatrix>
    </Cone>
    <Cylinder Radius="25" Height="40" Visible="on" Enabled="on" XRGB="0x80000000">
      <EdgeAngle>30</EdgeAngle>
      <CollTriTessTol CollTriTessTolAuto="on" CollTriTessTolVal="1"/>
      <ModelMatrix>
        <MatrixXAxis X="1" Y="0" Z="0"/>
        <MatrixYAxis X="0" Y="1" Z="0"/>
        <MatrixZAxis X="0" Y="0" Z="1"/>
        <MatrixOrigin X="0" Y="0" Z="-110"/>
      </ModelMatrix>
    </Cylinder>
  </Component>
  <Component Name="Tool_Preselect"
   Subsystem="1"
   Type="tool" Visible="all" Enabled="on" Draw="translucent" XRGB="0x00464646">
    <Attach>Tool_Drop_B</Attach>
    <Position X="0" Y="0" Z="-110"/>
    <Rotation I="0" J="0" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x00464646" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Tool TurretIndex="1"/>
    <Link Axis="Z" PartSide="auto" Register="Tool">
    </Link>
  </Component>
  <Component Name="Tool_Collect"
   Subsystem="1"
   Type="tool" Visible="all" Enabled="on" Draw="translucent" XRGB="0x009370DB">
    <Attach>Base</Attach>
    <Position X="-650" Y="137.087" Z="719.6"/>
    <Rotation I="180" J="90" K="0"/>
    <Appearance Name="Steel" Ambient="0.3" Diffuse="0.8" Reflect="0.2" Specular="0.5" Shininess="64" Translucency="1" XRGB="0x009370DB" SurfaceTextureOn="off" SurfaceTextureID="0" SurfaceTextureScale="1" SurfaceTextureRot="0" SurfaceTextureColor="material"/>
    <Tool TurretIndex="1"/>
    <Link Axis="Z" PartSide="auto" Register="">
    </Link>
  </Component>
  <Preview Image="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"/>
</VcMachine>
