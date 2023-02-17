# This touches the alacritty config file, and forces a colorscheme refresh
gsed -e "s/Last login: [0-9]*/Last login: $(date +%s)/g" -i "$HOME/.config/alacritty/alacritty.yml"
