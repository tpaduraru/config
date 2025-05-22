function ssx
          if set -q TMUX
                  set remote $argv[1]
                  tmux detach-client
                  ssh $remote 'tmux attach'
              else
                  ssh $argv
              end
  
end
