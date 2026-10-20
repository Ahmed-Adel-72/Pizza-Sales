Select * from pizza_sales;

--Daily Trend
Select DATENAME (DW,order_date) as Order_Day , COUNT (distinct order_id) as 'Number Of Orders'
from pizza_sales
Group by DATENAME (DW,order_date)
Order by COUNT (distinct order_id) Desc;



--Hourly Trend
Select DATEPART (HOUR,order_time) as Order_Hour , COUNT (distinct order_id) as 'Number Of Orders'
from pizza_sales
Group by DATEPART (HOUR,order_time)
Order by DATEPART (HOUR,order_time) ASC;



