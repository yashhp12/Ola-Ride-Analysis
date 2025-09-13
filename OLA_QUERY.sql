create database ola;
use ola;
show databases;



SELECT  DISTINCT Customer_ID
   
FROM bookings;


#1. Retrieve all successful bookings:
create view successful_bookings as
select * from bookings
where Booking_Status = 'success';


#2. Find the average ride distance for each vehicle type:
select vehicle_type, avg(ride_distance) as average_ride_distance from bookings
group by Vehicle_Type


#3. Get the total number of cancelled rides by customers:
Select count(*) 
from bookings
where booking_status = "canceled by customer";


#4. List the top 5 customers who booked the highest number of rides:
select customer_id,count(booking_id) as total_rides 
from bookings
group by customer_id
order by total_rides desc
limit 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) from bookings  where Canceled_Rides_by_Customer = "personel & car related issues"



#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(Driver_ratings) as max ,
min(Driver_ratings) as min
from bookings
where vehicle_type = "Prime sedan";



#7. Retrieve all rides where payment was made using UPI:
SELECT * FROM BOOKINGS 
WHERE PAYMENT_METHOD = "UPI";



#8. Find the average customer rating per vehicle type:
SELECT VEHICLE_TYPE,round(AVG(CUSTOMER_RATING),2) AS AVG_CUSTOMERRATING
FROM BOOKINGS
GROUP BY VEHICLE_TYPE


#9. Calculate the total booking value of rides completed successfully:
SELECT  SUM(BOOKING_VALUE) AS TOTAL_BOOKING_VALUE
FROM BOOKINGS 
WHERE BOOKING_STATUS = "SUCCESS";



#10. List all incomplete rides along with the reason
SELECT BOOKING_ID , INCOMPLETE_RIDES_REASON 
FROM BOOKINGS
 WHERE INCOMPLETE_RIDES = "YES"


