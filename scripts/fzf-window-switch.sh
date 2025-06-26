#!/usr/bin/env bash

tmux list-windows -F '#I: #W' | fzf | cut -d: -f1 | xargs -I {} tmux select-window -t {}

