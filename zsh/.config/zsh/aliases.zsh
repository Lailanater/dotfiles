#!/bin/zsh

source ~/.config/zsh/common-functions.zsh

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
