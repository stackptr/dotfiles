#!/usr/bin/env bash

### dotfiles install script
### github/stackptr

REPO=$(dirname $0)

ln -s $REPO/.zshrc ~/.zshrc
