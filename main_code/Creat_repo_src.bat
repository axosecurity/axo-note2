echo THIS WILL CREAT YOUR REPOSITORY ALSO PUSH IT TO GITHUB 

@echo off



set /p notes_path=Enter the path to the notes directory:

set /p repo_name=Enter the name of the repository:

rem change this variable 

set github_username=

set github_token=


set datetime=%date% %time%
set datetime=%datetime:/=-%

rem create the repository on GitHub





rem this will creat public repo curl -H "Authorization: token %github_token%" -d "{\"name\":\"%repo_name%\"}" https://api.github.com/user/repos



set cmd4=curl -H "Authorization: token %github_token%" -d "{\"name\":\"%repo_name%\", \"private\": true}" https://api.github.com/user/repos

echo Running command: %cmd2%
echo.

for /f "tokens=* delims=" %%i in ('%cmd4%') do (
    set "output4=!output4!%%i\n"
)

echo Output of %cmd4% :----------------------------------------

echo !output4!



echo ...............................................

echo .........REPOSITORY CREATION DONE ..............




rem push files to the repository



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


echo ...............................................

echo .........YOUR NOTE ARE UPDATED ..............




pause

echo ......................................

echo...........CREATING AUTORUN OPTION .......






schtasks /create /tn "Run Py" /tr "C:\path\to\py.bat" /sc onstart,onstop /ru SYSTEM






exit








