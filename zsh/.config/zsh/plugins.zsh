#!/usr/bin/env zsh

try_source() {
  local path="$1"
  if [ -f "$path" ]; then
    source "$path"
  else
    echo "Warning: Path $path not found!"
  fi
}

if command_exists brew && { [ "$(uname)" != "Linux" ] || is_steam_deck; }; then
  brew_prefix=$(brew --prefix)
  try_source $brew_prefix/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  try_source $brew_prefix/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif command_exists zypper || command_exists dnf; then
  try_source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  try_source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif command_exists pacman && ! is_steam_deck; then
  try_source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  try_source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if command_exists op && command_exists aws; then
  try_source ~/.config/op/plugins.sh
fi
