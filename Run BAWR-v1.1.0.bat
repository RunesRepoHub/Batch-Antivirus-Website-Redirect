echo off

::This is the title of the cmd window, the color and the timestamp.
prompt $T $B $P$G && title Rune Prodution's BAWR Version 1.1.0 && color 2

:: This is the selecting menu
:begin
CLS
echo Select a task:
echo ===========================
echo ---------------------------
echo 1) Update Host Files
echo 2) Reset Host Files
echo 3) Exit BAWR-Version 1.1.0
echo 4) More Options
echo ---------------------------
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
:more
CLS
echo More Options:
echo ===========================
echo ---------------------------
echo 1) Test 1
echo 2) Test 2
echo 3) Exit BAWR-Version 1.1.0
::echo 4) More Options
echo ---------------------------
set /p op=Type option:
if "%op%"=="1" goto more1
if "%op%"=="2" goto more2
if "%op%"=="3" goto more3
::if "%op%"=="4" goto more4

::User input
echo Please Pick an option:
goto more

:more1
call "c:\Users\%Username%\Desktop\BAWR-functions\make-godmode-folders.bat"
ECHO.
echo Please Wait...
timeout /t 1
ECHO.
PAUSE
goto more

:more2
echo test opt 1
ECHO.
echo Please Wait...
timeout /t 3
ECHO.
PAUSE
goto more

:more3
CLS
goto begin

goto begin


:exit
@exit
