@echo off

REM Create Windows Link for Edge Developer Tools
REM Code By Kai_HT

REM Will be updated later
REM Version 1.0
REM Set Encoding Type "ANSI" to save.

REM First Link Create on Users Desktop.
REM This batch is also available on the open page with the Chrome Extension IE-Tab for the Developer Tools.

title IE_Chooser-linkMaker
echo ┌───────────────────────────────────┒
echo │ Proxy Force Settings Batch Files  ┃
echo │ Create By Kai_HT : RedSec         ┃
echo ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo.
echo Create Link Directory on Desktop.
mklink %userprofile%\Desktop\IEChooser.exe %systemroot%\system32\f12\IEChooser.exe
echo Link is allready.
pause
