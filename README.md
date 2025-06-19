# Homebrew Tap for Pawcus

Developer productivity timer and app usage tracker for macOS.

## Installation

### Method 1: Using this tap (Recommended)

```bash
# Add this tap
brew tap swmaeStrong/pawcus

# Install Pawcus
brew install --cask pawcus
```

### Method 2: Direct URL

```bash
brew install --cask https://raw.githubusercontent.com/swmaeStrong/homebrew-pawcus/main/Casks/pawcus.rb
```

## Updating

Pawcus will auto-update using Sparkle framework, but you can also update via Homebrew:

```bash
# 먼저 Homebrew 정보를 업데이트
brew update

# 그 다음 Pawcus 업그레이드
brew upgrade --cask pawcus
```

### 업데이트가 안 되는 경우

만약 최신 버전이 설치되지 않는다면:

```bash
# Tap을 다시 설정
brew untap swmaestrong/pawcus
brew tap swmaestrong/pawcus
brew install --cask pawcus
```

## Uninstalling

```bash
# Uninstall the app
brew uninstall --cask pawcus

# Remove all app data (optional)
brew uninstall --cask --zap pawcus
```

## Development

### Automatic Updates

This repository includes automation to update the Cask when new releases are published:

1. **Python Script**: `update_cask.py` - Fetches latest release and updates SHA256
2. **Shell Script**: `update.sh` - Interactive update with git operations
3. **GitHub Actions**: `.github/workflows/update-cask.yml` - Automated updates

### Manual Update

```bash
# Make sure you're in the repository directory
cd /Users/kim-jeongwon/Desktop/homebrew-pawcus

# Run the update script
./update.sh

# Or run Python script directly
python3 update_cask.py
```

### Testing

```bash
# Test the cask formula
brew audit --cask pawcus

# Test installation
brew install --cask pawcus --verbose --debug
```

## Repository Structure

```
homebrew-pawcus/
├── Casks/
│   └── pawcus.rb          # Homebrew Cask formula
├── .github/
│   └── workflows/
│       └── update-cask.yml # GitHub Actions workflow
├── update_cask.py         # Python update script
├── update.sh             # Shell update script
└── README.md             # This file
```

## Contributing

1. Fork this repository
2. Make your changes
3. Test with `brew audit --cask pawcus`
4. Submit a pull request

## Release Process

When releasing a new version of Pawcus:

1. **Create GitHub Release**:
   - Tag: `v1.0.0` (semantic versioning)
   - Upload `Pawcus.zip` as release asset

2. **Update Homebrew Cask** (automatically):
   - GitHub Actions will detect the new release
   - Run `update_cask.py` to update the formula
   - Commit and push changes

3. **Manual Alternative**:
   ```bash
   cd /Users/kim-jeongwon/Desktop/homebrew-pawcus
   ./update.sh
   ```

## Troubleshooting

### Permission Issues
```bash
# If Pawcus requires accessibility permissions
System Preferences → Security & Privacy → Privacy → Accessibility → Add Pawcus
```

### Cask Issues
```bash
# Reinstall if having issues
brew uninstall --cask pawcus
brew install --cask pawcus
```

### Debug Installation
```bash
brew install --cask pawcus --verbose --debug
```

## Links

- **App Repository**: https://github.com/swmaeStrong/Pawcus
- **Homebrew Tap**: https://github.com/swmaeStrong/homebrew-pawcus
- **Releases**: https://github.com/swmaeStrong/Pawcus/releases