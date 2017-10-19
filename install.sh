#!/usr/bin/env bash

### dotfiles install script
### github/stackptr

REPO=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -s $REPO/tmux ~/.tmux.conf
ln -s $REPO/zsh ~/.zshrc
