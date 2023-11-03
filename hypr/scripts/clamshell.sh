#! /bin/bash

monitors="$(hyprctl monitors -j | jq length)"
if [[ $monitors -ne 1 ]]; then
  hyprctl keyword monitor "eDP-1,disable"
else
  hyprctl keyword monitor "eDP-1,1920x1080,2560x0,1"
fi
