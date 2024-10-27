#!/bin/bash

SCRIPT_FOLDER="$(dirname "$(readlink -f "$0")")"

while :
do
	source "$SCRIPT_FOLDER/scheduler-data.sh"
	currentTime=$(date +%H:%M)
	if [ "$currentTime" == "$displayTime" ]; then
		command gnome-terminal -- "$SCRIPT_FOLDER/scheduler-exec.sh"
	fi
	sleep 60
done
