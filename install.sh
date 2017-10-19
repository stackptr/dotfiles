#!/usr/bin/env bash

### dotfiles install script
### github/stackptr

REPO=$(cd "$(dirname "$0")" && printf "%s\n" "$PWD")

ln -snf $REPO/zsh ~/.zshrc
ln -snf $REPO/tmux ~/.tmux.conf
ln -snf $REPO/tmux-linux ~/.tmux-linux.conf
