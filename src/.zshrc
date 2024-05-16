# ~/.zshrc
# These configurations work with Terminator (terminal emulator) & Linux.

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

NEWLINE=$'\n'
#PROMPT="%K{blue}%n@%m%k %B%F{cyan}%(4~|...|)%3~%F{white} ${NEWLINE}%# %b%f%k"
PROMPT="%n@%m ${NEWLINE}%# "

# import aliases
#alias ls='ls --color=auto'
source $HOME/.alias/alias
source $HOME/youtubeplaylists.env

# Created by `pipx` on 2024-03-16 02:35:51
export PATH="$PATH:/Users/voa/shell-aware/src/.local/bin"

# Created by `pipx` on 2024-05-04 19:03:28
export PATH="$PATH:/Users/voa/mac-aware/src/.local/bin"
