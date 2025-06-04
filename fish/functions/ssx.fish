function ssx
    if set -q TMUX
        echo $argv[1] > ~/.local/state/ssx
        tmux detach-client
    else
        ssh $argv
    end
  
end
