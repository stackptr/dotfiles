with import <nixpkgs> {}; [
  awscli2
  coreutils-full
  /* temporary workaround: https://github.com/docker/compose/issues/10751 */
  docker-compose
  fd
  gh
  hub
  jq
  mosh
  neovim
  pure-prompt
  rcm
  reattach-to-user-namespace
  ripgrep
  shellcheck
  tmux
  tree
  zsh-history-substring-search
  zsh-syntax-highlighting
]
