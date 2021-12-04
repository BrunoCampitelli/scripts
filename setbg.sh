feh --bg-fill $1 --no-xinerama
wal -n -i $1 --backend colorz -a 60 --saturate 0.5
xrdb -query > ~/.walxrvals
