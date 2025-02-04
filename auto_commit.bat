@echo off
REM Stage all changes.
git add .

REM Prompt the user for a commit message.
set /p commitMsg=Enter commit message: 

REM Commit the changes using the provided message.
git commit -m "%commitMsg%"

REM Push the commit to the remote repository.
git push

REM Pause to allow the user to see the output before closing.
pause
