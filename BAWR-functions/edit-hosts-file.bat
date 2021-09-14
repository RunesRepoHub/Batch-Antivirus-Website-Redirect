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
SET "filename1=c:\Windows\System32\drivers\etc\hosts"
SET "filename1=hosts"
::Create your list of host domains
set LIST=(pornhub.com tv2.dk facebook.com twitter.com instagram.com reddit.com pinterest.com tiktok.com wish.com tinder.com match.com pof.com okcupid.com zoosk.com bumble.com seeking.com happn.com crazygames.com cs-online.club worldofsolitaire.com pogo.com miniclip.com addictinggames.com msn.com foxnews.com buzzfeed.com omegle.com tinychat.com chatroulette.com flalottery.com lasatlantis.com xvideos.com xnxx.com blutmagie.de tor2web.fi onion.gq onion.cab playdr2.tw a.gwas.perl.sh playdr2.tw playdr2.tw slyip.net walmartforchristmas.website maypole.co.kr 211.255.23.149 1e90ff.com 4169e1.com 184.164.143.90 184.164.143.90 88.214.241.85 88.214.241.85 expendablesearch.com 88.214.241.85 216.172.63.56 lightforcefinder.com expendablesearch.com et-phone.co.kr bnicsl.no-ip.org chatrandom.com bovada.lv betonline.ag lotterypost.com bet365.com fantasy.legend.rocks  irc.byroe.net mafia.bot.nu 199.114.220.147 mercetruck.com.br ngipharmacy.com www.lizsol.com diamondsgrouphr.com artoftheruse.com bluecoatict.co.uk lopesdedetizacao.com.br licmirtabraier.com.ar bhardwajcarriers.com cartomantealex.com danlaid.com.au powerful-spark-age.glitch.me www.online-et.com mbaudiovisual.com.br www.reservation-ouicar.com workdefender.com arvnorton.com habuprocess.com www.shebasecurity.com laborerpattern.com dallascarcrashlawyer.com mail.reservation-ouicar.com styleandharmony.com.au dev.klinikmatanusantara.com www.felippealfredo.com elfin-adaptive-recorder.glitch.me www.designmycakes.com colegiolecole.edu.mx boltrucks.us centraslcourierllc.com geekvb.in janglo.net bookedandboarding.com www.azhomes.com besthomeworkhelp.org kongrespdgi.com sepehrparmis.com kerfoo.com itmagazin.info designmycakes.com www.designmycakes.com petbijoux.com.br www.facepooc.com cloud9ine.ru promcuscotravel.com is.facviews.com www.voolenstudios.com wpcccricket.co.za gobbojr.com.br dejavumedspaaz.com)

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
set blutmagie.de=127.0.0.1
set tor2web.fi=127.0.0.1
set onion.gq=127.0.0.1
set onion.cab=127.0.0.1
set playdr2.tw:443/=127.0.0.1
set http://a.gwas.perl.sh=127.0.0.1
set playdr2.tw:53/=127.0.0.1
set playdr2.tw:1080/=127.0.0.1
set slyip.net=127.0.0.1
set http://walmartforchristmas.website/=127.0.0.1
set http://maypole.co.kr/=127.0.0.1
set http://211.255.23.149/=127.0.0.1
set http://1e90ff.com/q=127.0.0.1
set http://4169e1.com/q=127.0.0.1
set http://184.164.143.90/=127.0.0.1
set http://184.164.143.90/=127.0.0.1
set http://88.214.241.85 =127.0.0.1
set http://88.214.241.85/=127.0.0.1
set http://expendablesearch.com/=127.0.0.1
set http://88.214.241.85/=127.0.0.1
set http://216.172.63.56/=127.0.0.1
set http://lightforcefinder.com/search.php?q=medical+symptoms+checker=127.0.0.1
set http://expendablesearch.com/search.php?q=testosterone+cypionate=127.0.0.1
set http://expendablesearch.com=127.0.0.1
set http://et-phone.co.kr/=127.0.0.1
set bnicsl.no-ip.org:443=127.0.0.1
set fantasy.legend.rocks:7777=127.0.0.1
set irc.byroe.net:6667=127.0.0.1
set mafia.bot.nu:4444=127.0.0.1
set 199.114.220.147:8443=127.0.0.1
set mercetruck.com.br=127.0.0.1
set ngipharmacy.com=127.0.0.1
set www.lizsol.com=127.0.0.1
set diamondsgrouphr.com=127.0.0.1
set artoftheruse.com=127.0.0.1
set bluecoatict.co.uk=127.0.0.1
set lopesdedetizacao.com.br=127.0.0.1
set licmirtabraier.com.ar=127.0.0.1
set bhardwajcarriers.com=127.0.0.1
set cartomantealex.com=127.0.0.1
set danlaid.com.au=127.0.0.1
set powerful-spark-age.glitch.me=127.0.0.1
set www.online-et.com=127.0.0.1
set mbaudiovisual.com.br=127.0.0.1
set www.reservation-ouicar.com=127.0.0.1
set workdefender.com=127.0.0.1
set arvnorton.com=127.0.0.1
set habuprocess.com=127.0.0.1
set www.shebasecurity.com=127.0.0.1
set laborerpattern.com=127.0.0.1
set dallascarcrashlawyer.com=127.0.0.1
set mail.reservation-ouicar.com=127.0.0.1
set styleandharmony.com.au=127.0.0.1
set dev.klinikmatanusantara.com=127.0.0.1
set www.felippealfredo.com=127.0.0.1
set elfin-adaptive-recorder.glitch.me=127.0.0.1
set www.designmycakes.com=127.0.0.1
set colegiolecole.edu.mx=127.0.0.1
set boltrucks.us=127.0.0.1
set centraslcourierllc.com=127.0.0.1
set geekvb.in=127.0.0.1
set janglo.net=127.0.0.1
set bookedandboarding.com=127.0.0.1
set www.azhomes.com=127.0.0.1
set besthomeworkhelp.org=127.0.0.1
set kongrespdgi.com=127.0.0.1
set sepehrparmis.com=127.0.0.1
set kerfoo.com=127.0.0.1
set itmagazin.info=127.0.0.1
set designmycakes.com=127.0.0.1
set www.designmycakes.com=127.0.0.1
set petbijoux.com.br=127.0.0.1
set www.facepooc.com=127.0.0.1
set cloud9ine.ru=127.0.0.1
set promcuscotravel.com=127.0.0.1
set is.facviews.com=127.0.0.1
set www.voolenstudios.com=127.0.0.1
set wpcccricket.co.za=127.0.0.1
set gobbojr.com.br=127.0.0.1
set dejavumedspaaz.com=127.0.0.1



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
