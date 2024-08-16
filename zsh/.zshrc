source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/autocomplete.zsh

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

eval "$(starship init zsh)"
