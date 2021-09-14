@echo off
prompt $T $B $P$G && title Rune Prodution's BAWR Version 1.0.0 && color 2
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
SET "filename1=c:\Windows\System32\drivers\etc\\hosts"
SET "filename1=hosts"
::Create your list of host domains
set LIST=(pornhub.com tv2.dk facebook.com twitter.com instagram.com reddit.com pinterest.com tiktok.com wish.com tinder.com match.com pof.com okcupid.com zoosk.com bumble.com seeking.com happn.com crazygames.com cs-online.club worldofsolitaire.com pogo.com miniclip.com addictinggames.com msn.com foxnews.com buzzfeed.com omegle.com tinychat.com chatroulette.com flalottery.com lasatlantis.com xvideos.com xnxx.com blutmagie.de tor2web.fi onion.gq onion.cab playdr2.tw a.gwas.perl.sh playdr2.tw playdr2.tw slyip.net walmartforchristmas.website maypole.co.kr 211.255.23.149 1e90ff.com 4169e1.com 184.164.143.90 184.164.143.90 88.214.241.85 88.214.241.85 expendablesearch.com 88.214.241.85 216.172.63.56 lightforcefinder.com expendablesearch.com et-phone.co.kr bnicsl.no-ip.org chatrandom.com bovada.lv betonline.ag lotterypost.com bet365.com fantasy.legend.rocks  irc.byroe.net mafia.bot.nu 199.114.220.147 mercetruck.com.br ngipharmacy.com www.lizsol.com diamondsgrouphr.com artoftheruse.com bluecoatict.co.uk lopesdedetizacao.com.br licmirtabraier.com.ar bhardwajcarriers.com cartomantealex.com danlaid.com.au powerful-spark-age.glitch.me www.online-et.com mbaudiovisual.com.br www.reservation-ouicar.com workdefender.com arvnorton.com habuprocess.com www.shebasecurity.com laborerpattern.com dallascarcrashlawyer.com mail.reservation-ouicar.com styleandharmony.com.au dev.klinikmatanusantara.com www.felippealfredo.com elfin-adaptive-recorder.glitch.me www.designmycakes.com colegiolecole.edu.mx boltrucks.us centraslcourierllc.com geekvb.in janglo.net bookedandboarding.com www.azhomes.com besthomeworkhelp.org kongrespdgi.com sepehrparmis.com kerfoo.com itmagazin.info designmycakes.com www.designmycakes.com petbijoux.com.br www.facepooc.com cloud9ine.ru promcuscotravel.com is.facviews.com www.voolenstudios.com wpcccricket.co.za gobbojr.com.br dejavumedspaaz.com)
::Set the ip of the domains you set in the list above
set bing.com=127.0.0.1


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
