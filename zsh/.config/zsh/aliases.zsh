#!/usr/bin/env zsh

alias sudo='sudo '

if command_exists eza; then
  alias ls="eza --long"
else
  echo "Warning: eza not installed!"
fi

if command_exists systemctl; then
  alias reboot="systemctl reboot"
  alias restart="reboot"
  alias poweroff="systemctl poweroff"
  alias shutdown="poweroff"
fi

alias neofetch="fastfetch"
alias ff="fastfetch"

alias vim="nvim"

alias lg="lazygit"

alias pn="pnpm"

alias compose="docker compose"

if command_exists flatpak && flatpak list | grep -q wezterm; then
  alias wezterm="flatpak run org.wezfurlong.wezterm"
fi
