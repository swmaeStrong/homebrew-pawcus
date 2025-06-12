#!/bin/bash

# Pawcus Homebrew Cask 업데이트 스크립트

set -e

echo "🐾 Pawcus Homebrew Cask Updater"
echo "================================="

# Python 스크립트 실행
echo "🔍 Checking for updates..."
python3 update_cask.py

# 변경사항 확인
if git diff --quiet; then
    echo "📋 No changes detected. Cask is up to date!"
    exit 0
fi

echo ""
echo "📝 Changes detected:"
git diff

echo ""
read -p "🚀 Do you want to commit and push these changes? (y/N): " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # Git 설정 확인
    if ! git config user.name > /dev/null; then
        read -p "Enter your Git username: " git_username
        git config user.name "$git_username"
    fi
    
    if ! git config user.email > /dev/null; then
        read -p "Enter your Git email: " git_email
        git config user.email "$git_email"
    fi
    
    # 커밋 및 푸시
    version=$(grep -E 'version\s+"[^"]*"' Casks/pawcus.rb | sed -E 's/.*version\s+"([^"]*)".*/\1/')
    
    git add .
    git commit -m "Update Pawcus to version $version"
    git push
    
    echo "✅ Changes pushed successfully!"
    echo ""
    echo "📋 Next steps:"
    echo "1. Go to https://github.com/Homebrew/homebrew-cask"
    echo "2. Fork the repository if you haven't already"
    echo "3. Copy the updated pawcus.rb file to your fork"
    echo "4. Create a pull request"
    echo ""
    echo "Or run: brew install --cask pawcus (if it's your own tap)"
else
    echo "❌ Changes not committed."
fi