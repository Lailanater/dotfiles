#!/bin/zsh

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

is_steam_deck() {
  if [ -f /etc/os-release ] && cat /etc/os-release | grep -q "ID=steamos"; then
    return 0
  fi

  return 1
}

update() {
  # Package manager update
  if command_exists dnf; then
    sudo dnf update
  elif command_exists zypper; then
    sudo zypper dup
  elif command_exists pacman && ! is_steam_deck; then
    sudo pacman -Syu
  fi

  # Flatpak update
  if command_exists flatpak; then
    local flatpak_options=""
    if is_steam_deck; then
      flatpak_options="-y"
    fi

    flatpak $flatpak_options update
  fi

  # Homebrew update (might have both package manager and homebrew installed)
  if command_exists brew; then
    brew update && brew upgrade
  fi
}

