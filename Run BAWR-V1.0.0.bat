@ECHO OFF
:start
SET choice=
SET /p choice=Do something? [N]:
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
ECHO Do all of the no things here!
PAUSE
EXIT

:yes
ECHO Do all of the yes things here!
start cmd.exe /k notepad "C:\Windows\System32\drivers\etc folder"
PAUSE
EXIT
