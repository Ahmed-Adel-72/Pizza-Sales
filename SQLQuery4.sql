use Pizza_DB;

Select * from pizza_sales;

-- Total Pizzas Sold By Category
Select pizza_category , Sum(quantity) As Num_Of_Pizzas_Sold
From pizza_sales
group by pizza_category
Order By Num_Of_Pizzas_Sold Desc;


--Top 5 Pizza Sold by Quantity
Select Top 5 pizza_name , SUM(quantity) AS Num_Of_Pizzas_Sold
From pizza_sales
group by pizza_name
Order By Num_Of_Pizzas_Sold Desc;


--Worst 5 Pizza Sold by Quantity
Select Top 5 pizza_name , SUM(quantity) AS Num_Of_Pizzas_Sold
From pizza_sales
group by pizza_name
Order By Num_Of_Pizzas_Sold ASC;



