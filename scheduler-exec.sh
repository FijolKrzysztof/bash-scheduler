#!/bin/bash

scheduler_data="$(dirname "$(readlink -f "$0")")/scheduler-data.sh"
openWebsite="$(dirname "$(readlink -f "$0")")/open-website.py"

source "$scheduler_data"

for i in "${!urls[@]}"; do
   echo "$((i+1))) ${urls[$i]}"
done
echo "Press enter to open all URLs"
echo

read -r -p "Choose number: " choice

if [[ -z $choice ]]; then
   for url in "${urls[@]}"; do
       command "$openWebsite" "$url" > /dev/null 2>&1 &
   done
else
   if [[ $choice =~ ^[0-9]+$ ]] && [ "$choice" -le "${#urls[@]}" ] && [ "$choice" -gt 0 ]; then
       index=$((choice - 1))
       command "$openWebsite" "${urls[$index]}" > /dev/null 2>&1 &
   fi
fi

read -p "REOPEN [y/n] : " reopen
if [ "$reopen" ] && [ "$reopen" == "y" ]; then
   source "$scheduler_data"
fi
