# Arch Linux Upgrade Script.

# upgrade arch linux software packages
echo "----"
echo "Upgrade Arch Software Packages"
sudo pacman -Syu --disable-download-timeout

# update flatpaks
echo "----"
echo "Update Flatpaks"
flatpak update
