The dataset has been taken from kaggle website. Other works based on the same dataset that we used are as follows:

Uses Linear Regression and Random Forest Regressor to predict the trip duration for the cab travelling in New York City.

Uses one month of NYC taxi rides data. The model infers the possible paths for each trip and then estimates the link travel times by minimizing least squared difference between expected path travel times and the observed path travel times. In addition, they used the weather data of that particular season and what we observed was that even in winters when city witnesses heavy snowfall, the trip duration is not affected.
The dataset and inputs were obtained from kaggle competition. The dataset has about 1.4 million records.

The following variables are given in the dataset:-


•	id – a unique identifier for each trip.

•	vendor_id – a code indicating the provider associated with the trip record. Pickup_datetime – date and time when the meter was engaged.

•	dropoff_datetime – date and time when the meter was disengaged.

•	passenger_count – the number of passengers in the vehicle (driver entered value).

•	pickup_longitude – the longitude where the meter was engaged. pickup_latitude – the latitude where the meter was engaged.

•	dropoff_longitude – the longitude where the meter was disengaged. dropoff_latitude – the latitude where the meter was disengaged.

•	store_and_fwd_flag – this flag indicates whether the trip record was held in vehicle memory before sending to the vendor because the vehicle did not have a connection to the server - Y=store and forward; N=not a store and forward trip.
•	trip_duration – duration of the trip in seconds.

The variable pickup and drop-off date time is used in a very efficient manner. With the help of pandas library we have extracted the weekday (Sunday=0, Monday=1 etc.), hours (24 hour clock) and month (January=0, February=1 etc.). We have the pickup and drop-off coordinates and from that we have calculated the radial distance using the harversian formulae.

