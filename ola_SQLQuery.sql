use ola

--All Successfrul_Bookings
select * from [my_ola_pro.csv]
where Booking_Status = 'Success';

-- Average ride distance for each vehicle type
select Vehicle_Type,AVG(Ride_Distance) as avg_distance
from [my_ola_pro.csv]
group by Vehicle_Type;

--Total number of canceled ride by costomer
select COUNT(*) as canceled_ride_by_costomer from [my_ola_pro.csv]
where Booking_Status = 'Canceled by Customer';

--Top 5 customers who booked the highest numbere  of rides
select top 5 Customer_ID,COUNT(Booking_ID) as Total_ride from [my_ola_pro.csv]
group by Customer_ID
order by COUNT(Booking_ID) desc;

-- Prime sedan bookings  maximaum and minmaum  driver ratings 
select MAX(driver_ratings) as max_rating,MIN(Driver_ratings) 
as min_rating from [my_ola_pro.csv]
where Vehicle_Type = 'Prime Sedan';

-- All rides where payment was made using UPI
select * from [my_ola_pro.csv]
where Payment_Method = 'UPI';


--Avg customer ratings per nehicalr type
select Vehicle_Type,AVG(Customer_Rating) as avg_customer_ratings
from  [my_ola_pro.csv]
group by Vehicle_Type;

--Total bookings values  of rieds completed successfully 
select SUM(Booking_Value ) as total_successful_ride_value
from [my_ola_pro.csv]
where Booking_Status = 'Success';

--All incomplete_rides along with the reason 
select booking_id ,Incomplete_Rides_Reason from [my_ola_pro.csv]
where Incomplete_Rides = 'Yes';

