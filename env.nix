with import <nixpkgs> {}; [
  any-nix-shell
  awscli2
  btop
  coreutils-full
  /* temporary workaround: https://github.com/docker/compose/issues/10751 */
  docker-compose
  fd
  ffmpeg_6
  gh
  htop
  hub
  jo
  jq
  mediainfo
  mosh
  neofetch
  neovim
  pure-prompt
  rcm
  reattach-to-user-namespace
  ripgrep
  shellcheck
  sox
  tmux
  tree
  yt-dlp
  yq
  zsh-history-substring-search
  zsh-syntax-highlighting
]
