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
echo 3) More Options
echo 4) Exit BAWR-Version 1.1.0
echo ---------------------------
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
::------------------------------
::User input
echo Please Pick an option:
goto begin
::------------------------------

::This section is to configured the options
::------------------------------
:op1
call "c:\Users\%Username%\Desktop\BAWR\BAWR-functions\move-edit-delete.bat"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
goto begin
::------------------------------

::------------------------------
:op2
call "c:\Users\%Username%\Desktop\BAWR\BAWR-functions\move-reset-delete.bat"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
goto begin
::------------------------------

::------------------------------
:op4
CLS
echo .
timeout /t 1 /nobreak > nul
echo ..
timeout /t 1 /nobreak > nul
echo ...
timeout /t 1 /nobreak > nul
echo ....
timeout /t 1 /nobreak > nul
echo .....
timeout /t 1 /nobreak > nul
ECHO.
echo Thank You For Using A Rune Prodution Product
ECHO.
timeout /t 1 /nobreak > nul
echo .....
timeout /t 1 /nobreak > nul
echo ....
timeout /t 1 /nobreak > nul
echo ...
timeout /t 1 /nobreak > nul
echo ..
timeout /t 1 /nobreak > nul
echo .
goto exit
::------------------------------

::------------------------------
:op3
:more
CLS
echo More Options:
echo ===========================
echo ---------------------------
echo 1) Create GodMode Folders
echo 2) Test 2
echo 3) Enable Windows Admin "SuperUser"
echo 4) Disable Windows Admin "SuperUser"
echo 5) Exit More Options
echo ---------------------------
set /p op=Type option:
if "%op%"=="1" goto more1
if "%op%"=="2" goto more2
if "%op%"=="3" goto more3
if "%op%"=="4" goto more4
if "%op%"=="5" goto more5
::------------------------------

::------------------------------
::User input
echo Please Pick an option:
goto more
::------------------------------

::------------------------------
:more1
call "c:\Users\%Username%\Desktop\BAWR\BAWR-functions\make-godmode-folders.bat"
ECHO.
echo Successfully Created GodMode Folders In The BAWR-Functions Folder On Your Desktop.
pause
goto more
::------------------------------

::------------------------------
:more2
echo test opt 1
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
goto more
::------------------------------

::------------------------------
:more3
call "c:\Users\%Username%\Desktop\BAWR\BAWR-functions\enable-superuser.bat
pause
goto begin
::------------------------------

::------------------------------
:more4
call "c:\Users\%Username%\Desktop\BAWR\BAWR-functions\disable-superuser.bat
pause
goto begin
::------------------------------

::------------------------------
:more5

CLS
goto begin
::------------------------------

goto begin
::------------------------------

:exit
@exit
