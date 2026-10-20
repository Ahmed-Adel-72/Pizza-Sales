use Pizza_DB;

Select * from pizza_sales;

-- Total Revenue
Select SUM (total_price) As 'Total Revenue'
from pizza_sales;

-- Average Order Value
Select SUM(total_price)/COUNT(distinct order_id) As 'AOV'
from pizza_sales;

-- Total Pizza Sold
Select SUM (quantity) AS 'Total Pizza Sold'
from pizza_sales;

-- Total Orders
Select COUNT (Distinct order_id) AS 'Total Orders'
from pizza_sales;

-- Average QTY Per Order
Select Cast(CAST(SUM (quantity) AS decimal(10,2))  /
CAST( COUNT (Distinct order_id)AS decimal(10,2))AS decimal(10,2)) AS 'Average Pizza Per Order'
from pizza_sales;




