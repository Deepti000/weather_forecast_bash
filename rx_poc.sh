#!/bin/bash

$city="Casablanca"

curl  wttr.in/$city?T >> weather_report
cur=$(cat weather_report | grep °C | head -n 1 | awk {'print $(NF-1)'})
tom=$(cat weather_report |head -n 23 | tail -n 1 | cut -d "C" -f2 | awk '{print $(NF -1)}')
hour=$(TZ='Morocco/Casablanca' date -u +%H)
day=$(TZ='Morocco/Casablanca' date -u +%d)
month=$(TZ='Morocco/Casablanca' date +%m)
year=$(TZ='Morocco/Casablanca' date +%Y)
echo -e "$year\t$month\t$day\t$hour\t$cur\t$tom" >> rx_poc.log
