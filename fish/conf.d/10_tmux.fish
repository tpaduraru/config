#!/usr/bin/env fish
# Configures a default tmux session

switch $hostname
    case edna.paduraru.net
        set sesh edna
    case hailey.paduraru.net
        set sesh hailey
    case '*'
        set sesh $hostname
end

# Only start tmux if we're on a real terminal and not already inside tmux
if status is-interactive; and not set -q TMUX 
    tmux has-session -t $sesh 2>/dev/null
    or tmux new-session -d -s $sesh
end

