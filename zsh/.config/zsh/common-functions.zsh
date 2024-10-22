#!/bin/zsh

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

is_steam_deck() {
  if grep -q "Steam Deck" /proc/cpuinfo; then
    return 0
  fi

  return 1
}

update() {
  # Package manager update
  if command_exists zypper; then
    sudo zypper dup
  elif command_exists pacman && ! is_steam_deck; then
    sudo pacman -Syu
  fi

  # Flatpak update
  if command_exists flatpak; then
    # Use -y option if it's a Steam Deck
    flatpak ${is_steam_deck:+-y} update
  fi

  # Homebrew update (might have both package manager and homebrew installed)
  if command_exists brew; then
    brew update
  fi
}

