# If zsh is launched as a login shell, reset PATH to sensible default:
[[ -o login ]] && export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin'
