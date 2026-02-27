#!/bin/sh
# install-dotfiles
# Dotfiles uninstall script for macOS

# Symlink directories to $HOME with Stow
stow -D --target=$HOME src
