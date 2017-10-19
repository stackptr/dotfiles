### tmux config (~/.tmux.conf)
### github/stackptr

# C-a prefix
set -g prefix C-a

# Vim keys
setw -g mode-keys vi

# Set colors
set-option -g default-terminal "screen-256color"

# Set reload key to r
bind r source-file ~/.tmux.conf

# Mouse wheel support
set -g mouse on
bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'copy-mode -e'"

# Set the title bar
set -g set-titles on
set -g set-titles-string '#(whoami) :: #h :: #(curl ipecho.net/plain;echo)'

# Set status bar
set -g status-bg black
set -g status-fg white
set -g status-interval 5
set -g status-left-length 90
set -g status-right-length 60
set -g status-left "#[fg=Green]#(whoami)#[fg=white]::#[fg=blue]#(hostname -s)#[fg=white]::#[fg=yellow]#(curl ipecho.net/plain;echo)"
set -g status-justify left
set -g status-right '#[fg=Cyan]#S #[fg=white]%a %d %b %R'

# Source remote pbcopy/pbpaste commands
if-shell 'test "$(uname)" = "Linux"' 'source ~/.tmux-linux.conf'

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'nhdaly/tmux-better-mouse-mode'
set -g @plugin 'tmux-plugins/tmux-yank'
set-option -g default-command "reattach-to-user-namespace -l $SHELL"


# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
