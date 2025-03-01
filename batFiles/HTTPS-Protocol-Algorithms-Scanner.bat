@echo off

REM Scan Web Application HTTPS Protocols Alghorithms
REM Code By Kai_HT

REM Will be updated later
REM Version 1.0
REM Set Encoding Type "ANSI" to save

REM Nmap installation is required.

title HTTPS Protocol Scanning - Kai_HT
echo ┌───────────────────────────────────────────────────┒
echo │               HTTPS Ciphers Scanning              ┃
echo │               Scripting From Kai_HT               ┃
echo ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.
echo ─────────
set /p domainName=What is scanning target? (Input Domain Name): 
echo.
echo.
echo ─────────
echo Scanning All Ready
timeout 3
echo.
echo.
echo.
echo ─────────
echo Scanning Start
echo.
echo.
echo [WEB-SER-035] %domainName% Protocols Scanning
nmap --script ssl-enum-ciphers %domainName%
echo.
echo.
echo ───────────────────────────────
echo HTTPS Protocol Scanning is End.
pause
