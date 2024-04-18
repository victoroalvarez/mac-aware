# Mac Aware
These are a collection of dotfiles and a Mouse-less Development Environment setup for Mac OS. The Mouseless Development setup uses Amethyst and SKHD. These files are managed with GNU Stow. They work for me and can serve as an example to you. Please don't use these files as they are, instead read them and adapt them to your needs.

## Faq

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

## Directories
* src - Contains dotfiles & configurations.
* docs - Contains documentation and pictures.

## Change Log
* 2024-04-18 05:18 am AST. Fork repository from shell-aware into mac-aware and remove all GNU/Linux related files and directories.

## References & Links
* [256 Colors Cheat Sheet](https://www.ditig.com/256-colors-cheat-sheet)
* [Terminal Sexy](https://terminal.sexy/)
