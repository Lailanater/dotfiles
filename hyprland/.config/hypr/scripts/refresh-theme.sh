#!/bin/bash

# Function to get a random element from an array
random_element() {
  local array=("$@")
  local index=$(($RANDOM % ${#array[@]}))
  echo "${array[$index]}"
}

# Directory where wallpapers are stored
wallpaper_dir="$HOME/.config/hypr/wallpapers"

# Select a random wallpaper file from the directory
wallpaper="${wallpaper_dir}/$(ls -1 "$wallpaper_dir" | shuf -n1)"

# Transition and position options
transitions=("wipe" "grow" "center" "outer" "fade")
positions=("center" "top" "left" "right" "bottom" "top-left" "top-right" "bottom-left" "bottom-right")

# Get a random transition, position, and angle
selected_transition=$(random_element "${transitions[@]}")
selected_position=$(random_element "${positions[@]}")
selected_angle=$((RANDOM % 360))

# Set wallpaper via swww
swww img "$wallpaper" --transition-fps  165 --transition-type "$selected_transition" --transition-pos "$selected_position" --transition-angle "$selected_angle"

# Set general theme colors via pywal
wal -q -i "$wallpaper"

# Set Firefox theme colors via pywal
pywalfox update

# Set Vencord theme from via pywal
cp ~/.cache/wal/discord-wal.theme.css ~/.config/vesktop/themes
