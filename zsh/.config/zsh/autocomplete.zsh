source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload -Uz compinit
compinit

