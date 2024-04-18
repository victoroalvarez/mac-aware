# Shell Aware
These are a collection of dotfiles and a Mouse-less Development Environment setup for GNU/Linux & Mac OS. The Mouseless Development setup uses i3WM and Sway for Arch Linux. On Mac OS it uses Amethyst and SKHD. These files are managed with GNU Stow. They work for me and can serve as an example to you. Please don't use these files as they are, instead read them and adapt them to your needs.

## Faq
### What Linux distros do you use?
I mostly use Arch Linux, but I also use Debian or Fedora for servers. These configurations should work with minimal modification on almost any contemporary Linux distribution.

### How are these files managed?
To manage these files I use GNU Stow. Stow helps me keep my dotfiles on one directory and symlink these files to their corresponding location on my $HOME directory.
I first create directories where the files will be stored. Then I symlink the files with Stow.

For example, after a new OS installation, to symlink files located on the repository's src/ directory to the $HOME/ directory of my machine, I go to the root of this repository and type:

```bash
stow --target=$HOME src
```

This command takes everything inside src/ directory and symlinks it to their corresponding locations on the my user's $HOME directory.

### How to install these setup?
From the project's root directory, type into your shell:

```bash
stow --target=$HOME src
```

### Which shell do you use?
I use Bash. I'm also looking into ZShell and TCSH.

## Conventions
* $HOME denotes the /home/myuser/ directory on a system.

## Install Packages List on Debian
Theres a list of required packages within the packages list directory. These packages are installed on Debian with the following command.

```
xargs apt install -y < file-name.txt
```

## Directories
* src - Contains dotfiles & configurations.
* docs - Contains documentation and pictures.

## Add 'acentos y tildes' from the spanish language on Debian
This can be achieve by running:

```
dpkg-reconfigure keyboard-configuration
```

In this console menu I choose US English keyboard. Thats the same English Qwerty Keyboard configuration, but once set it makes it really easy to input tildes.

## Notes
* A Clipboard manager program like Parcellite, its needed to improve functionality.
* Audio drivers & alsa should be configured properly for laptops. These configuration depends on cpu and device manufacturer. I use an HP laptop with an Intel CPU and Intel audio.
* Capslock can be swaped with the CTRL key with this command runned as user. localectl set-x11-keymap "" "" "" "ctrl:swapcaps". All modifications can be seen at /usr/share/X11/xkb/rules/base.lst.
* Debian Sid includes the LTS version of NodeJS.
* Fedora's @i3 package group includes lightdm by default.
* I use firefox instead of the firefox-esr version available by default on Debian Stable. This recent version is named Firefox Stable and its available for many Unix-like systems through Mozilla's website. If you wish to use firefox-esr, rename all firefox references on i3 confile file and aliases with firefox-esr.
* My current hardware has Bluetooth compability problems, & Bluetooth devices must be regularly removed and re-paired as new devices. Your hardware may be different.
* Some programs can be run at login by placing them on your .xinitrc instead of using a window-manager's configuration file. Unclutter is an example of such program. This way you would be able to run it on any window-manager.

## Change Log
* 2024-04-07 05:54 pm AST. Add support for Mac OS with Amethyst and SKHD.
* 2023-12-18 09:19 pm AST. Update ReadMe & add comments to alias file.
* 2023-12-06 10:38 pm AST. Create laptop branch.
* 2023-09-17 10:17 am AST. Add Sway and Waybar configuration following Diego Sandoval's example.
* 2023-09-15 09:09 pm AST. Refactor the project's directory structure.
* 2023-09-08 09:38 am AST. Add default Sway config file.
* 2023-09-03 06:54 am AST. Refactor and reorganize i3 configuration and aliases.
* 2023-08-29 10:15 pm AST. Test Sway as a replacement for i3wm.
* 2023-10-11 11:52 am AST. Add motd alias. It displays a message located at the file '/etc/motd'.
* 2023-01-09 07:53 am AST. Add gitignore file. Add symlink to private aliases file.
* 2023-01-04 09:19 pm AST. Add zsh & user configuration files.
* 2022-12-25 09:54 am AST. Add more references & links related to window managers, file manager & polkit auth agents setup from the Arch Linux Wiki.
* 2022-12-24 04:24 pm AST. Switch Linux Distribution from Debian Linux 11 to Arch Linux. Debian Stable Bullseye & my current hardware are not as compatible as previous hardware. Arch Linux its an alternative which allows me to work in other projects while I test improvements on Debian Stable. I will continue to test this setup on Debian Stable & Sid.
* 2022-12-20 10:09 am AST. Remove firefox-esr references from i3 config file. I now download and install Firefox from Mozilla's website. This is a tar file which must be installes into the /opt or you home directory. Once properly configured, you may run it with i3-keybindings with the name 'firefox'.
* 2022-12-16 11:24 am AST. Add script to change volume and visualize change with [dunst](https://wiki.archlinux.org/title/Dunst) notifications.
* 2022-12-14 07:25 am AST. Rename packages list files. Edit & improve README file.
* 2022-12-14 12:18 pm AST. Organize current code and delete old code from i3 config file.
* 2022-12-13 11:59 pm AST. Delete fedora/ directory from repository.
* 2022-10-27 06:57 pm AST. Update i3 config to hide i3bar by default. Bar its shown when mod key its pressed.
* 2022-09-07 12:41 pm AST. Update ReadMe file with instructions on how to install packages list on debian.
* 2022-07-18 07:13 am AST. Refactor i3 config files & replace bin directory. Move scripts from bin to .scripts.
* 2022-05-05 11:47 pm AST. Add xinitrc file.
* 2022-05-05 11:41 pm AST. Modify README file. Modify Xresources file. Add basic NeoVim configuration.
* 2021-11-30 09:45 pm AST. Change Mod key back to Windows key. Modify i3 configuration and test successfully with Fedora Linux 35 i3wm Spin,
* 2021-11-25 00:01 am AST. Change Mod key to Alt and test the system with it.
* 2021-05-10 08:55 pm AST. Create Change Log to document edits, additions and removals.
* 2021-05-25 10:48 pm AST. Create Development branch and first commit.
* 2021-06-01 11:42 pm AST. Add Conky to display system info on desktop.
* 2021-07-06 09:27 pm AST. Add Alt+Tab keybinding to switch between workspaces.

## References & Links
* [256 Colors Cheat Sheet](https://www.ditig.com/256-colors-cheat-sheet)
* [Dunst - Arch Wiki](https://wiki.archlinux.org/title/Dunst) - Heres information regarding dunst and how to use it to display notifications and visualize volume changei through notifications onscreen.
* [File Manager Functionality - Arch Wiki](https://wiki.archlinux.org/title/File_manager_functionality)
* [How to Change CPU Clock Speeds-Frequencies in Linux Using cpupower](https://www.reddit.com/r/IntelligentGaming2020/comments/12700uw/how_to_change_cpu_clock_speeds_frequencies_in/)
* [Polkit - Arch Wiki](https://wiki.archlinux.org/title/Polkit)
* [Restart all services in Linux without rebooting kernel? - serverfault](https://serverfault.com/questions/963834/restart-all-services-in-linux-without-rebooting-kernel)
* [Roll your own Linux Desktop Using Sway](https://www.dwarmstrong.org/sway/)
* [Sway - Debian Wiki](https://wiki.debian.org/sway)
* [Terminal Sexy](https://terminal.sexy/)
* [Window Manager - Arch Wiki](https://wiki.archlinux.org/title/window_manager)
