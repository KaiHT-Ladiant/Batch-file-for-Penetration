@echo off

setlocal enabledelayedexpansion
for /f %%W in ('powershell -Command "(Get-Host).UI.RawUI.WindowSize.Width"') do set "width=%%W"
set "line="

REM Scan Web Application HTTPS Protocols Alghorithms
REM Code By Kai_HT

REM Will be updated later
REM Version 1.0
REM Set Encoding Type "ANSI" to save

REM Nmap installation is required.

title HTTPS Protocol Scanning - Kai_HT
echo ����������������������������������������������������������������������������������������������������������
echo ��               HTTPS Ciphers Scanning              ��
echo ��               Scripting From Kai_HT               ��
echo �Ʀ�������������������������������������������������������������������������������������������������������
echo.
echo.
for /l %%i in (1,1,%width%) do set "line=!line!��"
set /p domainName=What is scanning target? (Input Domain Name): 
echo.
echo.
for /l %%i in (1,1,%width%) do set "line=!line!��"
echo Scanning All Ready
timeout 3
echo.
echo.
echo.
for /l %%i in (1,1,%width%) do set "line=!line!��"
echo Scanning Start
echo.
echo.
echo [WEB-SER-035] %domainName% Protocols Scanning
nmap --script ssl-enum-ciphers %domainName%
echo.
echo.
for /l %%i in (1,1,%width%) do set "line=!line!��"
echo HTTPS Protocol Scanning is End.
pause
