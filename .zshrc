
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
# Path to your oh-my-zsh installation.
export LANG=en_US.UTF-8
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin/bash:$PATH"
export PATH="$HOME/Scripts:$PATH"
export VISUAL=nvim
export EDITOR=nvim
export NNN_OPENER=nvim
export FZF_DEFAULT_COMMAND='rg --files --hidden'
export PATH=/opt/homebrew/bin:$PATH

# change profile
profile() { echo -e "\033]50;SetProfile=$1\a" }

# Homebrew

# Disable VIM keybindings
bindkey -e
stty -ixon

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

autoload -U select-word-style
select-word-style bash

# https://unix.stackexchange.com/questions/470714/replicate-oh-my-zsh-directory-tab-completion-selection-with-arrow-keys
autoload -U compinit
compinit
zstyle ':completion:*' menu select

PROMPT='%F{yellow}%* '$PROMPT

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f ~/.functions ]; then
    source ~/.functions
fi

# this loads sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
 # add autocomplete permanently to your zsh shell
[[ /opt/homebrew/bin/kubectl ]] && source <(kubectl completion zsh)
# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

source /opt/homebrew/etc/profile.d/z.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
