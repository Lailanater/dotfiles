# Kill existing easyeffects
easyeffects --quit

# Start easyeffects
easyeffects --gapplication-service

# Refresh waybar
sh ~/.config/waybar/scripts/restart-waybar.sh

notify-send "Audio restarted!"
