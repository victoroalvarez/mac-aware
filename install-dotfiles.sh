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

# Install Debian software packages
#sudo xargs apt install -y < ./src/.packages-lists/debian12-packages.txt

# setup tlp
#sudo systemctl enable tlp.service
#sudo systemctl mask systemd-rfkill.service
#sudo systemctl mask systemd-rfkill.socket
#sudo systemctl enable NetworkManager-dispatcher.service
