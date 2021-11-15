#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar custom-menu -c ~/.config/polybar/current.ini &
polybar date -c ~/.config/polybar/current.ini &
polybar audio -c ~/.config/polybar/current.ini &

## Right bar
polybar tray -c ~/.config/polybar/current.ini &
polybar power-menu -c ~/.config/polybar/current.ini &

## Center bar
polybar workspace -c ~/.config/polybar/workspace.ini &
polybar workspace-2 -c ~/.config/polybar/workspace.ini &
