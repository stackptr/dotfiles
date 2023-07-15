# dotfiles

## Bootstrapping

Packages are declared and installed using [Nix][nix]. Install it:

```
sh <(curl -L https://nixos.org/nix/install)
```

Install [`rcm`][rcm] after opening a new shell session:

```
nix-env -iA rcm
```

Clone this repo and install dotfiles:

```
cd ~
git clone stackptr/dotfiles .dotfiles
rcup -d .dotfiles -v
```

Install all dependencies in `env.nix`:

```
nix-env -irf ~/env.nix
```

[nix]: https://nixos.org/

## Updating

The revision of `nixpkgs` is defined in `~/.nix-defexpr/nixpkgs/default.nix`
and is updated by running `nix-update-nixpkgs`.

Update packages in `env.nix` at the current revision:

```
nix-env -irf ~/env.nix
```

The `--remove-all` | `-r` flag removes any package not present in `env.nix`.

## Configuration

### Terminal profile

A modified version of [terminal-snazzy][snazzy] is checked in and can be added via Terminal.app `Preferences` > `Profiles`. Make to mark as `Default` to apply to newly spawned windows.

## Tools

- [reattach-to-user-namespace][tmux-reattach] - integrates macOS pasteboard commands in `tmux`
- [`gh`][gh-cli] - Github CLI

## Tips

- [Quit Confirmation for Safari][quit-safari]: Remap ⌘Q to warn before quitting using FastScripts

[rcm]: https://github.com/thoughtbot/rcm
[pure]: https://github.com/sindresorhus/pure
[zsh-highlight]: https://github.com/zsh-users/zsh-syntax-highlighting
[zsh-search]: https://github.com/zsh-users/zsh-history-substring-search
[mosh]: https://mosh.org
[hub]: https://hub.github.com
[gh-cli]: https://github.com/cli/cli
[neovim]: https://neovim.io
[snazzy]: https://github.com/sindresorhus/terminal-snazzy
[tmux-reattach]: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
[quit-safari]: https://daringfireball.net/2020/01/quit_confirmation_for_safari_on_macos
