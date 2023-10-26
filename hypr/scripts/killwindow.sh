#! /bin/bash

name="$(hyprctl activewindow -j | jq -r ".class")"
window="$(hyprctl activewindow -j | jq -r ".address")"
if [[ $name = @('Code'|'firefox') ]]; then
    hyprctl dispatch pass "address:$window"
else
    hyprctl dispatch killactive ""
fi
