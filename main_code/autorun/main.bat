@echo off
set StartupFolder=%AppData%\Microsoft\Windows\Start Menu\Programs\Startup
set ShortcutName=auto_note.bat.lnk
set /p TargetFile=update_repo_src.bat file path : 

echo Set oShell = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%StartupFolder%\%ShortcutName%" >> CreateShortcut.vbs
echo Set oLink = oShell.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = %TargetFile% >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs

echo startup file created 

del CreateShortcut.vbs

echo now your note will be updated every time you turn on computer 
pause 

echo Startup files:
dir "%StartupFolder%"


pause 


