# TODO
#
# combine with single
# autodetect what monitors are available and what are configured
# if single and more than one configured ditch the removed one
# if two then add the extra one
# rewrite in rust

echo "Connecting to second monitor"
xrandr --output eDP1 --primary --left-of HDMI1 --output HDMI1 --auto

