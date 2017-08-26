#!/bin/sh

# TODO
# 
# No args gets current brightness
# + increments by 10%
# - decrements by 10%
# inut validation
# rewrite in rust
MAX=`cat /sys/class/backlight/intel_backlight/max_brightness`
LEVEL=$(($1 * $MAX / 100))
echo $LEVEL > /sys/class/backlight/intel_backlight/brightness


