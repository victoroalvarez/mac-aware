# MacAware

![Logo](docs/pictures/logo1-white.png)

Mouseless Development Environment Setup and Dotfile collection for Apple's ***macOS***. This setup uses ***Amethyst*** for tiling window management and ***SKHD*** for custom GUI keybindings. These files are managed with ***GNU Stow***. They work for me and can serve as an example to you. Please don't use these files as they are, and instead read them and adapt them to your needs.

## 1.0 How are these files managed?

To manage these files, I use Stow or GNU Stow. Stow helps me keep my Dotfiles in one directory and symlink these files to their corresponding location on my $HOME directory.

In my Install Script, I first create directories where the files will be stored. Then I symlink the files with Stow.

After creating the required files and directories on $HOME, my Install Script runs:

```sh
stow --target=$HOME src
```

This command takes everything inside src/ directory and symlinks it to its corresponding location on my user's $HOME directory.

### 1.1 How to install this setup?

First consider creating a new repository from this template. Remove the existing UnLicensed License if you wish and make these files your own.

From the project's root directory, type this into your shell to run the install script:

```sh
./install.sh
```

This Install Script first creates the required directories in your $HOME directory and then symlinks the files located within the src/ directory into their corresponding place in your $HOME.

### 1.1 How to uninstall this setup?

From the project's root directory, type this into your shell to run the uninstall script:

```sh
./uninstall.sh
```

This Uninstall Script removes all the created symlinks but does leave behind the directories created by the Install Script.

### 1.2 How and Where do I Create New Files?

You create new files within the src/ directory and then run the Install Script once again.

You may also create new files within an existing Sym-linked directory without creating it first within the src/ directory.

### 1.3 Which Shell and Terminal do you use?

ZSH with Tmux and the Kitty terminal emulator.

## 2.0 Configuration

### 2.1 Tmux Key Bindings

Tmux commands get triggered first by pressing the "prefix key" and then a "command key".

My prefix key is Ctrl+b and my two most important command keys are "-" and "|" for horizontal Division and vertical division correspondingly.

| Prefix Key | Command Key | What it does |
| :---- | :---- | :---- |
| Ctrl+b | \- | Horizontal Division |
| Ctrl+b | \| | Vertical Division |
| Ctrl+b | r | Reload Tmux Configuration |

### 2.2 Conventions

* $HOME denotes the /Users/your-user/ directory on a system.

### 2.3 ZSH Configuration Files

This table lists ZSH files and what they contain.

| File | Description |
| :--- | :---------- |
| .zprofile | Configures the PATH and Editor value. |
| .zshrc | Sets keybindings, prompt and history. |

## 3.0 Directories

This is table lists the project sub-directories and what they contain.

| Directory       | Description                                                                |
| :-------------- | :------------------------------------------------------------------------- |
| docs/           | Contains documentation and pictures.                                       |
| src/            | Contains dotfiles and configurations.                                      |
| setup-scripts/  | Contains other setup scripts apart from the Install and Uninstall scripts. |

## 4.0 Links

* [256 Colors Cheat Sheet](https://www.ditig.com/256-colors-cheat-sheet)  
* [A Quick and Easy Guide to tmux](https://hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)  
* [How Do Zsh Configuration Files Work?](https://www.freecodecamp.org/news/how-do-zsh-configuration-files-work/)
* [Josean Martinez \- How I Use Tmux With Neovim For An Awesome Dev Workflow On My Mac](https://www.youtube.com/watch?v=U-omALWIBos)  
* [Tech Craft \- Boost your macOS productivity with Amethyst | Tiling Window Mnager](https://www.youtube.com/watch?v=7Z9-Ry4yGNc)  
* [Terminal Sexy](https://terminal.sexy/)
