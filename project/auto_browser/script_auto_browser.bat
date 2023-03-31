@echo off
set /p numtabs="number of windows:"
set urls=https://www.croxyproxy.net/

set /p timer="time in second for turning off pc 1800=30 minuts  :"

setlocal EnableDelayedExpansion

:: Copy the URL to clipboard
echo !urls!| clip

start microsoft-edge: %urls%
timeout /t 5 /nobreak

for /l %%i in (2,1,%numtabs%) do (
start microsoft-edge: -new-tab %urls%
timeout /t 1 /nobreak



:: Perform Ctrl+V and Enter
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^{v}'); [System.Windows.Forms.SendKeys]::SendWait('{ENTER}');"
)


rem this will creat windows with croxy proxy website 

shutdown /s /t %timer%

pause

echo your computer will be turn off after %timer% seconds 

exit