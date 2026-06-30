@echo off
setlocal
set "PATH=F:\Git\mingw64\bin;%PATH%"
cd /d "%~dp0"

echo ========================================
echo   Photoshoot Planner — Deploy
echo ========================================
echo.

git status --porcelain | findstr /r "." >nul
if %errorlevel% neq 0 (
    echo   No changes to deploy.
    echo ========================================
    pause
    exit /b
)

git add index.html
git commit -m "Update %date% %time%"
git push

echo.
echo   Done!
echo   https://foreverjg.github.io/photography-plan/
echo ========================================
pause
