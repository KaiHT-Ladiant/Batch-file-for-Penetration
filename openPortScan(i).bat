@echo off

REM Scan device Open port
REM Code By Kai_HT

REM Will be updated later
REM Version 1.0
REM Set Encoding Type "ASCII" to save.

REM Nmap installation is required.

title openPortScanning 
echo ┌─────────────────────┒
echo ┃             Open Port Scanning            ┃
echo │           Scripting From Kai_HT            ┃
echo ┕━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.
echo Scan Site OpenPort Information
set /p SITENAME=Input Scanning Sitename: 
nmap -p - -T4 -Pn %SITENAME%
pause
