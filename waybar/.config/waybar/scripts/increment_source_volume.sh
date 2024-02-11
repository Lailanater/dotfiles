current_source=$(pactl get-default-source)

current_volume=$(pactl get-source-volume $current_source)
integer_percentage=$(echo "$current_volume" | awk -F'/' '{print $2}' | awk '{print $1}' | tr -d '%')

pactl set-source-volume $current_source $((integer_percentage + 1))%
