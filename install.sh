#!/bin/sh
# install.sh
# Dotfiles Install script for macOS

# Create a .config, Downloads/Youtube_Downloads, bin, builds directories on $HOME
mkdir -p $HOME/.config
mkdir -p $HOME/Downloads/Youtube_Downloads
mkdir -p $HOME/bin
mkdir -p $HOME/builds
mkdir -p $HOME/development
mkdir -p $HOME/projects

# Create ZSH files
touch $HOME/.zsh_history

# Create NVIM undo file
touch $HOME/nvim_undo

# Symlink directories to $HOME with Stow
stow --target=$HOME src

# reset amethyst configuration
defaults delete com.amethyst.Amethyst.plist
