### zsh config (~/.zshrc)
### github/stackptr

any-nix-shell zsh | source /dev/stdin

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

FPATH="$HOME/.nix-profile/share/zsh/site-functions:${FPATH}"

# Use Pure prompt outside of Warp
if [ -z "$WARP_IS_LOCAL_SHELL_SESSION" ]; then
  autoload -U promptinit; promptinit
  prompt pure
fi

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

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


## Aliases / defaults
set_alias () {
  type $2 >/dev/null 2>&1 && alias $1=$2
}

set_alias git hub
set_alias ssh mosh

path=(
  $HOME/.local/bin
  $HOME/Development/bin
  $HOME/.ghcup/bin
  $path
)

# Work-specific configurations
if [ -f ~/.zshrc-work ]; then
    source ~/.zshrc-work
fi

# Syntax highlighting
source "$HOME/.nix-profile/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# History search
source "$HOME/.nix-profile/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh" }}\x9c'
