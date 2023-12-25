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

