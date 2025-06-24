#!/usr/bin/env python3
"""
Homebrew Cask 자동 업데이트 스크립트
GitHub 릴리즈에서 새 버전을 확인하고 SHA256을 계산하여 Cask 파일을 업데이트합니다.
"""

import json
import hashlib
import requests
import re
import sys
from pathlib import Path

def get_latest_release():
    """GitHub API에서 최신 릴리즈 정보 가져오기"""
    url = "https://api.github.com/repos/swmaeStrong/Pawcus-Public/releases/latest"
    try:
        response = requests.get(url)
        response.raise_for_status()
        return response.json()
    except requests.RequestException as e:
        print(f"Error fetching release info: {e}")
        return None

def calculate_sha256(url):
    """URL에서 파일을 다운로드하고 SHA256 해시 계산"""
    try:
        print(f"Downloading and calculating SHA256 for: {url}")
        response = requests.get(url, stream=True)
        response.raise_for_status()
        
        sha256_hash = hashlib.sha256()
        for chunk in response.iter_content(chunk_size=8192):
            sha256_hash.update(chunk)
        
        return sha256_hash.hexdigest()
    except requests.RequestException as e:
        print(f"Error downloading file: {e}")
        return None

def update_cask_file(version, sha256):
    """Cask 파일 업데이트"""
    cask_file = Path(__file__).parent / "Casks" / "pawcus.rb"
    
    if not cask_file.exists():
        print(f"Cask file not found: {cask_file}")
        return False
    
    # 파일 읽기
    content = cask_file.read_text()
    
    # 버전 업데이트
    content = re.sub(
        r'version\s+"[^"]*"',
        f'version "{version}"',
        content
    )
    
    # SHA256 업데이트
    content = re.sub(
        r'sha256\s+[^\n]*',
        f'sha256 "{sha256}"',
        content
    )
    
    # 파일 쓰기
    cask_file.write_text(content)
    print(f"Updated {cask_file}")
    return True

def main():
    print("🔍 Checking for latest Pawcus release...")
    
    # 최신 릴리즈 정보 가져오기
    release = get_latest_release()
    if not release:
        print("❌ Failed to get release information")
        sys.exit(1)
    
    version = release["tag_name"].lstrip("v")
    print(f"📦 Latest version: {version}")
    
    # ZIP 파일 찾기
    zip_asset = None
    for asset in release["assets"]:
        if asset["name"] == "Pawcus.zip":
            zip_asset = asset
            break
    
    if not zip_asset:
        print("❌ Pawcus.zip not found in release assets")
        sys.exit(1)
    
    download_url = zip_asset["browser_download_url"]
    print(f"📥 Download URL: {download_url}")
    
    # SHA256 계산
    sha256 = calculate_sha256(download_url)
    if not sha256:
        print("❌ Failed to calculate SHA256")
        sys.exit(1)
    
    print(f"🔐 SHA256: {sha256}")
    
    # Cask 파일 업데이트
    if update_cask_file(version, sha256):
        print("✅ Cask file updated successfully!")
        print(f"\nNext steps:")
        print(f"1. cd /Users/kim-jeongwon/Desktop/homebrew-pawcus")
        print(f"2. git add .")
        print(f"3. git commit -m 'Update to version {version}'")
        print(f"4. git push")
    else:
        print("❌ Failed to update cask file")
        sys.exit(1)

if __name__ == "__main__":
    main()