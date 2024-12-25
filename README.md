# Mac-Aware
**Mac-Aware** is a collection of Dotfiles and a Mouse-less Development Environment setup for **macOS**. This setup uses **Amethyst** for tiling window management and **SKHD** for custom GUI keybindings. These files are managed with **GNU Stow**. They work for me and can serve as an example to you. Please don't use these files as they are; instead, read them and adapt them to your needs.

## FAQ

### How are these files managed?
To manage these files, I use GNU Stow. Stow helps me keep my Dotfiles in one directory and symlink these files to their corresponding location on my $HOME directory.
I first create directories where the files will be stored. Then I symlink the files with Stow.

For example, after a new OS installation, to symlink files located on the repository's src/ directory to the $HOME/ directory of my machine, I go to the root of this repository and type:

```bash
stow --target=$HOME src
```

This command takes everything inside src/ directory and symlinks it to their corresponding locations on my user's $HOME directory.

### How to install this setup?
From the project's root directory, type into your shell:

```bash
stow --target=$HOME src
```

### Which Shell and Terminal do you use?
ZSH with Tmux and the Kitty terminal emulator.

## Conventions
* $HOME denotes the /home/myuser/ directory on a system.

## Directories
* src - Contains dotfiles and configurations.
* docs - Contains documentation and pictures.

## Change Log
* 2024-12-19 11:02 am AST. Improve ReadMe file.
* 2024-11-21 10:21 pm AST. Setup a basic Tmux configuration by following Josean Martinez example and the Arch Linux Wiki. Josean's setup demonstrates how to set up custom keybindings for reload and splitting and further customizations.
* 2024-07-02 07:59 pm AST. Improve README file.
* 2024-04-18 05:18 am AST. Fork the repository from shell-aware into mac-aware and remove all GNU/Linux related files and directories.

## Links
* [256 Colors Cheat Sheet](https://www.ditig.com/256-colors-cheat-sheet)
* [How I Use Tmux With Neovim For An Awesome Dev Workflow On My Mac](https://www.youtube.com/watch?v=U-omALWIBos) - Josean Martinez (Video)
* [Terminal Sexy](https://terminal.sexy/)