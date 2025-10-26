#!/usr/bin/env sh

if [[ -n "$TMUX" ]]; then
  function exit() {
    tmux detach
  }
fi
