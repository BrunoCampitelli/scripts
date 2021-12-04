#xrandr --output VGA-1-1 --mode 1920x1080
xrandr --output VGA-1-1 --mode 1280x720 --left-of DP-2

#xrandr --output HDMI-1-1 --mode 1920x1080
#xrandr --addmode HDMI-1-1 1920x1080_60.00
xrandr --output HDMI-1-2 --auto --same-as VGA-1-1
