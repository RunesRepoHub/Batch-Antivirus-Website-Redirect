@ECHO OFF

ECHO 1.Update-Host-Files
ECHO 2.Shutdown
ECHO 3.Close all Windows
ECHO 4.Log off
ECHO 5.Switch User
ECHO 6.Exit
ECHO.

:Start CHOICE /C 12345 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 6 GOTO Exit
IF ERRORLEVEL 5 GOTO SwitchUser
IF ERRORLEVEL 4 GOTO Logoff
IF ERRORLEVEL 3 GOTO CloseAllWindows
IF ERRORLEVEL 2 GOTO Shutdown
IF ERRORLEVEL 1 GOTO Update-Host-Files

:Update-Host-Files
call "c:\Users\%Username%\Desktop\BAWR-functions\move-edit-host-file.bat"
call "c:\Windows\System32\drivers\etc\edit-hosts-file.bat"
PAUSE
GOTO Start

:Shutdown
ECHO Shutdown (put your shutdown code here)
GOTO Start

:CloseAllWindows
ECHO Close All Windows (put your close all windows code here)
GOTO Start

:Logoff
ECHO Logoff (put your log off code here)
GOTO Start

:SwitchUser
ECHO Switch User (put your switch user code here)
GOTO Start


:Exit
End
