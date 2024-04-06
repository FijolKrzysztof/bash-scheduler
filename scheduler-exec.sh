#!/bin/bash

scheduler_data="$(dirname "$(readlink -f "$0")")/scheduler-data.sh"

openWebsite="$(dirname "$(readlink -f "$0")")/open-website.py"

source "$scheduler_data"

read -r -p "OPEN( HABITS | BTC | CHART )? [h b c] : " habits btc chart
if [ "$habits" ] && [ "$habits" == "h" ]; then
    command "$openWebsite" "$calendarURL" > /dev/null 2>&1 &
fi
if [ "$btc" ] && [ "$btc" == "b" ]; then
    command "$openWebsite" "$btcURL" > /dev/null 2>&1 &
fi
if [ "$chart" ] && [ "$chart" == "c" ]; then
    command "$openWebsite" "$chartURL" > /dev/null 2>&1 &
fi

read -p "REOPEN [y/n] : " reopen
if [ "$reopen" ] && [ "$reopen" == "y" ]; then
    source "$scheduler_data"
fi