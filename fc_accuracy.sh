#!/bin/bash

yes=$(cat rx_poc.log | tail -n 2|head -n 1 | cut -d "   " -f5)
tod=$(cat rx_poc.log | tail -n 1 | cut -d "     " -f4)
acc=$((yes-tod))
echo $acc
echo "accuracy is $acc"
if [ -1 -le $acc ] && [ $acc -le 1 ]
then
   accuracy_range=excellent
elif [ -2 -le $acc ] && [ $acc -le 2 ]
then
    accuracy_range=good
elif [ -3 -le $acc ] && [ $acc -le 3 ]
then
    accuracy_range=fair
else
    accuracy_range=poor
fi

echo "Forecast accuracy is $acc"

row=$(tail -1 rx_poc.log)
year=$( echo $row | cut -d " " -f1)
month=$( echo $row | cut -d " " -f2)
day=$( echo $row | cut -d " " -f3)
echo -e "$year\t$month\t$day\t$tod\t$yes\t$acc\t$accuracy_range" >> historical_fc_accuracy.tsv
