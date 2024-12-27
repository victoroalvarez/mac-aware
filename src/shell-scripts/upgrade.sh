#!/bin/bash
# Upgrade PKGSRC & Brew for macOS

# Upgrade PKGSRC
echo 'Upgrade PKGSRC:';
sudo pkgin update && sudo pkgin upgrade;

# Upgrade Brew
echo ''
echo 'Upgrade Brew:';
brew update && brew upgrade;

# Upgrade Mac App Store through MAS CLI tool
echo ''
echo "Upgrade Mac App Store Apps through MAS CLI tool:";
mas upgrade;
