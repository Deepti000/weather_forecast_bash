# weather_forecast_bash

- to extract daily weather forecast and observed weather data and load it into a live report.
- For each day at noon (local time), you will gather both the actual temperature and the temperature forecasted for noon on the following day.
- data source -- curl wttr.in/casablanca

- Sol

- 1) create text file which contain weather reports rx_poc.log
     
             touch rx_poc.log
     
  2) Add this "Date (YYYY-MM-DD)	Version	Changed By	Change Description" in above file
   
             echo -e "year\tmonth\tday\thour\tobs_temp\tfc_temp">rx_poc.log
     
  3) Create script which obtain information of city Casablanca, date info (hour,date,month and year) and current temp and forcasted temp. 
 
            touch rx_poc.sh
            chmod +x rx_poc.sh

  4) Output of script
 
       ![image](https://github.com/Deepti000/weather_forecast_bash/assets/65061604/76b01cb9-4610-4b59-857f-956cc53c471d)

  5) create a file and give it executable access fc_accuracy.sh which provide accuracy of forcast.
  6) 


5) find difference b/w local system time and city time


    $ date
      Mon Feb 13 11:28:12 EST 2023
    $ date -u
      Mon Feb 13 16:28:16 UTC 2023



    In the example above, we see that the system time relative to UTC is UTC+5 (i.e. 16 - 11 = 5).We know Casablanca is UTC+1, so the system time relative to Casablanca is 4 hours earlier. Thus to run your script at noon Casablanca time, you need to run it at 8 am.

6) create crontab for noon


   crontab -e
   0 8 * * * /home/project/rx_poc.sh

7) create a file and give it executable access min_max.sh file which give you max and min accuracy despite of -ve values.
8) soure

     wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-LX0117EN-Coursera/labs/synthetic_historical_fc_accuracy.tsv
   

10) output of script
    
  ![image](https://github.com/Deepti000/weather_forecast_bash/assets/65061604/77da5c52-dc15-4873-bd6e-393a1263f221)


