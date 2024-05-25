#!/bin/sh
# install-dotfiles
# Dotfiles install script for Linux

# Create a /bin & /builds directory on $HOME directory
mkdir $HOME/bin
mkdir $HOME/builds
mkdir $HOME/scripts

# Create zsh files
touch $HOME/.zsh_history
touch $HOME/.zhistory

# Symlink directories to $HOME
stow --target=$HOME src
