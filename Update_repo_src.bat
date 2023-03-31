@echo off

rem this is variables 

set datetime=%date% %time%
set datetime=%datetime:/=-%

rem change this variables 

set notes_path=C:\Users\City Online Ltd\git-note\axo-note


set github_username=axosecurity

set repo_name=axo-note

rem this will update the data 

cd %notes_path%

git init

rem git remote add command 

set cmd2=git remote add origin https://github.com/%github_username%/%repo_name%.git
echo Running command: %cmd2%
echo.

for /f "tokens=* delims=" %%i in ('%cmd2%') do (
    set "output2=!output2!%%i\n"
)

echo Output of %cmd2% :----------------------------------------
echo !output2!

git add .



rem git commit -m "Adding notes - %datetime%"

set cmd1=git commit -m "Adding notes - %datetime%"
echo Running command: %cmd1%
echo.

for /f "tokens=* delims=" %%i in ('%cmd1%') do (
    set "output1=!output1!%%i\n"
)

echo Output of %cmd1% : -----------------------------------------------------
echo !output1!


rem this will push the filles
rem git push --set-upstream origin master

set cmd=git push --set-upstream origin master
echo Running command: %cmd%
echo.

for /f "tokens=* delims=" %%i in ('%cmd%') do (
    set "output=!output!%%i\n"
)

echo Output of %cmd% : ----------------------------------------------------
echo !output!

echo Updating notes of your  directory %notes_path% to the repository %repo_name% ...
ping -n 3 127.0.0.1 > nul
for /l %%i in (1,1,5) do (
  echo Updating notes of your directory %notes_path% to the repository %repo_name%...%%i
  ping -n 5 127.0.0.1 > nul
)


echo ...............................................
echo .........YOUR NOTE ARE UPDATED ..............

pause
exit
