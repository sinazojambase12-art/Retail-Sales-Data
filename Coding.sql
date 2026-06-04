select * 
from retail_sales 
limit 100;

--Displaying only the customer ID and product Category columns
SELECT `Customer ID`,
       `Product Category`
FROM retail_sales;     


--Display customers who are older than 40
SELECT *
FROM retail_sales
WHERE Age > 40;

--Display transactions where the quantity purchases is 3 or more
SELECT *
FROM retail_sales
WHERE Quantity >= 3;

--Display Beauty product sales where the total amount is greater than 100
SELECT *
FROM retail_sales
WHERE `Product Category` = 'Beauty' AND `Total Amount` > 100;

--Display Customers whose ages are between 25 and 35
SELECT *
FROM retail_sales
WHERE Age BETWEEN 25 AND 35;

--Calculate the Total Sales amount for all transactions
SELECT SUM(`Total Amount`) AS total_sales
FROM retail_sales;

--Show the Total and Average Sales Amount per Product Category. Only include Product Category with average Total Amount above 200
SELECT`Product Category`,
       SUM(`Total Amount`) AS Total_sales,
       AVG(`Total Amount`) AS avg_sales
FROM retail_sales
GROUP BY `Product Category`
HAVING AVG(`Total Amount`)>200;
