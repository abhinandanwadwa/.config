#!/bin/bash

device=$(bluetoothctl info | grep 'Name' | cut -d ' ' -f2-)

if [ -n "$device" ]; then
    echo "$device"
else
    echo "No Device"
fi
