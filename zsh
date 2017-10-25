### zsh config (~/.zshrc)
### github/stackptr

## oh-my-zsh configuration

export ZSH=/Users/corey/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git yarn osx zsh-nvm zsh-better-npm-completion)
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
alias login-ecr=$(AWS_PROFILE=dev aws ecr get-login --registry-ids 853032795538 --no-include-email)

export PATH="/usr/local/sbin:$PATH"

# Android Studio
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/latest/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Hacky nvm default. https://github.com/creationix/nvm/issues/860
export PATH=/Users/corey/.nvm/versions/node/v6.9.1/bin/:$PATH
