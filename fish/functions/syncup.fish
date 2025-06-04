function syncup
cd ~/.config
git add fish tmux nvim
git commit -m "$hostname"
git push
end
