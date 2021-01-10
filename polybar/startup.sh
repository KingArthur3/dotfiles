# Kill all currently running polybars
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
	
# Launch Polybars, using default config location ~/.config/polybar/config
polybar i3 -r &
polybar tray -r &
polybar cpu -r &
polybar audio -r &
polybar ethernet -r &
polybar date -r &
polybar menu -r &
