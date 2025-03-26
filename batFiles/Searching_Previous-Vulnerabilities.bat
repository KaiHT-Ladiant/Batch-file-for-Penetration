@echo off

setlocal enabledelayedexpansion
for /f %%W in ('powershell -Command "(Get-Host).UI.RawUI.WindowSize.Width"') do set "width=%%W"
set "line="

REM Check previous vulnerabilities
REM Version 1.0
REM Set Encoding Type "ANSI" to save.

echo ��������������������������������������������������������������������������������������������������������
echo ��          Check Previous Vulnerabilities          ��
echo ��               Scripting From Kai_HT              ��
echo �Ʀ�����������������������������������������������������������������������������������������������������

REM Recommended to perform a search within the evidence folder.
REM Evidence folder form:
REM [Target name]/[Vulnerability code]
REM The code runs within the [Target Name] folder

title Searching last Weak Point
echo.
echo.
set /p VulCode=Enter a vulnerability code: 

echo Searching for directories containing "%VulCode%"...
echo.

for /f "delims=" %%i in ('dir /s /b /ad "*%VulCode%*" 2^>nul') do (
    echo Found: %%i
)

echo.
for /l %%i in (1,1,%width%) do set "line=!line!��"
echo Search completed.
pause
