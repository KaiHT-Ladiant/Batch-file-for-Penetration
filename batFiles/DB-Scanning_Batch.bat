@echo off

REM Scan the database default port
REM Code By Kai_HT

REM Will be updated later
REM Version 1.1
REM Set Encoding Type "ANSI" to save.

REM Nmap installation is required.

title DB Scanning - Kai_HT
echo ┌───────────────────────────────────────────────────┒
echo │              DB Default Port Scanning             ┃
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
echo [DBS-01] MySQL Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 3306
echo.
echo.
echo ─────────
echo.
echo [DBS-02]_01 MS-SQL Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 1433
echo [DBS-02]_02 MS-SQL Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 1434
echo.
echo.
echo ─────────
echo.
echo [DBS-03]_01 Oracle Default Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 1521
echo [DBS-03]_02 Oracle Default Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 1522
echo.
echo.
echo ─────────
echo.
echo [DBS-04] Oracle 9i Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 7778
echo.
echo.
echo ─────────
echo.
echo [DBS-05] Oracle 10g Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 5560
echo.
echo.
echo ─────────
echo.
echo [DBS-06] MongoDB Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 5984
echo.
echo.
echo ─────────
echo.
echo [DBS-07] PosgreSQL Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 5432
echo.
echo.
echo ─────────
echo.
echo [DBS-08] IBM DB2 Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 50000
echo.
echo.
echo ─────────
echo.
echo [DBS-09] IBM Informix Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 1526
echo.
echo.
echo ─────────
echo.
echo [DBS-10] Apache Derby Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 1527
echo.
echo.
echo ─────────
echo.
echo [DBS-11] SAP Sybase Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 5000
echo.
echo.
echo ─────────
echo.
echo [DBS-12]_1 Mongo DB Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 27017
echo [DBS-12]_2 Mongo DB Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 27018
echo [DBS-12]_3 Mongo DB Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 27019
echo [DBS-12]_4 Mongo DB Port Scanning
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" %domainName% -p 28017
echo.
echo.

echo ───────────────────────────────
echo DB Port Scanning is End.
pause
