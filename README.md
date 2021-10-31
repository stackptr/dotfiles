# dotfiles

Configurations and tooling for macOS setup.

## Configuration

### rcm

Use [rcm][rcm] to install dotfiles:

```
cd ~
git clone stackptr/dotfiles .dotfiles
rcup -d .dotfiles -x README.md -v
```

### zsh

Dependencies:
- [pure prompt][pure]
- [zsh-syntax-highlighting][zsh-highlight]
- [zsh-history-substring-search][zsh-search]

Aliases:
- [`mosh`][mosh] extends `ssh` to support intermittent connectivity
- [`hub`][hub] extends `git` with options to interface with Github (see also [gh][gh])
- [`nvim`][neovim] replaces `vim` 
- [`ccat`][ccat] adds syntax highlighting to `cat`

## Tools

- [tpm][tpm] - Tmux plugin manager
- [reattach-to-user-namespace][tmux-reattach] - Supports macOS pasteboard commands
- [nvm][nvm] - manage versions of Node
- [gh][gh-cli] - Github CLI

[rcm]: https://github.com/thoughtbot/rcm
[pure]: https://github.com/sindresorhus/pure
[zsh-highlight]: https://github.com/zsh-users/zsh-syntax-highlighting
[zsh-search]: https://github.com/zsh-users/zsh-history-substring-search
[mosh]: https://mosh.org
[hub]: https://hub.github.com
[gh-cli]: https://github.com/cli/cli
[neovim]: https://neovim.io
[ccat]: https://github.com/jingweno/ccat
[tpm]: https://github.com/tmux-plugins/tpm
[tmux-reattach]: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
[nvm]: https://github.com/nvm-sh/nvm
