#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=~/.npm-global/bin:$PATH
