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
echo 忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式汐
echo 弛               HTTPS Ciphers Scanning              早
echo 弛               Scripting From Kai_HT               早
echo 汎收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭
echo.
echo.
for /l %%i in (1,1,%width%) do set "line=!line!收"
set /p domainName=What is scanning target? (Input Domain Name): 
echo.
echo.
for /l %%i in (1,1,%width%) do set "line=!line!收"
echo Scanning All Ready
timeout 3
echo.
echo.
echo.
for /l %%i in (1,1,%width%) do set "line=!line!收"
echo Scanning Start
echo.
echo.
echo [WEB-SER-035] %domainName% Protocols Scanning
nmap --script ssl-enum-ciphers %domainName%
echo.
echo.
for /l %%i in (1,1,%width%) do set "line=!line!收"
echo HTTPS Protocol Scanning is End.
pause
