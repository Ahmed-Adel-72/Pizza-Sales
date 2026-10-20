Select * from pizza_sales;


--Percentage Of Sales Per Category

Select pizza_category , SUM(total_price) * 100 /
(select SUM(total_price) from pizza_sales Where MONTH (order_date) = 1) AS 'Percentage Of Sales %',
CAST(SUM(total_price)As decimal(10,2)) AS 'Total Revenue Per Category'
from pizza_sales 
Where MONTH (order_date) = 1
group by pizza_category;

--Percentage Of Sales By Pizza Size
Select pizza_size , CONCAT( CAST( SUM(total_price)*100 /
(select SUM(total_price) from pizza_sales Where DATEPART (quarter , order_date) = 1)  AS decimal (10,2) )  ,'%')
AS Percentage_Of_Sales_By_Pizza_Size , 
Cast(SUM(total_price) AS decimal (10,2)) AS 'Total Sales By Size'
From pizza_sales
Where DATEPART (quarter , order_date) = 1
group by pizza_size
Order By Percentage_Of_Sales_By_Pizza_Size DESC;