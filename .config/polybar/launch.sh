#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch polybar
echo "---" | tee -a /tmp/hirobar.log
polybar hirobar 2>&1 | tee -a /tmp/hirobar.log & disown

echo "Bars launched..."
