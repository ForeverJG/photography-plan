@echo off
set "PATH=F:\Git\mingw64\bin;%PATH%"
cd /d "%~dp0"
echo ========================================
echo   Photoshoot Planner - Deploying...
echo ========================================
git add index.html
git commit -m "Update" 2>nul
git push
echo.
echo   Done! Open on phone:
echo   https://foreverjg.github.io/photography-plan/
echo ========================================
pause
