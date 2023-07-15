export LANG=en_US.UTF-8

# Setup Nix
if [[ -f '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]]; then
  source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
  export NIX_PATH="$HOME/.nix-defexpr"
fi
