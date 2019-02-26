### zsh config (~/.zshrc)
### github/stackptr

## oh-my-zsh configuration

export ZSH=/Users/corey/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git yarn osx zsh-nvm zsh-better-npm-completion k)
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


## Aliases / defaults

alias git=hub
alias ssh=mosh
alias vim=nvim
alias cat=ccat
alias login-ecr='`AWS_PROFILE=freckle aws ecr get-login --registry-ids 853032795538 --no-include-email`'
alias man=tldr
alias incog='unset HISTFILE'

path=(
  $HOME/.local/bin
  $HOME/Development/bin
  /usr/local/sbin
  $path
)

# Development
export FR_DOCKERHOST=docker.for.mac.localhost

# nvm initialization
# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(whence -w __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi
# Source: creationix/nvm#1277 @Stanzilla

### Bashhub.com Installation
if [ -f ~/.bashhub/bashhub.zsh ]; then
    source ~/.bashhub/bashhub.zsh
fi

source ~/.zsh-dev
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

