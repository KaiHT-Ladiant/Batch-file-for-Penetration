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
echo ������������������������������������������������������������������������������������������
echo ��             Open Port Scanning            ��
echo ��           Scripting From Kai_HT           ��
echo �Ʀ���������������������������������������������������������������������������������������
echo.
echo.
echo Scan Site OpenPort Information
set /p SITENAME=Input Scanning Sitename: 
nmap -p - -T4 -Pn %SITENAME%
for /l %%i in (1,1,%width%) do set "line=!line!��"
pause
