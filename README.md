# MacAware
Mouseless Development Environment Setup and Dotfile collection for Apple's **macOS**. This setup uses **Amethyst** for tiling window management and **SKHD** for custom GUI keybindings. These files are managed with **GNU Stow**. They work for me and can serve as an example to you. Please don't use these files as they are, and instead read them and adapt them to your needs.

## 1.0 How are these files managed?
To manage these files, I use Stow or GNU Stow. Stow helps me keep my Dotfiles in one directory and symlink these files to their corresponding location on my $HOME directory.

In my Install Script, I first create directories where the files will be stored. Then I symlink the files with Stow.

After creating the required files and directories on $HOME, my Install Script runs:

```bash
stow --target=$HOME src
```

This command takes everything inside src/ directory and symlinks it to its corresponding location on my user's $HOME directory.

### 1.1 How to install this setup?
First consider creating a new repository from this template. Remove the existing UnLicensed License if you wish and make these files your own.

From the project's root directory, type this into your shell to run the install script:

```bash
./install.sh
```
This Install Script first creates the required directories in your $HOME directory and then symlinks the files located within the src/ directory into their corresponding place in your $HOME.

### 1.1 How to uninstall this setup?
From the project's root directory, type this into your shell to run the uninstall script:

```bash
./uninstall.sh
```
This Uninstall Script removes all the created symlinks but does leave behind the directories created by the Install Script.

### 1.2 How and Where do I Create New Files?
You create new files within the src/ directory and then run the Install Script once again.

You may also create new files within an exising Sym-linked directory without creating it first within the src/ directory.

### 1.3 Which Shell and Terminal do you use?
ZSH with Tmux and the Kitty terminal emulator.

## 2.0 Configuration
### 2.1 Tmux Key Bindings
Tmux commands get triggered first by pressing the "prefix key" and then a "command key".

My prefix key is Ctrl+b and my two most important command keys are "-" and "|" for horizontal Division and vertical division correspondingly.

| Prefix Key | Command Key | What it does              |
| ---------- | ----------- | ------------------------- |
| Ctrl+b     | -           | Horizontal Division       |
| Ctrl+b     | \|          | Vertical Division         |
| Ctrl+b     | r           | Reload Tmux Configuration |

### 2.2 Conventions
* $HOME denotes the /Users/your-user/ directory on a system.

## 4.0 Directories
This is a list of the project sub-directories.
* docs - Contains documentation and pictures.
* src - Contains dotfiles and configurations.
* setup-scripts - Contains other setup scripts apart from the Install and Uninstall scripts.

### 4.1 Directory Tree
This is a directory tree that details the project file structure.
```text
mac-aware/
├── docs/
├── setup-scripts/
├── src/
├-- install.sh
├-- uninstall.sh
└-- README.md
```

## 5.0 Change Log
* 2024-04-18 05:18 am AST. Fork the repository from shell-aware into mac-aware and remove all GNU/Linux related files and directories.
* 2024-07-02 07:59 pm AST. Improve README file.
* 2024-11-21 10:21 pm AST. Setup a basic Tmux configuration by following Josean Martinez example and the Arch Linux Wiki. Josean's setup demonstrates how to set up custom keybindings for reload and splitting and further customizations.
* 2024-12-19 11:02 am AST. Improve ReadMe file.
* 2026-01-09 07:47 pm AST. Add Amethyst configuration file on home directory. Edit Install Script to clear current Amethyst configuration and load the configuration file.
* 2026-05-16 02:11 pm AST. Improve README file by documenting the Tmux configuration and prune aliases and ZSH configuration files.

## 6.0 Links
* [256 Colors Cheat Sheet](https://www.ditig.com/256-colors-cheat-sheet)
* [A Quick and Easy Guide to tmux](https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)
* [Josean Martinez - How I Use Tmux With Neovim For An Awesome Dev Workflow On My Mac](https://www.youtube.com/watch?v=U-omALWIBos)
* [Tech Craft - Boost your macOS productivity with Amethyst | Tiling Window Mnager](https://www.youtube.com/watch?v=7Z9-Ry4yGNc)
* [Terminal Sexy](https://terminal.sexy/)