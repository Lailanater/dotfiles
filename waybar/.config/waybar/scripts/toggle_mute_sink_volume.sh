current_sink=$(pactl get-default-sink)

pactl set-sink-mute $current_sink toggle
