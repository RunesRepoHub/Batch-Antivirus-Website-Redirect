@echo off
TITLE Modifying your HOSTS file
ECHO.

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

:--------------------------------------

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
move "c:\Users\chris\Desktop\BAWR-functions\edit-hosts-file.bat" "c:\Windows\System32\drivers\etc"
call "c:\Windows\System32\drivers\etc\edit-hosts-file.bat"
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











EXIT
