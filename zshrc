### zsh config (~/.zshrc)
### github/stackptr

# Include Homebrew in PATH and setup completions
PATH=/opt/homebrew/bin:$PATH
HOMEBREW_PREFIX=$(brew --prefix)
FPATH="$HOMEBREW_PREFIX/share/zsh/site-functions:${FPATH}"

# Use Pure prompt
autoload -U promptinit; promptinit
prompt pure

# History options (from oh-my-zsh)
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch arm64"
export CPATH="$HOMEBREW_PREFIX/include"
export LIBRARY_PATH="$HOMEBREW_PREFIX/lib"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


## Aliases / defaults
set_alias () {
  type $2 >/dev/null 2>&1 && alias $1=$2
}

set_alias git hub
set_alias ssh mosh
set_alias cat ccat
alias incog='unset HISTFILE'

path=(
  $HOME/.local/bin
  $HOME/Development/bin
  $HOMEBREW_PREFIX/bin
  $HOMEBREW_PREFIX/sbin
  $path
  $HOMEBREW_PREFIX/opt/openssl/bin
)

# Development
export FR_DOCKERHOST=docker.for.mac.localhost
if [ -f ~/.zshrc-dev ]; then
    source ~/.zshrc-dev
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Syntax highlighting
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# History search
source "$(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

type pyenv >/dev/null 2>&1 && eval "$(pyenv init -)"
type rbenv >/dev/null 2>&1 && eval "$(rbenv init -)"
