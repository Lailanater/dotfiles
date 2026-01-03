export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.cargo/bin

if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

source $HOME/.config/sh/aliases.sh
source $HOME/.config/sh/tmux.sh
if [[ -f $HOME/.config/sh/local.sh ]]; then
  source $HOME/.config/sh/local.sh
fi
source $HOME/.config/sh/tmux.sh
source $HOME/.config/zsh/plugins.zsh
source $HOME/.config/zsh/autocomplete.zsh

if command_exists mise; then
  eval "$(mise activate zsh)"
fi
if command_exists fnox; then
  eval "$(fnox activate zsh)"
  export FNOX_AGE_KEY_FILE=~/.ssh/fnox
fi

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(starship init zsh)"

if command_exists tmux && \
  [[ -f $HOME/.local/bin/tmux-sessionizer ]] && \
  ! is_steam_deck && \
  ! (echo "$TERMINAL_EMULATOR" | grep -q "JetBrains"); then

  $HOME/.local/bin/tmux-sessionizer
fi
