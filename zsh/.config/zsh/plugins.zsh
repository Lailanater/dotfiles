#!/bin/zsh

source ~/.config/zsh/common-functions.zsh

try_source() {
  local path="$1"
  if [ -f "$path" ]; then
    source "$path"
  else
    echo "Warning: Path $path not found!"
  fi
}

# Using Homebrew
if command_exists brew; then
  try_source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  try_source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Using Zypper (OpenSUSE Tumbleweed)
elif command_exists zypper; then
  try_source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  try_source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

