#python ~/scripts/savWS.py
xrandr --output HDMI-1-2 --off
xrandr --output VGA-1-1 --off
xrandr --output VGA-1-1 --mode 1920x1080 --auto
xrandr --output VGA-1-1 --left-of DP-2
#bash ~/scripts/wssav
