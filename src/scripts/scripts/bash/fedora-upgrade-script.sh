# Fedora Linux Upgrade Script.

# upgrade Fedora Linux software packages
echo "Upgrade Fedora Software Packages"
sudo dnf update

# update flatpaks
echo "Update Flatpaks"
flatpak update

echo "Update YT-DLP"
sudo yt-dlp -U
