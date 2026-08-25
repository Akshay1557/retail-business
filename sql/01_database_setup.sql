/*
===============================================================================
Project : Retail Intelligence Business Analytics
File    : 01_database_setup.sql
Author  : Akshay Kumar

Description:
This script initializes the PostgreSQL database structure for the
Retail Intelligence Business Analytics project. It creates the
database and the Orders table that will store the cleaned retail
dataset generated from the Python data preprocessing pipeline.


Steps:
1. Create the database.
2. Connect to the database.
3. Create the orders table.
4. Import the cleaned CSV dataset using PostgreSQL Import Wizard.

Note:
The dataset import is intentionally not included because the file path
varies across different systems. Refer to the project README for
dataset import instructions.

===============================================================================
*/


/*----------------------------------------------------------------------------
Step 1 : Create Database
----------------------------------------------------------------------------*/

CREATE DATABASE retail_intelligence_db;


/*----------------------------------------------------------------------------
Step 2 : Connect to Database

Run the following command in psql:

\c retail_intelligence_db

Simply select "retail_intelligence_db" from pgAdmin Query Tool
before executing the remaining statements.
----------------------------------------------------------------------------*/


/*----------------------------------------------------------------------------
Step 3 : Create Orders Table

The table stores cleaned retail transaction records generated after
Python-based data cleaning and feature engineering. These fields will
be used for SQL business analysis and Power BI dashboard reporting.
----------------------------------------------------------------------------*/

CREATE TABLE orders (

    row_id INTEGER,

    order_id VARCHAR(30),

    order_date DATE,

    ship_date DATE,

    ship_mode VARCHAR(50),

    customer_id VARCHAR(30),

    customer_name VARCHAR(150),

    segment VARCHAR(50),

    postal_code VARCHAR(20),

    city VARCHAR(100),

    state VARCHAR(100),

    country VARCHAR(100),

    region VARCHAR(100),

    market VARCHAR(100),

    product_id VARCHAR(30),

    product_name TEXT,

    sub_category VARCHAR(100),

    category VARCHAR(100),

    sales NUMERIC(12,2),

    quantity INTEGER,

    discount NUMERIC(5,2),

    profit NUMERIC(12,2),

    shipping_cost NUMERIC(12,2),

    order_priority VARCHAR(30),

    delivery_days INTEGER,

    profit_margin_percent NUMERIC(8,2),

    loss_order VARCHAR(10),

    sales_category VARCHAR(30),

    discount_band VARCHAR(30),

    order_year INTEGER

);


/*----------------------------------------------------------------------------
Database Setup Completed successfully

The database schema has been created successfully and is now ready
for importing the cleaned retail dataset.
----------------------------------------------------------------------------*/