# ~/.zprofile

[[ -f ~/.zshrc ]] && . ~/.zshrc

# Editor
export EDITOR='vim' # set nvim as editor
export VISUAL='vim'

eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

# Setting PATH for Python 3.13
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:${PATH}"
export PATH

# Setting PATH for Python 3.14
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.14/bin:${PATH}"
export PATH

# Import alias file
if [ -f "$HOME/.alias/alias" ]; then
	source "$HOME/.alias/alias"
fi

# Import ~/bin directory
if [ -d "$HOME/bin" ]; then
	export PATH="$HOME/bin:$PATH"	# add ~/bin to path. Where personal binaries are stored
fi

# Import ~/shellscripts directory
if [ -d "$HOME/shellscripts" ]; then
	export PATH="$HOME/shellscripts:$PATH" # add shell scripts to path
fi

# Import Software
# Rust
source "$HOME/.cargo/env"

# Import PKGSRC
eval $(/usr/libexec/path_helper)

# Import NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Import HERD and PHP. Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/voa/Library/Application Support/Herd/config/php/84/"
export PATH="/Users/voa/Library/Application Support/Herd/bin/":$PATH