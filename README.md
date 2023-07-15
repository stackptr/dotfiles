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

## Updating

The revision of `nixpkgs` is defined in `~/.nix-defexpr/nixpkgs/default.nix`
and is updated by running `nix-update-nixpkgs`.

Install packages in `env.nix` at the current revision, removing any packages
not present:

```
nix-env -irf ~/env.nix
```

## Configuration

### Terminal profile

A modified version of [terminal-snazzy][snazzy] is checked in and can be added via Terminal.app `Preferences` > `Profiles`. Make to mark as `Default` to apply to newly spawned windows.

## Tips

- [Quit Confirmation for Safari][quit-safari]: Remap ⌘Q to warn before quitting using FastScripts

## Acknowledgements

- [Using Nix on macOS][0] by Stephen Checkoway

[0]: https://checkoway.net/musings/nix/

[nix]: https://nixos.org/
[rcm]: https://github.com/thoughtbot/rcm
[snazzy]: https://github.com/sindresorhus/terminal-snazzy
[quit-safari]: https://daringfireball.net/2020/01/quit_confirmation_for_safari_on_macos
