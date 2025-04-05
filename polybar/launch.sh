#!/bin/bash

# Kill any running polybar instances
killall -q polybar

# Wait until the bars are gone
while pgrep -x polybar >/dev/null; do sleep 0.2; done

# Launch top and bottom bars
polybar top &
polybar bottom &
