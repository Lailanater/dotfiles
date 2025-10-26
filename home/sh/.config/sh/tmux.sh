#!/usr/bin/env sh

if [[ -n "$TMUX" ]]; then
  function exit() {
    clear
    tmux detach -P
  }

  function ssh() {
    tmux detach -E "ssh \"$@\"; clear && tmux attach"
  }
fi

