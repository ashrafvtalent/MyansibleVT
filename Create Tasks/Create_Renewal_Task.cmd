@echo off

:: Change 0 to 1 to run the script Unattended
set Unattended=0



::========================================================================================================================================

:: ---------------------------------------------------------------------------------------------------------
::  This script is a part of "Microsoft Activation Scripts" - Fork, Open Source & clean from AV's detection 
::  Homepage - https://www.nsaneforums.com/topic/316668--/   ShortURL - 0x0.st/s9j                          
:: ---------------------------------------------------------------------------------------------------------

::========================================================================================================================================

cls
title Create Renewal Task
color 1F
mode con cols=98 lines=30
for /f "tokens=6 delims=[]. " %%G in ('ver') do set winbuild=%%G

::========================================================================================================================================

:: ----------------------------------------------------------
::  Check if the file path name contains special characters
::  https://stackoverflow.com/a/33626625
::  Written by @jeb (stackoverflow)
::  Thanks to @abbodi1406 (MDL) for the help.
:: ----------------------------------------------------------

setlocal DisableDelayedExpansion
set "param=%~f0"
cmd /v:on /c echo(^^!param^^!| findstr /R "[| ` ! @ %% \^ & ( ) + = ; ' , |]*^"
if %errorlevel% equ 0 (
echo ==== ERROR ====
echo File path have special characters.
echo Copy the script folder to a simple directory, for example- D:\New folder
goto Done
)
setlocal EnableDelayedExpansion

::========================================================================================================================================

if %winbuild% LSS 7600 (
echo ==== ERROR ====
echo Unsupported OS version Detected.
echo Project is supported only for Windows 7/8/8.1/10 and their Server equivalent.
goto Done
)

::========================================================================================================================================

fsutil dirty query %systemdrive% >nul 2>&1 || (
echo ==== ERROR ====
echo Right click on this file and select 'Run as administrator'
goto Done
)

::========================================================================================================================================

cd /d "%~dp0"
pushd "%~dp0"

if not exist "%~dp0Files_\" (
echo ==== ERROR ====
echo Following 'Files_' Folder does not exist.
echo It's supposed to have Files required for the Task Creation.
echo.
echo %~dp0Files_\
goto Done
)

::========================================================================================================================================

if not exist "%~dp0\Files_\Info.txt" (set no_file=1 & set no_info=1)
if not exist "%~dp0\Files_\Online_KMS_Activation.txt" (set no_file=1 & set no_act=1)
if not exist "%~dp0\Files_\Renewal.xml" (set no_file=1 & set no_ren=1)

if defined no_file (
echo Following required file[s] are not present. Aborting...
echo.
if defined no_info echo %~dp0Files_\Info.txt
if defined no_act echo %~dp0Files_\Online_KMS_Activation.txt
if defined no_ren echo %~dp0Files_\Renewal.xml
goto Done
)

::========================================================================================================================================

set "key=HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\taskcache\tasks"
reg query "%key%" /f Path /s | find /i "\Online_KMS_Activation_Script-Renewal" >nul && (
schtasks /delete /tn Online_KMS_Activation_Script-Renewal /f 1>nul 2>nul
)
reg query "%key%" /f Path /s | find /i "\Online_KMS_Activation_Script-Run_Once" >nul && (
schtasks /delete /tn Online_KMS_Activation_Script-Run_Once /f 1>nul 2>nul
)
If exist "%windir%\Online_KMS_Activation_Script" (
@RD /s /q "%windir%\Online_KMS_Activation_Script" >nul 2>&1
)
md "%windir%\Online_KMS_Activation_Script" >nul 2>&1

::========================================================================================================================================

(
echo @echo off
echo set "Renewal_Task=1"
)>"%temp%\1.."

copy /y /b "%temp%\1.." + "%~dp0\Files_\Online_KMS_Activation.txt" "%windir%\Online_KMS_Activation_Script\Online_KMS_Activation_Script-Renewal.cmd" >nul 2>&1
schtasks /create /tn "Online_KMS_Activation_Script-Renewal" /ru "SYSTEM" /xml "%~dp0\Files_\Renewal.xml" >nul 2>&1
copy /y /b "%~dp0\Files_\Info.txt" "%windir%\Online_KMS_Activation_Script\Info.txt" >nul 2>&1

del /Q "%temp%\1.." >nul 2>&1

::========================================================================================================================================

reg query "%key%" /f Path /s | find /i "\Online_KMS_Activation_Script-Renewal" >nul || (set error_=1)
If not exist "%windir%\Online_KMS_Activation_Script\Online_KMS_Activation_Script-Renewal.cmd" (set error_=1)
If not exist "%windir%\Online_KMS_Activation_Script\Info.txt" (set error_=1)

call :Color_Pre
if defined error_ (
echo ---------------------------------------------
call :Color 0C "Error - Try again" &echo:
echo ---------------------------------------------
) else (
echo ------------------------------------------------------------------------------------------
echo  Files created:
echo  %windir%\Online_KMS_Activation_Script\Online_KMS_Activation_Script-Renewal.cmd
echo  %windir%\Online_KMS_Activation_Script\Info.txt
echo.
echo  Scheduled Task created:
echo  Online_KMS_Activation_Script-Renewal
echo.
echo ------------------------------------------------------------------------------------------
call :Color 0A "Renewal Task was created successfully" &echo:
echo ------------------------------------------------------------------------------------------
)

goto Done

::========================================================================================================================================

:: ----------------------------------------------------
::  Multicolor outputs without any external programs
::  https://stackoverflow.com/a/5344911
::  Written by @jeb (stackoverflow)
:: ----------------------------------------------------

:Color_Pre
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")
exit /b

:color
pushd "%temp%"
<nul set /p ".=%DEL%" > "%~2" &findstr /v /a:%1 /R "^$" "%~2" nul &del "%~2" > nul 2>&1
popd
exit /b

::========================================================================================================================================

:Done
echo.
if %Unattended% EQU 1 (
echo Exiting in 5 seconds...
if %winbuild% LSS 7600 (ping -n 5 127.0.0.1 > nul) else (timeout /t 5)
exit /b
)
echo Press any key to exit...
pause >nul
exit /b

::========================================================================================================================================