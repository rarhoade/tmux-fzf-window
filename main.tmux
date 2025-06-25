#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

default_width=55
default_height=10
default_key="f"

tmux_option_width="@fzf-window-option-width"
tmux_option_height="@fzf-window-option-height"
tmux_option_key="@fzf-window-option-key"

get_tmux_option() {
        local option=$1
        local default_value=$2
        local option_value=$(tmux show-option -gqv "$option")
        if [ -z "$option_value" ]; then
            echo "$default_value"
        else
            echo "$option_value"
        fi
}

function main() {
    local width
    local height
    local key
    
    width=$(get_tmux_option "$tmux_option_width" "$default_width")
    height=$(get_tmux_option "$tmux_option_height" "$default_height")
    tmux bind-key $(get_tmux_option "$tmux_option_key" "$default_key") display-popup -w "$width" -h "$height" -y 15 -E "$CURRENT_DIR/scripts/fzf-window-switch.sh"
}
main

