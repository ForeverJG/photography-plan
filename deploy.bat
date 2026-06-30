@echo off
chcp 65001 >nul
echo 📸 摄影策划集 部署中...
cd /d "%~dp0"
git add index.html
git commit -m "更新: %date% %time%"
git push
echo.
echo ✅ 推送完成！
echo 🔗 https://foreverjg.github.io/photography-plan/
pause
