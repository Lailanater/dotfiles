#!/usr/bin/env zsh

alias sudo='sudo '

if command_exists eza; then
  alias ls="eza --long"
else
  echo "Warning: eza not installed!"
fi

if command_exists systemctl; then
  alias reboot="sudo systemctl reboot"
  alias restart="reboot"
  alias poweroff="sudo systemctl poweroff"
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

function ssh() {
  if [[ -n "$TMUX" ]]; then
    tmux detach -E "command ssh $@ && exec tmux attach"
  else
    command ssh "$@"
  fi
}
