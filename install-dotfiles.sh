#!/bin/sh
# install-dotfiles
# Dotfiles install script for Linux

# Create a bin, builds & scripts directory on $HOME directory
mkdir $HOME/bin
mkdir $HOME/builds
mkdir $HOME/scripts

# Create ZSH files
touch $HOME/.zsh_history

# Symlink directories to $HOME with Stow
stow --target=$HOME src
