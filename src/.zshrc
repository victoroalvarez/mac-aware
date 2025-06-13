# ~/.zshrc
# These configurations work with Terminator (terminal emulator) & Linux.

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

export EDITOR='nvim' # set nvim as editor
export VISUAL='nvim'


autoload -Uz compinit; compinit # autocompletion

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

NEWLINE=$'\n' # newline in a variable
#PROMPT="%K{blue}%n@%m%k %B%F{cyan}%(4~|...|)%3~%F{white} ${NEWLINE}%# %b%f%k"
PROMPT="%F{yellow}%n%f%F{yellow}@%f%F{yellow}%m%f:%F{blue}%~%f${NEWLINE}%F{blue}%#%f "

# setup history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY # share history in every terminal session

# import aliases
if [ -f $HOME/.alias/alias ]; then
	source $HOME/.alias/alias
fi

# import software

# import PKGSRC
eval $(/usr/libexec/path_helper)

# import NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="$HOME/bin:$PATH"           # add ~/bin to path. Where personal binaries are stored
export PATH="$HOME/shell-scripts:$PATH" # add shell scripts to path

# import HERD and PHP
# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/voa/Library/Application Support/Herd/config/php/84/"

# Herd injected PHP binary.
export PATH="/Users/voa/Library/Application Support/Herd/bin/":$PATH
