/*
===============================================================================
Retail Intelligence Business Analytics

File        : 04_advanced_sql.sql
Author      :  Akshay Kumar

Description:
This script demonstrates advanced SQL techniques commonly used in
business analytics and decision support systems. It includes ranking,
window functions, cumulative analysis, trend analysis, and reusable
database views.

Advanced SQL Concepts Covered:
1. Ranking Functions
2. Window Functions
3. Running Totals
4. Time-Series Analysis
5. Aggregation
6. SQL Views

Purpose:
These queries demonstrate advanced SQL capabilities that support
business intelligence reporting and analytical decision-making.

===============================================================================
*/


/*=============================================================================
Query 1 : Top 5 Products by Profit
Objective:
Identify the five products generating the highest total profit to
understand product-level profitability.
=============================================================================*/

SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 5;



/*=============================================================================
Query 2 : Bottom 5 Products by Profit
Objective:
Identify the five least profitable products to highlight items
contributing the greatest financial losses.
=============================================================================*/

SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM orders
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 5;



/*=============================================================================
Query 3 : Top Customers using RANK()
Objective:
Rank customers according to their total sales using the SQL
RANK() window function.
=============================================================================*/

SELECT
    customer_name,
    ROUND(SUM(sales),2) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(sales) DESC
    ) AS customer_rank
FROM orders
GROUP BY customer_name;



/*=============================================================================
Query 4 : Monthly Sales Trend
Objective:
Analyze monthly sales trends across different years to identify
seasonality and long-term business growth patterns.
=============================================================================*/

SELECT
    order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    ROUND(SUM(sales),2) AS monthly_sales
FROM orders
GROUP BY
    order_year,
    EXTRACT(MONTH FROM order_date)
ORDER BY
    order_year,
    order_month;



/*=============================================================================
Query 5 : Running Sales Total
Objective:
Calculate a cumulative sales total over time using a window
function to evaluate business growth.
=============================================================================*/

SELECT

    order_date,

    ROUND(SUM(sales),2) AS daily_sales,

    ROUND(
        SUM(SUM(sales))
        OVER(ORDER BY order_date),
        2
    ) AS running_sales

FROM orders

GROUP BY order_date

ORDER BY order_date;



/*=============================================================================
Query 6 : Average Profit by Region
Objective:
Compare average profitability across different regions to identify
high-performing geographic markets.
=============================================================================*/

SELECT

    region,

    ROUND(AVG(profit),2) AS average_profit

FROM orders

GROUP BY region

ORDER BY average_profit DESC;



/*=============================================================================
Query 7 : Create Sales Summary View
Objective:
Create a reusable SQL view that summarizes category-level sales,
profit, and quantity for reporting and dashboard development.
=============================================================================*/

CREATE OR REPLACE VIEW sales_summary AS

SELECT

    category,

    ROUND(SUM(sales),2) AS total_sales,

    ROUND(SUM(profit),2) AS total_profit,

    SUM(quantity) AS total_quantity

FROM orders

GROUP BY category;



/*=============================================================================
Query 8 : Display Sales Summary View

Objective:
Display the reusable business summary created in the previous step.
=============================================================================*/

SELECT *
FROM sales_summary;


/*===============================================================================
Advanced SQL Analysis Completed Successfully

This script demonstrates advanced SQL techniques including ranking,
window functions, cumulative analysis, time-series reporting, and
reusable SQL views. These techniques complement the Python analysis
and Power BI dashboard developed in this project.

Project Workflow Completed:

Python Data Cleaning
        ↓
SQL Data Validation
        ↓
Business Analysis
        ↓
Advanced SQL Analytics
        ↓
Power BI Dashboard

===============================================================================*/