# PATH
export PATH="$HOME/.local/bin:$PATH"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
# PATH end

if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

source $HOME/.config/sh/aliases.sh
source $HOME/.config/zsh/plugins.zsh
source $HOME/.config/zsh/autocomplete.zsh

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
  ! (echo "$TERMINAL_EMULATOR" | grep -q "JetBrains"); then

  $HOME/.local/bin/tmux-sessionizer
fi
