function syncup
    cd ~/.config
    git add fish tmux nvim
    git commit -m "$hostname: $argv[1]"
    git push
end
