#!/bin/bash

source /home/krzysztoffijol/programs/bash-scheduler/scheduler.data.sh
read -r -p "OPEN( HABITS | BTC | CHART )? [h b c] : " habits btc chart
if [ $habits ] && [ $habits == "h" ]; then
	command $openWebsite $calendarURL
fi
if [ $btc ] && [ $btc == "b" ]; then
	command $openWebsite $btcURL
fi
if [ $chart ] && [ $chart == "c" ]; then
	command $openWebsite $chartURL
fi
for((;;)); do
	read -p "CHANGE TIME? [y/n] : " changeTime
	if [ $changeTime == "y" ]; then
		read -p "NEW TIME [HH:MM] : " newTime
		read -p "CONFIRM? [y/n] : " confirm
		if [ $confirm == "y" ]; then
			sed -i "s/displayTime=[0-9]*:[0-9]*/displayTime=$newTime/" /home/krzysztoffijol/programs/bash-scheduler/scheduler.data.sh
			break
		fi
	else
		break
	fi
done
