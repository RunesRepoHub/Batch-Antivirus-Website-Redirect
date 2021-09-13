@echo off

call :isAdmin

if %errorlevel% == 0 (
    goto :run
) else (
    echo Requesting administrative privileges...
    goto :UACPrompt
)

exit /b

:isAdmin
    fsutil dirty query %systemdrive% >nul
exit /b

:run


:start
SET choice=
SET /p choice=Do You Want To Use BAWR-V1.0.0? [N]:
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:yes
echo URL's> C:\Windows\System32\drivers\etc\hosts
echo pornhub.com 127.0.0.1>>C:\Windows\System32\drivers\etc\hosts
PAUSE

:no
:start1
SET choice1=
SET /p choice1=Do You Want To Use XXXXXXXX? [N]:
IF NOT '%choice1%'=='' SET choice=%choice:~0,1%
IF '%choice1%'=='Y' GOTO yes1
IF '%choice1%'=='y' GOTO yes1
IF '%choice1%'=='N' GOTO no1
IF '%choice1%'=='n' GOTO no1
IF '%choice1%'=='' GOTO no1
ECHO "%choice1%" is not valid
ECHO.
GOTO start1

:no1
ECHO Do all of the no things here!
PAUSE
EXIT

:yes1
start cmd.exe /k ipconfig /all
PAUSE











exit /b

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
exit /B
