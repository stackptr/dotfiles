let
  pkgs = import <nixpkgs> {};
  nodejs = pkgs.nodejs_20;
  yarn = pkgs.yarn.override { inherit nodejs; };
in
with pkgs; [
  awscli2
  btop
  coreutils-full
  /* temporary workaround: https://github.com/docker/compose/issues/10751 */
  docker-compose
  fd
  ffmpeg_6
  gh
  git-interactive-rebase-tool
  gnupg
  htop
  hub
  jo
  jq
  mediainfo
  mosh
  neofetch
  neovim
  nix-your-shell
  nodejs_20
  pure-prompt
  rcm
  reattach-to-user-namespace
  ripgrep
  shellcheck
  sox
  tmux
  tree
  yarn
  yt-dlp
  yq
  zsh
  zsh-history-substring-search
  zsh-syntax-highlighting
]
