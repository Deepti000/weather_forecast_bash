#!/bin/bash

wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-LX0117EN-Coursera/labs/synthetic_historical_fc_accuracy.tsv

arr=$(cat synthetic_historical_fc_accuracy.tsv | cut -d " " -f6)

for i in $(!arr[@])
do
   if [[ arr[i] < 0 ]]
   then
        arr[i] = (-1)*arr[i]
   fi
done
min=arr[0]
max=arr[0]

for i in $(!arr[@])
do
   if [[ arr[i] < min ]]
   then
        min = arr[i]
   elif [[ arr[i]>max ]]
   then
        max = arr[i]
   fi
done

echo "minimum ebsolute error = $min"
echo "maximum absolute error = $max"
