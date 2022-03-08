#!/bin/bash

opened1=false

for((;;))
do
	source /home/ja/programs/bash-scheduler/scheduler.data.sh
	currentTime=$(date +%H:%M)
	if [ $opened1 == false ]; then
		command $openWebsite $btcURL
		command $openBetting
		opened1=true
	fi
	if [ $currentTime == $displayTime ]; then
		command gnome-terminal -- /home/ja/programs/bash-scheduler/scheduler.exec.sh
	fi
	sleep 60
done
