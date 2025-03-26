@echo off
setlocal enabledelayedexpansion
for /f %%W in ('powershell -Command "(Get-Host).UI.RawUI.WindowSize.Width"') do set "width=%%W"
set "line="

REM Clear ChromeCache
REM Code By Kai_HT

REM Will be updated later
REM Version 1.0
REM Set Encoding Type "ANSI" to save.

REM First Link Create on Users Desktop.
REM This batch is also available on the open page with the Chrome Extension IE-Tab for the Developer Tools.

title ChromeCache Clearer
echo 忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式汐
echo 弛 ChromeCache Clearer               早
echo 弛 Create By Kai_HT : RedSec         早
echo 汎收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭


taskkill /F /IM "chrome.exe" > nul 2>&1

set ChromeDir=%LOCALAPPDATA%\Google\Chrome\User Data\Default

del /q /s /f "%ChromeDir%\Cache\*" > nul 2>&1
del /q /s /f "%ChromeDir%\Code Cache\*" > nul 2>&1
del /q /f "%ChromeDir%\Cookies" > nul 2>&1
del /q /f "%ChromeDir%\History" > nul 2>&1
del /q /f "%ChromeDir%\Network\*" > nul 2>&1
del /q /s /f "%ChromeDir%\Sessions\*" > nul 2>&1
del /q /s /f "%ChromeDir%\Session Storage\*" > nul 2>&1
for /l %%i in (1,1,%width%) do set "line=!line!收"

echo [*] Chrome Cache Clear Finished.