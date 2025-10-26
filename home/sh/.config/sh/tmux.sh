#!/usr/bin/env sh

if [[ -n "$TMUX" ]]; then
  function exit() {
    clear
    tmux detach
  }
fi
