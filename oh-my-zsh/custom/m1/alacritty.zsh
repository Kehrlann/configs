# This touches the alacritty config file, and forces a colorscheme refresh
ALACRITTY_SOURCE=$(ls -l "$HOME/.config/alacritty/source.yml" | sed "s/^.*-> //g")
ALACRITTY="$HOME/.config/alacritty/alacritty.yml"
cp "$ALACRITTY_SOURCE" "$ALACRITTY"
