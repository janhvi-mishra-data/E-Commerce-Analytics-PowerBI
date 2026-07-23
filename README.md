# 🛒 End-to-End E-Commerce Analytics | SQL • Power BI • DAX

<p align="left">

<img src="https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
<img src="https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black"/>
<img src="https://img.shields.io/badge/Power_Query-ETL-217346?style=for-the-badge"/>
<img src="https://img.shields.io/badge/DAX-Measures-0078D4?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Data_Model-Star_Schema-6A5ACD?style=for-the-badge"/>
<img src="https://img.shields.io/badge/License-MIT-2EA44F?style=for-the-badge"/>

</p>

---

## 📌 Overview

This project presents an **end-to-end Business Intelligence solution** built using **SQL, Power BI, Power Query, and DAX** on the **Olist Brazilian E-Commerce Public Dataset**.

It demonstrates the complete analytics lifecycle—from cleaning and exploring raw transactional data using SQL to transforming data with Power Query, designing a Star Schema, developing DAX measures, and building interactive Power BI dashboards for business decision-making.

The solution enables stakeholders to monitor sales performance, understand customer purchasing behavior, evaluate seller performance, analyze product trends, assess delivery efficiency, and track customer satisfaction through interactive dashboards and KPI reporting.

---

## 🎯 Business Objectives

The dashboard is designed to answer key business questions such as:

- Which product categories generate the highest revenue?
- Which products contribute the most revenue?
- Which customer and seller states contribute the highest sales?
- Who are the top-performing sellers?
- How do customers purchase across different regions?
- Which payment methods are most preferred?
- How efficiently are orders delivered?
- What sales trends can be observed over time?
- How do customer reviews reflect business performance?

---

# 🛠 Tech Stack

| Category | Technologies |
|-----------|--------------|
| Database | MySQL |
| Business Intelligence | Microsoft Power BI |
| Data Transformation | Power Query |
| Data Modeling | Star Schema |
| Analytics | DAX (Data Analysis Expressions) |
| Spreadsheet | Microsoft Excel |
| Version Control | Git & GitHub |

---

# 📂 Dataset

**Dataset Used:** Olist Brazilian E-Commerce Public Dataset

The dataset includes transactional and customer information across the following entities:

- Customers
- Orders
- Order Items
- Payments
- Products
- Sellers
- Reviews
- Product Categories
- Geolocation

### 📊 Dataset Summary

| Metric | Value |
|---------|------:|
| Orders | 99,441 |
| Customers | 96,096 |
| Products | 32,951 |
| Sellers | 3,095 |
| Payments | 103K+ |
| Reviews | 99K+ |
| Product Categories | 71 |

> **Note:** The original dataset is not included in this repository because of GitHub's file size limitations.

### Dataset Source

https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

# 🧹 Data Preparation

The data was cleaned, validated, transformed, and optimized before dashboard development.

Key preprocessing steps include:

- Removed duplicate records
- Handled missing values
- Standardized data types
- Validated data quality
- Merged relational datasets
- Created calculated columns
- Built a Star Schema data model
- Developed reusable DAX measures
- Optimized the model for reporting performance

---

# 💻 SQL Analysis

Before building the Power BI dashboard, the dataset was explored and analyzed using **MySQL** to extract business insights and validate data quality.

The SQL workflow includes:

- Data Cleaning
- Data Validation
- Exploratory Data Analysis (EDA)
- Business Analysis
- Advanced SQL Analytics

The project demonstrates practical usage of:

- Joins
- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Date Functions
- KPI Calculations

---

# ⭐ Data Model

The project follows a **Star Schema** architecture to improve analytical performance and simplify business reporting.

## Fact Tables

- Orders
- Order Items
- Payments
- Reviews

## Dimension Tables

- Customers
- Products
- Product Categories
- Sellers
- Date
- Geolocation

📄 Complete documentation including:

- Project Summary
- Schema Overview
- Data Dictionary
- Data Cleaning Log
- Star Schema Data Model
- Dashboard Pages
- DAX Measures

is available in:

**Documentation → Ecommerce_Project_Documentation.xlsx**

---

# 📊 Dashboard Pages

## 📈 Executive Dashboard

Provides a comprehensive overview of overall business performance through executive KPIs and interactive visualizations.

### KPIs

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Average Delivery Time
- Average Review Score

### Visuals

- Revenue Trend by Month
- Revenue by Product Category
- Monthly Orders
- Order Status Distribution

### Preview

![Executive Dashboard](Dashboard%20Screenshots/01_Overview.png)

---

## 📦 Product Intelligence Dashboard

Analyzes product performance, pricing trends, and category-wise sales insights.

### KPIs

- Total Products
- Product Categories
- Average Product Price
- Average Freight Cost

### Visuals

- Revenue by Product Category
- Highest Average Product Price
- Category Performance
- Top Selling Product Categories

### Preview

![Product Dashboard](Dashboard%20Screenshots/02_Products.png)

---

## 👥 Customer Intelligence Dashboard

Provides insights into customer purchasing behavior and geographical sales distribution.

### KPIs

- Total Customers
- Average Orders per Customer
- Average Customer Rating
- States Served

### Visuals

- Revenue by Customer State
- Customer Distribution
- Customer Performance
- Top Customer States

### Preview

![Customer Dashboard](Dashboard%20Screenshots/03_Customers.png)

---

## 🏪 Seller Intelligence Dashboard

Evaluates seller performance, logistics efficiency, and regional revenue contribution.

### KPIs

- Total Sellers
- Total Revenue
- Average Orders per Seller
- Average Delivery Time

### Visuals

- Top Seller States by Revenue
- Top Seller States by Orders
- Seller Performance Summary
- Average Freight Cost by Seller State

### Preview

![Seller Dashboard](Dashboard%20Screenshots/04_Sellers.png)

---

## ⭐ Review Intelligence Dashboard

Analyzes customer satisfaction through review scores and feedback trends.

### KPIs

- Total Reviews
- Average Review Score
- Positive Reviews
- Negative Reviews

### Visuals

- Review Score Distribution
- Most Reviewed Categories
- Category-wise Review Performance
- Review Sentiment Distribution

### Preview

![Review Dashboard](Dashboard%20Screenshots/05_Reviews.png)

---

# 💻 SQL Modules

The repository includes structured SQL scripts covering the complete analytical workflow before dashboard development.

| SQL Script | Description |
|------------|-------------|
| **01_Data_Cleaning.sql** | Data quality checks, duplicate detection, null value analysis, datatype conversion, and data validation |
| **02_Data_Exploration.sql** | Exploratory Data Analysis (EDA), descriptive statistics, and dataset profiling |
| **03_Business_Analysis.sql** | Sales analysis, customer insights, seller performance, payment analysis, delivery analysis, and KPI calculations |
| **04_Advanced_SQL.sql** | Common Table Expressions (CTEs), Window Functions, Ranking Functions, Running Totals, Customer Segmentation, and Revenue Contribution Analysis |

---

# ✨ Dashboard Features

- Interactive KPI Cards
- Executive Business Reporting
- Multi-page Dashboard Navigation
- Dynamic Slicers
- Cross-filtering
- Drill-through Analysis
- Star Schema Data Model
- Advanced DAX Measures
- Business-oriented Visualizations
- Responsive Dashboard Layout

---

# 📥 Power BI Dashboard

The complete **Power BI (.pbix)** file is hosted on **Google Drive** because it exceeds GitHub's file size limit.

### 📂 Download Dashboard

**Google Drive**

https://drive.google.com/drive/folders/1AUmkHGm_dK0PQWm_1weuOroy97x2Yt07?usp=drive_link

The folder includes:

- Complete Power BI Dashboard (.pbix)
- Supporting Project Files

---

# 📁 Repository Structure

```text
End-to-End-E-Commerce-Analytics/
│
├── Dashboard Screenshots/
│   ├── 01_Overview.png
│   ├── 02_Products.png
│   ├── 03_Customers.png
│   ├── 04_Sellers.png
│   └── 05_Reviews.png
│
├── Documentation/
│   └── Ecommerce_Project_Documentation.xlsx
│
├── SQL/
│   ├── 01_Data_Cleaning.sql
│   ├── 02_Data_Exploration.sql
│   ├── 03_Business_Analysis.sql
│   └── 04_Advanced_SQL.sql
│
├── Power BI/
│   ├── README.md
│   └── Theme.json
│
├── README.md
└── LICENSE
```

---

# 📄 Documentation

The project documentation includes:

- 📌 Project Summary
- 📖 Data Dictionary
- 🗂 Schema Overview
- 🧹 Data Cleaning Log
- ⭐ Star Schema Data Model
- 📊 Dashboard Overview
- 📈 DAX Measures
- 📋 Business KPIs

Documentation File:

**Documentation → Ecommerce_Project_Documentation.xlsx**

---

# 💼 Skills Demonstrated

### SQL

- Data Cleaning
- Data Validation
- Joins
- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Date Functions

### Power BI

- Interactive Dashboard Development
- Power Query (ETL)
- Star Schema Data Modeling
- DAX Measures
- KPI Reporting
- Drill-through Reports
- Data Storytelling

### Business Analytics

- Exploratory Data Analysis (EDA)
- Customer Analytics
- Sales Analytics
- Product Analytics
- Seller Performance Analysis
- Business KPI Tracking
- Executive Reporting

---

# 📈 Project Highlights

- ✅ End-to-End Business Intelligence Project
- ✅ SQL-Based Data Cleaning & Analysis
- ✅ Interactive Multi-page Power BI Dashboard
- ✅ ETL using Power Query
- ✅ Star Schema Data Modeling
- ✅ Advanced DAX Calculations
- ✅ Executive KPI Reporting
- ✅ Customer, Product & Seller Analytics
- ✅ Professional Dashboard Design
- ✅ Business-Focused Data Storytelling

---

# 🚀 Future Enhancements

- Deploy dashboard using Power BI Service
- Configure Incremental Refresh
- Implement Row-Level Security (RLS)
- Build Automated SQL ETL Pipelines
- Integrate Real-time Data Sources
- Develop Predictive Sales Forecasting Models

---

# 👩‍💻 Author

## Janhvi Mishra

**Computer Engineering Student | Aspiring Data Analyst | Business Intelligence Enthusiast**

📧 **Email**

mjanhvi0707@gmail.com

🔗 **LinkedIn**

https://www.linkedin.com/in/janhvi-mishra-4ab72328a

💻 **GitHub**

https://github.com/janhvi-mishra-data

---

# 🤝 Let's Connect

I'm always open to discussions about:

- Data Analytics
- SQL
- Power BI
- Business Intelligence
- Dashboard Development
- Data Visualization

Feel free to connect with me on LinkedIn!

---

# ⭐ Support

If you found this project useful, consider giving it a **Star ⭐**.

Your support motivates me to build and share more data analytics projects.

---

<p align="center">
<b>Thank you for visiting! 🚀</b>
</p>
