-- Databricks notebook source
USE brightLearn.data;

SELECT *
FROM retail_sales;

-- Which product category generated more than 150 000 in total sales?
SELECT `Product Category`,
      SUM(`Total Amount`) AS total_sales
FROM retail_sales
GROUP BY `Product Category`
HAVING SUM(`Total Amount`) >150000;

SELECT `Product Category`,
      SUM(`Total Amount`) AS total_sales
FROM retail_sales
GROUP BY `Product Category`
HAVING total_sales >150000;

-- Which genders generated an average transaction value above 300?
SELECT Gender,
     AVG(`Total Amount`) AS avg_transact
FROM retail_sales
GROUP BY Gender
HAVING AVG(`Total Amount`) > 300;

-- Find the top 5 customers with the highest total spending.
SELECT `Customer ID`,
       `Total Amount`
FROM retail_sales
ORDER BY `Total Amount` DESC
LIMIT 5;

-- Which product categories have more than 300 transactions?


--What is the highest sales amount recorded for each product category?


-- Find the minimum sale amount for each gender.


-- Show categories where the average quantity sold it greater than 2.


-- Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.


-- Which product categories have a maximum sale amount greater than 1000?


-- Show the top 3 categories by average value, excluding customers under 25.
