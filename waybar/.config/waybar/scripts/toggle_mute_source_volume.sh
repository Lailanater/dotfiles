current_source=$(pactl get-default-source)

pactl set-source-mute $current_source toggle
