# Path to your oh-my-zsh installation.
export LANG=en_US.UTF-8
export ZSH=/Users/hungig/.oh-my-zsh
export PATH="/usr/local/sbin:$PATH"

# Changing dumps directory
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION

plugins=(
  git
  brew
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Prompt configuration
# Must be after sourcing oh my zsh
autoload -U promptinit; promptinit
prompt pure
prompt_newline='%666v'
PROMPT=" $PROMPT"

# For completeness, start by closing the original %F{magenta} with %f.
# The final %f will be added by the PROMPT definition.
PURE_PROMPT_SYMBOL='%f%F{red}#%f %F{magenta}❯'








# change profile
profile() { echo -e "\033]50;SetProfile=$1\a" }

# Homebrew
alias python='python3'
alias h="history"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias r=ranger
alias vim=nvim
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'

# This line is mandatory for Z command to work
. /usr/local/etc/profile.d/z.sh
