#!/usr/bin/env zsh

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload -Uz compinit
compinit
