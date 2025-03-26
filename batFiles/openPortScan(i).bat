@echo off

setlocal enabledelayedexpansion
for /f %%W in ('powershell -Command "(Get-Host).UI.RawUI.WindowSize.Width"') do set "width=%%W"
set "line="

REM Scan device Open port
REM Code By Kai_HT

REM Will be updated later
REM Version 1.0
REM Set Encoding Type "ANSI" to save.

REM Nmap installation is required.

title openPortScanning 
echo 忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式汐
echo 弛             Open Port Scanning            早
echo 弛           Scripting From Kai_HT           早
echo 汎收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭
echo.
echo.
echo Scan Site OpenPort Information
set /p SITENAME=Input Scanning Sitename: 
nmap -p - -T4 -Pn %SITENAME%
for /l %%i in (1,1,%width%) do set "line=!line!收"
pause
