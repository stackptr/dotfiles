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

Dependencies:
- [pure prompt](https://github.com/sindresorhus/pure)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)

Aliases:
- `mosh` replaces `ssh`
- `hub` replaces `git`
- `nvim` replaces `vim`
- `ccat` replaces `cat`

### tmux

To setup tmux with [tpm](https://github.com/tmux-plugins/tpm):

```sh
# Setup TPM and start tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux

# Fetch and source plugins
$TMUX_PLUGIN_MANAGER_PATH/tpm/scripts/install_plugins.sh
```
