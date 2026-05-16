#!/bin/sh
# uninstall.sh
# Dotfiles uninstall script for macOS

# Remove Symlinks to files & directories with Stow
stow -D --target=$HOME src
