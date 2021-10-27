# dotfiles

## Dependencies

### rcm

Use [rcm](https://github.com/thoughtbot/rcm) to install dotfiles:

```
git clone stackptr/dotfiles .dotfiles
rcup -d .dotfiles -x README.md -v
```

### zsh

Dependencies:
- [pure prompt](https://github.com/sindresorhus/pure)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)

Aliases:
- `mosh` replaces `ssh`
- `hub` replaces `git`
- `nvim` replaces `vim`
- `ccat` replaces `cat`
- `tldr` replaces `man`

### Recommended tools

- [tpm](https://github.com/tmux-plugins/tpm) - Tmux plugin manager
- [nvm](https://github.com/nvm-sh/nvm) - manage versions of Node
- [gh](https://github.com/cli/cli) - Github CLI
