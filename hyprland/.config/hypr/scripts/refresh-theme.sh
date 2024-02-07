#!/bin/bash

# Define the directory where wallpapers are stored
wallpaper_dir="$HOME/.config/hypr/wallpapers"

# Get a random wallpaper file from the directory
wallpaper="${wallpaper_dir}/$(ls -1 "$wallpaper_dir" | shuf -n1)"

# Set wallpaper via swww
swww img $wallpaper

# Set general theme colors via pywal
wal -q -i $wallpaper

# Set firefox theme colors via pywal
pywalfox update
