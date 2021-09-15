echo off

::This is the title of the cmd window, the color and the timestamp.
prompt $T $B $P$G && title Rune Prodution's BAWR Version 1.1.0 && color 2

:: This is the selecting menu
:begin
CLS
echo Select a task:
echo =============
echo -
echo 1) Update Host Files
echo 2) Reset Host Files
echo 3) Exit BAWR-Version 1.1.0
echo 4) More Options
echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4

::User input
echo Please Pick an option:
goto begin


::This section is to configured the options
:op1
call "c:\Users\%Username%\Desktop\BAWR-functions\move-edit-delete.bat"
ECHO.
echo Please Wait...
timeout /t 3
ECHO.
PAUSE
goto begin

:op2
call "c:\Users\%Username%\Desktop\BAWR-functions\move-reset-delete.bat"
ECHO.
echo Please Wait...
timeout /t 3
ECHO.
PAUSE
goto begin

:op3
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
echo Thank You For Using A Rune Prodution Product
timeout /t 5
goto exit

:op4
:begin2
CLS
echo Select a task:
echo =============
echo -
echo 1) Update Host Files
echo 2) Reset Host Files
echo 3) Exit BAWR-Version 1.1.0
echo 4) More Options
echo -
set /p op=Type option:
if "%opt%"=="1" goto opt1
if "%opt%"=="2" goto opt2
if "%opt%"=="3" goto opt3
if "%opt%"=="4" goto opt4

::User input
echo Please Pick an option:
goto begin2

:opt1
echo test opt 1
ECHO.
echo Please Wait...
timeout /t 3
ECHO.
PAUSE
goto begin2

:opt2
echo test opt 1
ECHO.
echo Please Wait...
timeout /t 3
ECHO.
PAUSE
goto begin2

:opt3
CLS
goto begin


:exit
@exit
