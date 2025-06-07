#!/bin/sh
# install-dotfiles
# Dotfiles install script for macOS

# Create a bin, builds & scripts directory on $HOME directory
mkdir -p $HOME/.config
mkdir -p $HOME/Downloads/Youtube_Downloads
mkdir -p $HOME/bin
mkdir -p $HOME/builds
mkdir -p $HOME/development
mkdir -p $HOME/projects
mkdir -p $HOME/projects-python

# Create ZSH files
touch $HOME/.zsh_history

# Create NVIM undo file
touch $HOME/nvim_undo

# Symlink directories to $HOME with Stow
stow --target=$HOME src
