@echo off
REM Settings proxyAddress: localhost
REM Settings proxyPortNumber: 8800
REM Code By Kai_HT
REM Will be updated later
REM Version 1.0

echo ┌───────────────────────────────────┒
echo │ Proxy Force Settings Batch Files  ┃
echo │ Create By Kai_HT : RedSec         ┃
echo ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo Pause Any Button, Start...
pause>nul

REM Set Registry to Settings Windows Proxy
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /t REG_SZ /v ProxyServer /d 127.0.0.1:8800 /f
echo Proxy Settings Complete..
pause>nul

REM Users Choice On Off
:LOOP
set /p onoff=Do you want Turn it on?
if /i "%onfoff%" == "y" goto onProxy
if /i "%onfoff%" == "n" goto offProxy
goto LOOP

REM turnOn Proxy
:onProxy
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /t REG_DWORD /v ProxyEnable /d 1 /f
echo Proxy turnOn the End.
goto questionEnd

REM turnOff Proxy
:offProxy
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet?Settings" /t REG_DWORD /v ProxyEnable /d 0 /f
echo Proxy turnOff the End.
goto questionEnd

REM questioning Ending.
:questionEnd
set /p Ending=Do you want EXIT?
if /i "%Ending%"=="y" 
if /i "%Ending%"=="n" goto LOOP
goto questionEnd

REM EXIT Program
pause
