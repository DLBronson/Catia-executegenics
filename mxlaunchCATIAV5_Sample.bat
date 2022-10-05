@set CATIA_INSTALL_DIR=C:\Program Files\Dassault Systemes\B19
@set ENV_FILE_NAME=CATIA.V5R19.B19
@set ENV_FILE_LOCATION=C:\Documents and Settings\All Users\Application Data\DassaultSystemes\CATEnv

@REM Please donot edit below this line
@IF "%2"==""-action:connect"" (
	start "CATIA V5" "%CATIA_INSTALL_DIR%\win_b64\code\bin\CATSTART.exe" -run "CNEXT.exe -e  V6CATIAConnectHdr" -env "%ENV_FILE_NAME%" -direnv "%ENV_FILE_LOCATION%"
)
@IF "%2"==""-action:checkout"" (
	start "CATIA V5" "%CATIA_INSTALL_DIR%\win_b64\code\bin\CATSTART.exe" -run "CNEXT.exe -e  V6CATIASilentCheckoutCmdHdr" -env "%ENV_FILE_NAME%" -direnv "%ENV_FILE_LOCATION%"
)

echo returned
