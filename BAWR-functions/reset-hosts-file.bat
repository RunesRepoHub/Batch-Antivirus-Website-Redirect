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


SETLOCAL ENABLEDELAYEDEXPANSION

:ACCEPTED
setlocal enabledelayedexpansion
SET "filename1=%WINDIR%\System32\drivers\etc\hosts"
SET "filename1=hosts"
::Create your list of host domains
set LIST=(pornhub.com tv2.dk facebook.com twitter.com instagram.com reddit.com pinterest.com tiktok.com wish.com tinder.com match.com pof.com okcupid.com zoosk.com bumble.com seeking.com happn.com crazygames.com cs-online.club worldofsolitaire.com pogo.com miniclip.com addictinggames.com msn.com foxnews.com buzzfeed.com omegle.com tinychat.com chatroulette.com chatrandom.com bovada.lv betonline.ag lotterypost.com bet365.com flalottery.com lasatlantis.com xvideos.com xnxx.com)
::Set the ip of the domains you set in the list above
set pornhub.com=127.0.0.1


ECHO Carrying out requested modifications to your HOSTS file
:: remove existing names from hosts file

findstr /v /e "%LIST:~1,-1%" "%filename1%"> tmp.txt

:: Add new list
for  %%G in %list% do (
rem    set  _name=%%G
rem    set  _value=!%%G!
    ECHO !%%G! %%G>>tmp.txt
)
::overwrite host file
move tmp.txt %filename1% >nul
)

ipconfig /flushdns