#/usr/bin/env bash
if type stow 2>/dev/null; then
    stow -v -R -t ~ .
fi

