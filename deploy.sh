#!/bin/bash
# 摄影策划集 - 一键部署脚本
# 将改动提交并推送到 GitHub Pages，约 30 秒后生效
set -e

echo "📸 摄影策划集 — 部署到 GitHub Pages..."
git add index.html
git commit -m "更新: $(date '+%Y-%m-%d %H:%M')" || echo "⚠️ 没有新改动可提交"
git push
echo "✅ 推送完成！手机访问: https://foreverjg.github.io/photography-plan/"
