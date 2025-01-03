# ~/.zshrc
# These configurations work with Terminator (terminal emulator) & Linux.

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

export EDITOR='nvim'
export VISUAL='nvim'


autoload -Uz compinit; compinit # autocompletion

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

NEWLINE=$'\n'
#PROMPT="%K{blue}%n@%m%k %B%F{cyan}%(4~|...|)%3~%F{white} ${NEWLINE}%# %b%f%k"
PROMPT="%F{yellow}%n%f%F{yellow}@%f%F{yellow}%m%f:%F{blue}%~%f${NEWLINE}%F{blue}%#%f "

# setup history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY # share history in every terminal session

# import aliases
#source $HOME/.alias/alias
if [ -f $HOME/.alias/alias ]; then
	source $HOME/.alias/alias
fi

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/shell-scripts:$PATH"
#export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.3.6


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/voa/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/voa/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/voa/Library/Application Support/Herd/config/php/84/"
