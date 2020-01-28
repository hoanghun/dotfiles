#/usr/bin/env bash
if type stow 2>/dev/null; then
    stow -v -R -t ~ .
    ln -s .vim/coc-settings.json ~/.config/nvim/coc-settings.json
fi

