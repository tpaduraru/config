#!/bin/usr/env fish
# Configures a default tmux session

# Only start tmux if we're on a real terminal and not already inside tmux
if status is-interactive; and not set -q TMUX 
    tmux has-session -t $hostname ^/dev/null
    or tmux new-session -s $hostname
end

