# ~/.zshrc
# These configurations work with Terminator (terminal emulator) & Linux.

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

autoload -U compinit; compinit

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

NEWLINE=$'\n'
#PROMPT="%K{blue}%n@%m%k %B%F{cyan}%(4~|...|)%3~%F{white} ${NEWLINE}%# %b%f%k"
PROMPT="%n@%m %~${NEWLINE}%# "
HISTFILE=$HOME/.zsh_history

# import aliases
#source $HOME/.alias/alias
if [ -f $HOME/.alias/alias ]; then
	source $HOME/.alias/alias
fi

# Herd injected NVM configuration
export NVM_DIR="/Users/voa/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/voa/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/voa/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/voa/Library/Application Support/Herd/config/php/84/"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

