Option Explicit
Dim AllProcess
Dim Process
Dim strFoundProcess
strFoundProcess = False
Set AllProcess = getobject("winmgmts:") 'create object

For Each Process In AllProcess.InstancesOf("Win32_process") 'Get all the processes running in your PC
If (Instr (Ucase(Process.Name),"CNEXT.EXE") = 1) Then
msgbox "Application is already running!"

strFoundProcess = True
WScript.Quit
Exit for

End If


Next

If strFoundProcess = False Then

msgbox "Go ahead!Application is not running"

End If

Set AllProcess = nothing

Dim objShell

Set objShell = CreateObject("WScript.Shell")

 

objShell.Run "CNEXT"
Wscript.Sleep 50000   'depend on how "strong" is your workstation - give time to open CATIA
objShell.SendKeys "^n" 'open new dialog box=CTRL+N
WScript.Sleep 1500
WScript.Quit
 
