/*
===============================================================================
Retail Intelligence Business Analytics

File        : 02_data_validation.sql
Author      : Akshay Kumar

Description:
This script performs an initial validation of the imported retail dataset
to verify its completeness, structure, and overall quality before
conducting business analysis.

Validation includes:
1. Record count verification
2. Table structure validation
3. Date range verification
4. Missing value detection
5. Duplicate record identification
6. Category and segment validation
7. Numerical summary statistics

Purpose:
These checks ensure that the dataset has been imported correctly and is
ready for analytical SQL queries and Power BI reporting.

===============================================================================
*/


/*=============================================================================
Query 1 : Total Records
Objective:

Confirm that the expected number of retail transactions has been imported
into the Orders table.
=============================================================================*/

SELECT COUNT(*) AS total_records
FROM orders;



/*=============================================================================
Query 2 : Total Columns
Objective:
Verify that the Orders table contains the expected number of columns after
database creation.
=============================================================================*/

SELECT COUNT(*) AS total_columns
FROM information_schema.columns
WHERE table_name = 'orders';



/*=============================================================================
Query 3 : Date Range
Objective:
Determine the earliest and latest order dates to identify the time period
covered by the retail dataset.
=============================================================================*/

SELECT
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order
FROM orders;



/*=============================================================================
Query 4 : Missing Values Check
Objective:
Check critical business columns for missing values that could affect
business analysis and dashboard accuracy.
=============================================================================*/

SELECT

    COUNT(*) FILTER (WHERE sales IS NULL) AS missing_sales,

    COUNT(*) FILTER (WHERE profit IS NULL) AS missing_profit,

    COUNT(*) FILTER (WHERE quantity IS NULL) AS missing_quantity,

    COUNT(*) FILTER (WHERE category IS NULL) AS missing_category,

    COUNT(*) FILTER (WHERE customer_name IS NULL) AS missing_customer,

    COUNT(*) FILTER (WHERE order_date IS NULL) AS missing_order_date

FROM orders;



/*=============================================================================
Query 5 : Duplicate Order IDs
Objective:
Identify duplicate Order IDs that may indicate repeated transactions
or data integrity issues.
=============================================================================*/

SELECT

    order_id,

    COUNT(*) AS duplicate_count

FROM orders

GROUP BY order_id

HAVING COUNT(*) > 1

ORDER BY duplicate_count DESC;



/*=============================================================================
Query 6 : Distinct Categories
Objective:
Retrieve all unique product categories to verify categorical consistency
within the dataset.
=============================================================================*/

SELECT DISTINCT category
FROM orders
ORDER BY category;



/*=============================================================================
Query 7 : Distinct Markets
Objective:
Retrieve all distinct markets represented in the retail dataset.
=============================================================================*/

SELECT DISTINCT market
FROM orders
ORDER BY market;



/*=============================================================================
Query 8 : Distinct Customer Segments
Objective:
List all customer segments available for business analysis and reporting.
=============================================================================*/

SELECT DISTINCT segment
FROM orders
ORDER BY segment;



/*=============================================================================
Query 9 : Sales Summary
Objective:
Review the distribution of Sales by calculating minimum, maximum,
and average values.
=============================================================================*/

SELECT

    MIN(sales) AS minimum_sales,

    MAX(sales) AS maximum_sales,

    ROUND(AVG(sales),2) AS average_sales

FROM orders;



/*=============================================================================
Query 10 : Profit Summary
Objective:
Review the distribution of Profit by calculating minimum, maximum,
and average values.
=============================================================================*/

SELECT

    MIN(profit) AS minimum_profit,

    MAX(profit) AS maximum_profit,

    ROUND(AVG(profit),2) AS average_profit

FROM orders;



/*=============================================================================
Data Validation Completed Successfully

The dataset has been verified for completeness, consistency, and
basic quality checks. The validated dataset is now ready for
business analysis using SQL.

=============================================================================*/