@echo off

::This is the title of the cmd window, the color and the timestamp.
prompt $T $B $P$G && title Rune Prodution's BAWR Version 1.0.0 && color 2
ECHO.

::This is a script for giving cmd admin rights.
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

::This is the script being run when you select "Update Host Files" to move, run and delete the files needed.
copy "c:\Users\%Username%\Desktop\BAWR-functions\edit-hosts-file.bat" "c:\Windows\System32\drivers\etc"
ECHO.
timeout /t 3
call "c:\Windows\System32\drivers\etc\edit-hosts-file.bat"
ECHO.
timeout /t 5
del /f /q c:\Windows\System32\drivers\etc\edit-hosts-file.bat
