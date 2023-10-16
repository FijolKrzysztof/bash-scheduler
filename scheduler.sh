#!/bin/bash

opened1=false

for((;;))
do
	source /home/krzysztof/Projects/bash-scheduler/scheduler-data.sh
	currentTime=$(date +%H:%M)
	if [ $currentTime == $displayTime ]; then
		command gnome-terminal -- /home/krzysztof/Projects/bash-scheduler/scheduler-exec.sh
	fi
	sleep 60
done
