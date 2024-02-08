#!/bin/sh

. "${HOME}/.cache/wal/colors.sh"

conffile="$HOME/.config/mako/config"
default_conffile="$HOME/.config/mako/config.default"

# Associative array, color name -> color code.
declare -A colors
colors=(
    ["background-color"]="${background}"
    ["text-color"]="$color6"
    ["border-color"]="$color13"
)

# Copy default settings since it's git tracked
cp $default_conffile $conffile

for color_name in "${!colors[@]}"; do
  # replace first occurance of each color in config file
  sed -i "0,/^$color_name.*/{s//$color_name=${colors[$color_name]}/}" $conffile
done

makoctl reload
