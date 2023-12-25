#!/bin/bash

wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-LX0117EN-Coursera/labs/synthetic_historical_fc_accuracy.tsv

arr=$(cat synthetic_historical_fc_accuracy.tsv | cut -d "       " -f6)
count=$(cat synthetic_historical_fc_accuracy.tsv | wc -l)
fin=$((count-1))
echo $arr

for ((i=1;i<=fin;i++))
do
   if [[ ${arr[$i]} < 0 ]]
   then
           value=${arr[$i]}
           arr[$i]=$((-1 * value))
           echo $value
   fi
done
mins=${arr[1]}
max=${arr[1]}

for ((i=1;i<=fin;i++))
do
   if [[ ${arr[$i]} < $mins ]]
   then
           mins=$((arr[$i]))
   fi
   if [[ ${arr[$i]} > $max ]]
   then
           max=$((arr[$i]))
   fi
done

echo "minimum ebsolute error = $mins"
echo "maximum absolute error = $max"
