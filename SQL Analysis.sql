USE retail_sales_db;

-- Q1: Which region has the lowest total sales?
SELECT
    Region,
    SUM(Sales) AS total_sales
FROM retail_sales_portfolio
GROUP BY Region
ORDER BY total_sales ASC;

-- Q2: Which product has the highest total sales?
SELECT
    Product,
    SUM(Sales) AS total_sales
FROM retail_sales_portfolio
GROUP BY Product
ORDER BY total_sales DESC;

-- Q3: On which date were the highest number of orders placed?
SELECT
    Order_Date,
    COUNT(*) AS total_orders
FROM retail_sales_portfolio
GROUP BY Order_Date
ORDER BY total_orders DESC;
   

-- Q4: What is the total profit generated?
SELECT
    SUM(Profit) AS total_profit
FROM retail_sales_portfolio;

-- Q5: How much revenue was given up through discounts?
SELECT
    SUM(Quantity * Unit_Price * Discount) AS total_discount_amount
FROM retail_sales_portfolio;

