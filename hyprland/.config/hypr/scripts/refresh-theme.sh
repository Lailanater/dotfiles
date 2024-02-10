#!/bin/bash

# Function to get a random element from an array
random_element() {
  local array=("$@")
  local index=$(($RANDOM % ${#array[@]}))
  echo "${array[$index]}"
}

# Transition and position options
transitions=("wipe" "grow" "center" "outer" "fade")
positions=("center" "top" "left" "right" "bottom" "top-left" "top-right" "bottom-left" "bottom-right")

# Get a random transition, position, and angle
selected_transition=$(random_element "${transitions[@]}")
selected_position=$(random_element "${positions[@]}")
selected_angle=$((RANDOM % 360))
#
# Directory where wallpapers are stored
wallpaper_dir="$HOME/.config/hypr/wallpapers"

# Set select random wallpaper and set general theme colors via pywal
wal -q -i "$wallpaper_dir"

# Import generated colors from above
source ~/.cache/wal/colors.sh

# Set wallpaper via swww
swww img "$wallpaper" --transition-fps  165 --transition-type "$selected_transition" --transition-pos "$selected_position" --transition-angle "$selected_angle"

# Set Firefox theme colors via pywal
pywalfox update

# Set Vencord theme from via pywal
cp ~/.cache/wal/discord-wal.theme.css ~/.config/vesktop/themes
