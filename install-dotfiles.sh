#!/bin/sh
# install-dotfiles
# Dotfiles install script for Linux

# Create a bin, builds & scripts directory on $HOME directory
#mkdir $HOME/scripts
mkdir -p $HOME/.config
mkdir -p $HOME/Downloads/Youtube_Downloads
mkdir -p $HOME/bin
mkdir -p $HOME/builds
mkdir -p $HOME/development

# Create ZSH files
touch $HOME/.zsh_history

# Create NVIM undo file
touch $HOME/nvimundo

# Show full path on finder
defaults write com.apple.finder _FXShowPosixPathInTile -bool true && killall Finder

# Order Finder by Directories first
defaults write com.apple.finder _FXSortFoldersFirst -bool true && killall Finder

# Symlink directories to $HOME with Stow
stow --target=$HOME src
