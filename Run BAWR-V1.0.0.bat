echo off
prompt $T $B $P$G && title Rune Prodution's BAWR Version 1.0.0 && color 2
:begin
CLS
echo Select a task:
echo =============
echo -
echo 1) Update Host Files
echo 2) Reset Host Files
echo 3) Option 3
echo 4) Option 4
echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4

echo Please Pick an option:
goto begin


:op1
call "c:\Users\%Username%\Desktop\BAWR-functions\move-edit-host-file.bat"
ECHO.
echo Please Wait...
timeout /t 3
call "c:\Windows\System32\drivers\etc\edit-hosts-file.bat"
timeout /t 3
del /f /q c:\Windows\System32\drivers\etc\edit-hosts-file.bat
ECHO.
PAUSE
goto begin

:op2
call "c:\Users\%Username%\Desktop\BAWR-functions\move-reset-hosts-file.bat"
ECHO.
echo Please Wait...
timeout /t 3
call "c:\Windows\System32\drivers\etc\reset-hosts-file.bat"
timeout /t 3
del /f /q c:\Windows\System32\drivers\etc\reset-hosts-file.bat
ECHO.
PAUSE
goto begin

:op3
echo you picked option 3
goto begin

:op4
echo you picked option 4
goto begin

:exit
@exit
