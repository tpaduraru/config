function syncup
cd ~/.config
git add fish tmux nvim
git commit -m "auto sync up"
git push
end
