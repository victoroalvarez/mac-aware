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
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/shell-scripts:$PATH"
