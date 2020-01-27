# Path to your oh-my-zsh installation.
export LANG=en_US.UTF-8
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin/bash:$PATH"
export PATH="$HOME/.cargo/bin:$HOME/.scripts/:$PATH"
export VISUAL=nvim
export EDITOR=nvim
export FZF_DEFAULT_COMMAND='rg --files --hidden'

# change profile
profile() { echo -e "\033]50;SetProfile=$1\a" }

# Homebrew
alias h="history"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias vim=nvim
alias r=ranger
alias lg=lazygit
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'
alias ls='ls -l'
alias gitgraph='git log --all --decorate --oneline --graph'

# Disable VIM keybindings
bindkey -e
stty -ixon

# Prompt configuration
# Must be after sourcing oh my zsh
autoload -U promptinit; promptinit
prompt pure
prompt_newline='%666v'
PROMPT=" $PROMPT"

# For completeness, start by closing the original %F{magenta} with %f.
# The final %f will be added by the PROMPT definition.
PURE_PROMPT_SYMBOL='%f%F{red}#%f %F{magenta}❯'

# https://unix.stackexchange.com/questions/470714/replicate-oh-my-zsh-directory-tab-completion-selection-with-arrow-keys
autoload -U compinit
compinit
zstyle ':completion:*' menu select

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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/hungig/.sdkman"
[[ -s "/Users/hungig/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/hungig/.sdkman/bin/sdkman-init.sh"


# RUST 
# Mac
export RUST_SRC_PATH=${HOME}/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src