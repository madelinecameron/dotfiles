#!/usr/bin/env bash

  killall -q polybar
  while pgrep -x polybar >/dev/null; do sleep 1; done
  MONITOR=$monitor1 polybar -rq -c ~/.config/polybar/polybar main &
  MONITOR=$monitor1 polybar -rq -c ~/.config/polybar/polybar workspaces &
  MONITOR=$monitor2 polybar -rq -c ~/.config/polybar/polybar workspaces &
