# ~/.zshrc
autoload -Uz compinit; compinit # autocompletion

# Keybindings
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

NEWLINE=$'\n' # newline in a variable
#PROMPT="%K{blue}%n@%m%k %B%F{cyan}%(4~|...|)%3~%F{white} ${NEWLINE}%# %b%f%k"
PROMPT="%F{yellow}%n%f%F{yellow}@%f%F{yellow}%m%f:%F{blue}%~%f${NEWLINE}%F{blue}%#%f "

# Setup history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY # share history in every terminal session# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/voa/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
