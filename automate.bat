@echo off

REM Run a Python script
python organizeLocationLogic.py

REM Add all files to git
git add .

REM Get user input for commit message
set /p commitMessage=Enter commit message:

REM Commit changes with user inputted message
git commit -m "%commitMessage%"

REM Get user input for new branch name
set /p branchName=Enter new branch name:

REM Create and checkout new branch with user inputted name
git checkout -b %branchName%

REM Push changes to new branch
git push --set-upstream origin %branchName%

REM Pause script
pause
