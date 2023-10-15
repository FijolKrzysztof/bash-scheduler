#!/bin/bash

source /home/krzysztof/Apps/bash-scheduler/scheduler-data.sh
read -r -p "OPEN( HABITS | BTC | CHART )? [h b c] : " habits btc chart
if [ $habits ] && [ $habits == "h" ]; then
	command $openWebsite $calendarURL > /dev/null 2>&1 &
fi
if [ $btc ] && [ $btc == "b" ]; then
	command $openWebsite $btcURL > /dev/null 2>&1 &
fi
if [ $chart ] && [ $chart == "c" ]; then
	command $openWebsite $chartURL > /dev/null 2>&1 &
fi
read -p "REOPEN [y/n] : " reopen
if [ $reopen ] && [ $reopen == "y" ]; then
	source /home/krzysztof/Apps/bash-scheduler/scheduler-exec.sh
fi
