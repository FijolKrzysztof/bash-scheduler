#!/bin/bash

source scheduler-data.sh
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
read -p "REOPEN [y/n] : " reopen
if [ $reopen ] && [ $reopen == "y" ]; then
	source scheduler-exec.sh
fi
