if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi
export LANG="en_EN.UTF-8"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
ctags=/usr/local/bin/ctags
export HISTSIZE=9999999999
export HISTFILESIZE=999999999
# bash_profile
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$"
alias ls='ls -lGFh --color=auto'
alias python='python3'
alias ll='ls -l'
alias la='ls -al'


function title {
    echo -ne "\033];"$*"\007"
}

export LANG="en_EN.UTF-8"
# Setting PATH for Python 3.6

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PATH="$HOME/.cargo/bin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export CLICOLOR=YES
#export LSCOLORS=ExFxBxDxCxegedabagacEx
MANPATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman:$MANPATH"

export PS1="\[\e[31m\]\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\w\\$ "


# disable highlight color in terminal background
LS_COLORS=$LS_COLORS:'ow=0;31:tw=1;34:'
export LS_COLORS

