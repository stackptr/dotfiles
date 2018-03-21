# dotfiles

## Dependencies

### rcm

Use [rcm](https://github.com/thoughtbot/rcm) to install dotfiles:

```
git clone stackptr/dotfiles .dotfiles
rcup -d .dotfiles -x README.md -v
```

### zsh

oh-my-zsh:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Aliases:
- `mosh` replaces `ssh`
- `hub` replaces `git`
- `nvim` replaces `vim`
- `ccat` replaces `cat`

Plugins:
- [k](https://github.com/supercrabtree/k)

### tmux

Plugin manager:

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
