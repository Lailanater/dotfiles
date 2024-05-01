#!/bin/bash

LEAGUE_IN_GAME_PROCESS_NAME="League\ of Legen"
OBS_PROCESS_NAME="obs"
OBS_RECORDING_DIR="/home/clail/Videos/OBS"
THRESHOLD_GB=50

is_process_running() {
	local process_name=$1
	pgrep -x "$process_name" >/dev/null
}

start_obs_recording() {
	echo "Starting OBS recording..."
	obs --startrecording &
}

stop_obs_recording() {
	echo "Stopping OBS recording..."
	pkill -TERM obs
}

# Function to check directory size and send notification if exceeded
check_directory_size() {
	local dir=$1
	local threshold_mb=$2
	local dir_size_mb=$(du --block-size=1M "$dir" | awk '{print $1}')

	if (($(echo "$dir_size_mb > $threshold_mb" | bc -l))); then
		notify-send -u critical -a "League OBS Recorder Service" "Recording Limit Exceeded" "The OBS recording directory has exceeded $THRESHOLD_GB GB."
	fi
}

echo "Listening for League of Legends in game process..."

while true; do
	if is_process_running "$LEAGUE_IN_GAME_PROCESS_NAME"; then
		if ! is_process_running "$OBS_PROCESS_NAME"; then
			start_obs_recording
		fi
	else
		if is_process_running "$OBS_PROCESS_NAME"; then
			stop_obs_recording

			# Convert threshold to MB
			threshold_mb=$((THRESHOLD_GB * 1024))
			check_directory_size "$OBS_RECORDING_DIR" "$threshold_mb"
		fi
	fi

	sleep 5
done
