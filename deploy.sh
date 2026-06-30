#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "========================================"
echo "  Photoshoot Planner — Deploy"
echo "========================================"
echo ""

if git diff --quiet && git diff --cached --quiet; then
    echo "  No changes to deploy."
    exit 0
fi

git add index.html
git commit -m "Update $(date '+%Y-%m-%d %H:%M')" || echo "  (nothing new to commit)"
git push

echo ""
echo "  Done!"
echo "  https://foreverjg.github.io/photography-plan/"
echo "========================================"
