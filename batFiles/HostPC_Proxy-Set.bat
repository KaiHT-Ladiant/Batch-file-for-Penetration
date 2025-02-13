@echo off
REM Settings proxyAddress: localhost
REM Settings proxyPortNumber: 8800
REM Code By Kai_HT
REM Will be updated later
REM Version 1.1
REM Updated IF Logic, And Custom ProxyNumber Set.
REM Set Encoding Type "ANSI" to save.

echo ┌───────────────────────────────────┒
echo │ Proxy Force Settings Batch Files  ┃
echo │ Create By Kai_HT : RedSec         ┃
echo ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.

REM Custom Proxynumber Setting
set /p QportNumber=Do u Want Custom PortNumber? - Default Portnumber is 8800(Y/N): 
if /i "%QportNumber%"=="N" SET %portNumber%=8800
if /i "%QportNumber%"=="Y" goto portSet

REM Set Custom Proxy Portnumber
:portSet
set /p portNumber=Setting Proxy Port: 

echo Pause Any Button, Start...
pause>nul

REM Set Registry to Settings Windows Proxy
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /t REG_SZ /v ProxyServer /d 127.0.0.1:%portNumber% /f
echo Proxy Settings Complete..
pause>nul

REM Users Choice On Off
:LOOP
set /p onoff=Do you want Turn it on?(Y/N)  
if /I "%onoff%"=="Y" goto onProxy
if /I "%onoff%"=="N" goto offProxy
else goto LOOP

REM turnOn Proxy
:onProxy
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /t REG_DWORD /v ProxyEnable /d 1 /f
echo Proxy turnOn the End.
goto questEnd

REM turnOff Proxy
:offProxy
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet?Settings" /t REG_DWORD /v ProxyEnable /d 0 /f
echo Proxy turnOff the End.
goto questEnd

REM questioning Ending.
:questEnd
set /p Ending=Do you want EXIT? (Y/N): 
if /I %Ending%=="y" pause
if /I %Ending%=="n" goto LOOP

REM EXIT Program
pause
