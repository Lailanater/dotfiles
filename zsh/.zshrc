source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/aliases.zsh

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload -Uz compinit
compinit

eval "$(starship init zsh)"
