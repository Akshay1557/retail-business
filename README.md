# 📊 Retail Business Analytics

An end-to-end **Retail Business Analytics** project that transforms raw retail transaction data into actionable business insights using **Python, PostgreSQL, SQL, and Power BI**.

The project follows a complete analytics workflow — from data understanding and quality assessment to data cleaning, feature engineering, SQL-based business analysis, and interactive Power BI visualization.

---

## 📌 Project Overview

Retail businesses generate large volumes of transactional data containing information about customers, products, sales, discounts, shipping, and profitability.

However, raw transaction data alone does not provide clear answers to important business questions.

This project analyzes retail data to identify:

* Sales and revenue performance
* Profitability and profit margins
* Product and category performance
* Customer segment contribution
* Regional and market performance
* Discount impact on profitability
* Loss-making transactions
* Sales trends over time

The final output is an **interactive Power BI dashboard** designed to help stakeholders make data-driven business decisions.

---

## 🎯 Project Objectives

The main objectives of this project are:

* Clean and preprocess raw retail transaction data using Python
* Perform data quality assessment and validation
* Engineer business-oriented analytical features
* Perform exploratory data analysis
* Store processed data in PostgreSQL
* Validate data using SQL
* Perform business analysis using SQL queries
* Apply advanced SQL techniques such as ranking and window functions
* Build an interactive Power BI dashboard
* Generate actionable business insights

---

## 🛠️ Technology Stack

| Technology      | Purpose                                 |
| --------------- | --------------------------------------- |
| 🐍 Python       | Data cleaning, preprocessing & analysis |
| 🐼 Pandas       | Data manipulation                       |
| 🔢 NumPy        | Numerical operations                    |
| 📊 Matplotlib   | Data visualization                      |
| 🗄️ PostgreSQL  | Database management                     |
| 📝 SQL          | Business analysis & data validation     |
| 📈 Power BI     | Interactive dashboard                   |
| 🌿 Git & GitHub | Version control                         |

---

## 🔄 Project Workflow

```text
                 Raw Retail Dataset
                        │
                        ▼
             Data Understanding
                        │
                        ▼
             Data Quality Assessment
                        │
                        ▼
          Data Cleaning & Preprocessing
                        │
                        ▼
             Feature Engineering
                        │
                        ▼
              Exploratory Analysis
                        │
                        ▼
              PostgreSQL Database
                        │
                        ▼
          SQL Validation & Analysis
                        │
                        ▼
             Advanced SQL Analysis
                        │
                        ▼
             Power BI Dashboard
                        │
                        ▼
            Business Insights
```

---

## 📂 Dataset

The project uses the **Global Superstore dataset**, which contains retail transactions across multiple markets, regions, customer segments, and product categories.

### Dataset Information

The dataset contains information related to:

* Customer details
* Order information
* Product information
* Sales
* Profit
* Discount
* Quantity
* Shipping
* Geographic information

### Engineered Features

Additional business-focused features were created during preprocessing, including:

* Delivery Days
* Profit Margin (%)
* Sales Category
* Discount Band
* Loss Order Indicator
* Order Year

---

## 📁 Project Structure

```text
retail-business/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebook/
│   ├── 01_Data_Understanding.ipynb
│   ├── 02_Data_Quality_Assessment.ipynb
│   ├── 03_Data_Cleaning_and_Feature_Engineering.ipynb
│   └── 04_Sales_and_Profit_Performance_Analysis.ipynb
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_data_validation.sql
│   ├── 03_business_analysis.sql
│   └── 04_advanced_sql.sql
│
├── dashboard/
│   └── Retail_Intelligence_Dashboard.pbix
│
├── images/
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

# 🐍 Python Analytics

Python was used as the first stage of the analytics pipeline.

### Data Processing Workflow

The notebooks cover:

1. Data Understanding
2. Data Quality Assessment
3. Data Cleaning
4. Missing Value Validation
5. Duplicate Detection
6. Feature Engineering
7. Exploratory Data Analysis
8. Processed Dataset Generation

The processed dataset is then prepared for database storage and further SQL analysis.

---

# 🗄️ PostgreSQL & SQL Analytics

After preprocessing, the cleaned dataset is loaded into **PostgreSQL**.

SQL is used to validate the processed data and answer important business questions.

### SQL Modules

#### 1. Database Setup

* Database creation
* Table creation
* Data import

#### 2. Data Validation

* Missing value checks
* Duplicate detection
* Data quality checks
* Record validation

#### 3. Business Analysis

The analysis covers:

* Sales performance
* Profitability
* Product performance
* Customer segments
* Regional performance
* Market analysis

#### 4. Advanced SQL

Advanced SQL techniques include:

* Window functions
* Ranking functions
* Running totals
* Monthly trends
* SQL views

---

# 📈 Power BI Dashboard

The final stage of the project is an interactive **Power BI dashboard**.

The dashboard converts the analytical results into an easy-to-understand business intelligence interface.

### Dashboard Features

* 📊 Executive KPI overview
* 💰 Sales and profit analysis
* 🛍️ Category and sub-category analysis
* 🌍 Regional and market performance
* 👥 Customer segment analysis
* 📅 Time-based performance analysis
* 🎯 Interactive filters
* 🔎 Drill-down analysis

### Dashboard Preview

Screenshots of the dashboard are available in the `images/` directory.

---

# 💡 Key Business Insights

The analysis highlights several important retail business patterns:

### 📈 Sales Performance

Technology products generated the highest overall sales among the analyzed categories.

### 💰 Sales vs Profit

Higher sales do not necessarily result in higher profitability. Revenue performance must therefore be evaluated together with profit and margin.

### 🌍 Regional Performance

Sales and profitability vary significantly across different regions and markets, highlighting opportunities for regional optimization.

### 👥 Customer Segments

Different customer segments contribute differently to overall sales and profit, making customer-segment analysis important for business strategy.

### 🎯 Discount Impact

Higher discount levels can reduce profit margins, demonstrating the importance of balancing promotional strategies with profitability.

---

# 🚀 Getting Started

## 1. Clone the Repository

```bash
git clone https://github.com/Akshay1557/retail-business.git
```

```bash
cd retail-business
```

## 2. Create a Python Virtual Environment

```bash
python -m venv venv
```

### Windows

```bash
venv\Scripts\activate
```

## 3. Install Dependencies

```bash
pip install -r requirements.txt
```

## 4. Run the Notebooks

Open the project using **Jupyter Notebook** or **VS Code** and execute the notebooks in order:

```text
01_Data_Understanding
        ↓
02_Data_Quality_Assessment
        ↓
03_Data_Cleaning_and_Feature_Engineering
        ↓
04_Sales_and_Profit_Performance_Analysis
```

## 5. PostgreSQL Setup

Execute the SQL scripts in the following order:

```text
01_database_setup.sql
        ↓
02_data_validation.sql
        ↓
03_business_analysis.sql
        ↓
04_advanced_sql.sql
```

Update the database connection details according to your local PostgreSQL configuration.

## 6. Open the Power BI Dashboard

Open:

```text
dashboard/Retail_Intelligence_Dashboard.pbix
```

using **Power BI Desktop**.

---

# 📊 Key Deliverables

This project demonstrates an end-to-end analytics solution consisting of:

* ✅ Data Understanding
* ✅ Data Quality Assessment
* ✅ Data Cleaning
* ✅ Feature Engineering
* ✅ Exploratory Data Analysis
* ✅ PostgreSQL Database
* ✅ SQL Data Validation
* ✅ Business SQL Analysis
* ✅ Advanced SQL
* ✅ Power BI Dashboard
* ✅ Business Insights

---

# 🎓 Skills Demonstrated

### Data Analytics

* Data Cleaning
* Data Preprocessing
* Exploratory Data Analysis
* Feature Engineering
* Business Analysis

### SQL & Database

* PostgreSQL
* SQL Queries
* Data Validation
* Aggregations
* Joins
* Window Functions
* Ranking
* Running Totals
* Views

### Business Intelligence

* Power BI
* KPI Development
* Interactive Dashboards
* Data Visualization
* Drill-down Analysis
* Business Reporting

### Tools

* Python
* Jupyter Notebook
* PostgreSQL
* Power BI
* Git
* GitHub

---

# 🔮 Future Improvements

Possible future enhancements include:

* Adding automated ETL pipelines
* Automating data refresh
* Adding predictive sales forecasting
* Customer lifetime value analysis
* Customer churn analysis
* Advanced customer segmentation
* Automated Power BI refresh
* Deployment of analytics results through a web application

---

# 👨‍💻 Author

**Akshay**

GitHub:
https://github.com/Akshay1557

---

## ⭐ Project

If you find this project useful, consider giving the repository a ⭐ on GitHub.

**Repository:**
https://github.com/Akshay1557/retail-business
