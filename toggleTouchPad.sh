#!/bin/sh

STATE=`xinput --list-props 11 | rg "Device Enabled" | sed -Ee 's/Device Enabled \(141\):[[:space:]]+([0-9]+)/\1/'`
NEWSTATE=$((1 - $STATE))

echo "Enabling touchpad? $NEWSTATE"
xinput set-prop 11 "Device Enabled" $NEWSTATE

