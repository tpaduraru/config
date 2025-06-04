function syncup
cd ~/.config
git add fish tmux nvim
git commit -m "$hostname: $1"
git push
end
