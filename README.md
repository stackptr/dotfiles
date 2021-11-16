# dotfiles

Configurations, tooling, and tips for macOS setup.

## Configuration

### rcm

Use [`rcm`][rcm] to install dotfiles:

```
cd ~
git clone stackptr/dotfiles .dotfiles
rcup -d .dotfiles -v
```

### zsh

Dependencies:

- [pure prompt][pure]
- [zsh-syntax-highlighting][zsh-highlight]
- [zsh-history-substring-search][zsh-search]
- [zsh-histdb][zsh-histdb] (clone to `~/.zsh`)

Aliases:

- [`mosh`][mosh] extends `ssh` to support intermittent connectivity
- [`hub`][hub] extends `git` with options to interface with Github (see also [`gh`][gh])
- [`nvim`][neovim] replaces `vim`
- [`ccat`][ccat] adds syntax highlighting to `cat`

Functions:

- [`jog`][jog] prints the last 10 commands invoked in the current directory

### Terminal profile

A modified version of [terminal-snazzy][snazzy] is checked in and can be added via Terminal.app `Preferences` > `Profiles`. Make to mark as `Default` to apply to newly spawned windows.

## Tools

- [tpm][tpm] - `tmux` plugin manager
- [reattach-to-user-namespace][tmux-reattach] - integrates macOS pasteboard commands in `tmux`
- [`nvm`][nvm] - manage versions of Node
- [`gh`][gh-cli] - Github CLI
- [sudo-touchid][sudo-touchid] - enables TouchID for `sudo`

## Tips

- [Quit Confirmation for Safari][quit-safari]: Remap ⌘Q to warn before quitting using FastScripts

[rcm]: https://github.com/thoughtbot/rcm
[pure]: https://github.com/sindresorhus/pure
[zsh-highlight]: https://github.com/zsh-users/zsh-syntax-highlighting
[zsh-search]: https://github.com/zsh-users/zsh-history-substring-search
[zsh-histdb]: https://github.com/larkery/zsh-histdb
[mosh]: https://mosh.org
[hub]: https://hub.github.com
[gh-cli]: https://github.com/cli/cli
[neovim]: https://neovim.io
[ccat]: https://github.com/jingweno/ccat
[jog]: https://news.ycombinator.com/item?id=29154942&utm_term=comment
[snazzy]: https://github.com/sindresorhus/terminal-snazzy
[tpm]: https://github.com/tmux-plugins/tpm
[tmux-reattach]: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
[nvm]: https://github.com/nvm-sh/nvm
[sudo-touchid]: https://github.com/artginzburg/sudo-touchid#readme
[quit-safari]: https://daringfireball.net/2020/01/quit_confirmation_for_safari_on_macos
