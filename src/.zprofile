#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=~/.npm-global/bin:$PATH

# Setting PATH for Python 3.13
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:${PATH}"
export PATH
