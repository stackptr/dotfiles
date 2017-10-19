#!/usr/bin/env bash

### dotfiles install script
### github/stackptr

REPO=$(cd "$(dirname "$0")" && printf "%s\n" "$PWD")

ln -s $REPO/tmux ~/.tmux.conf
ln -s $REPO/zsh ~/.zshrc
