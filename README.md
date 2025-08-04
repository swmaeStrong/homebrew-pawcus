# Homebrew Tap for Pomocore

Developer productivity timer and app usage tracker for macOS.

## Installation

### Method 1: Using this tap (Recommended)

```bash
# Add this tap
brew tap swmaeStrong/pomocore

# Install Pomocore
brew install --cask pomocore
```

### Method 2: Direct URL

```bash
brew install --cask https://raw.githubusercontent.com/swmaeStrong/homebrew-pomocore/main/Casks/pomocore.rb
```

## Updating

Pomocore will auto-update using Sparkle framework, but you can also update via Homebrew:

```bash
# 먼저 Homebrew 정보를 업데이트
brew update

# 그 다음 Pomocore 업그레이드
brew upgrade --cask pomocore
```

### 업데이트가 안 되는 경우

만약 최신 버전이 설치되지 않는다면:

```bash
# Tap을 다시 설정
brew untap swmaestrong/pomocore
brew tap swmaestrong/pomocore
brew install --cask pomocore
```

## Uninstalling

```bash
# Uninstall the app
brew uninstall --cask pomocore

# Remove all app data (optional)
brew uninstall --cask --zap pomocore
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
cd /Users/kim-jeongwon/Desktop/homebrew-pomocore

# Run the update script
./update.sh

# Or run Python script directly
python3 update_cask.py
```

### Testing

```bash
# Test the cask formula
brew audit --cask pomocore

# Test installation
brew install --cask pomocore --verbose --debug
```

## Repository Structure

```
homebrew-pomocore/
├── Casks/
│   └── pomocore.rb        # Homebrew Cask formula
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
3. Test with `brew audit --cask pomocore`
4. Submit a pull request

## Release Process

When releasing a new version of Pomocore:

1. **Create GitHub Release**:
   - Tag: `v1.0.0` (semantic versioning)
   - Upload `Pomocore.zip` as release asset

2. **Update Homebrew Cask** (automatically):
   - GitHub Actions will detect the new release
   - Run `update_cask.py` to update the formula
   - Commit and push changes

3. **Manual Alternative**:
   ```bash
   cd /Users/kim-jeongwon/Desktop/homebrew-pomocore
   ./update.sh
   ```

## Troubleshooting

### Permission Issues
```bash
# If Pomocore requires accessibility permissions
System Preferences → Security & Privacy → Privacy → Accessibility → Add Pomocore
```

### Cask Issues
```bash
# Reinstall if having issues
brew uninstall --cask pomocore
brew install --cask pomocore
```

### Debug Installation
```bash
brew install --cask pomocore --verbose --debug
```

## Links

- **App Repository**: https://github.com/swmaeStrong/Pawcus
- **Homebrew Tap**: https://github.com/swmaeStrong/homebrew-pomocore
- **Releases**: https://github.com/swmaeStrong/Pawcus/releases