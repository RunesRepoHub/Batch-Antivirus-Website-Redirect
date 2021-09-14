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
set tv2.dk=127.0.0.1
set facebook.com=127.0.0.1
set twitter.com=127.0.0.1
set instagram.com=127.0.0.1
set reddit.com=127.0.0.1
set pinterest.com=127.0.0.1
set tiktok.com=127.0.0.1
set wish.com=127.0.0.1
set tinder.com=127.0.0.1
set match.com=127.0.0.1
set pof.com=127.0.0.1
set okcupid.com=127.0.0.1
set zoosk.com=127.0.0.1
set bumble.com=127.0.0.1
set seeking.com=127.0.0.1
set happn.com=127.0.0.1
set crazygames.com=127.0.0.1
set cs-online.club=127.0.0.1
set worldofsolitaire.com=127.0.0.1
set pogo.com=127.0.0.1
set miniclip.com=127.0.0.1
set addictinggames.com=127.0.0.1
set msn.com=127.0.0.1
set foxnews.com=127.0.0.1
set buzzfeed.com=127.0.0.1
set omegle.com=127.0.0.1
set tinychat.com=127.0.0.1
set chatroulette.com=127.0.0.1
set chatrandom.com=127.0.0.1
set bovada.lv=127.0.0.1
set betonline.ag=127.0.0.1
set lotterypost.com=127.0.0.1
set bet365.com=127.0.0.1
set flalottery.com=127.0.0.1
set lasatlantis.com=127.0.0.1
set xvideos.com=127.0.0.1
set xnxx.com=127.0.0.1

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
