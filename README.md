# 🛒 End-to-End E-Commerce Analytics | SQL • Power BI • DAX

<p align="left">

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Power Query](https://img.shields.io/badge/Power_Query-ETL-217346?style=for-the-badge)
![DAX](https://img.shields.io/badge/DAX-Measures-0078D4?style=for-the-badge)
![Star Schema](https://img.shields.io/badge/Data_Model-Star_Schema-6A5ACD?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-2EA44F?style=for-the-badge)

</p>

---

## 📌 Overview

This project presents an **end-to-end Business Intelligence solution** built using **SQL, Power BI, Power Query, and DAX** on the **Olist Brazilian E-Commerce Dataset**.

It demonstrates the complete analytics lifecycle—from importing raw transactional data to performing SQL-based business analysis, designing a Star Schema data model, developing DAX measures, and creating executive dashboards for business decision-making.

The project focuses on helping stakeholders understand sales performance, customer behavior, seller efficiency, product performance, logistics, and customer satisfaction through interactive visualizations and analytical reporting.

---

## 🎯 Business Objectives

The dashboard is designed to answer key business questions such as:

- Which product categories generate the highest revenue?
- Which products contribute the most sales?
- Which states contribute the highest business revenue?
- Who are the top-performing sellers?
- What purchasing patterns do customers exhibit?
- Which payment methods are most preferred?
- How long does delivery typically take?
- What trends can be observed over time?
- How do customer reviews reflect business performance?

---

# 🛠 Tech Stack

| Category | Technologies |
|-----------|--------------|
| Database | MySQL |
| Business Intelligence | Microsoft Power BI |
| Data Transformation | Power Query |
| Analytics | DAX |
| Spreadsheet | Microsoft Excel |
| Data Modeling | Star Schema |
| Version Control | Git & GitHub |

---

# 📂 Dataset

**Dataset Used:** Olist Brazilian E-Commerce Public Dataset

The dataset contains information regarding:

- Customers
- Orders
- Order Items
- Payments
- Products
- Sellers
- Reviews
- Product Categories
- Geolocation

> **Note:** The original dataset is not uploaded to this repository due to GitHub's file size limitations.

**Dataset Source**

https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

# 🧹 Data Preparation

The data was cleaned and transformed using **Power Query** before creating dashboards.

Major preprocessing steps include:

- Removed duplicate records
- Handled missing values
- Standardized data types
- Merged relational datasets
- Created calculated columns
- Built a Star Schema
- Optimized relationships
- Developed reusable DAX measures
- Prepared data for dashboard reporting

---

# 🗄 SQL Analysis

Before building the Power BI dashboard, business insights were explored using **MySQL**.

The SQL workflow includes:

- Data Cleaning
- Data Validation
- Exploratory Data Analysis
- Business Analysis
- Advanced SQL Analytics

The project demonstrates practical use of:

- Joins
- Aggregate Functions
- CASE Statements
- CTEs
- Window Functions
- Ranking Functions
- Date Functions
- KPI Calculations

---

# ⭐ Data Model

The dashboard follows a **Star Schema** architecture to improve performance and simplify analytical reporting.

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
- Data Model
- Dashboard Pages
- DAX Measures

is available in:

**Documentation → Ecommerce_Project_Documentation.xlsx**

---

# 📊 Dashboard Pages

## 📈 Executive Dashboard

Provides a high-level overview of business performance.

### KPIs

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Average Delivery Time
- Average Review Score

### Visuals

- Revenue Trend
- Revenue by Product Category
- Monthly Orders
- Order Status Distribution

### Preview

![Executive Dashboard](Dashboard%20Screenshots/01_Overview.jpg)

---

## 📦 Product Intelligence Dashboard

Provides insights into product pricing and category performance.

### KPIs

- Total Products
- Product Categories
- Average Product Price
- Average Freight Cost

### Visuals

- Revenue by Category
- Product Performance
- Highest Average Product Price
- Top Selling Categories

### Preview

![Product Dashboard](Dashboard%20Screenshots/02_Products.jpg)

---

## 👥 Customer Intelligence Dashboard

Analyzes customer purchasing behavior and geographical distribution.

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

![Customer Dashboard](Dashboard%20Screenshots/03_Customers.jpg)

---

## 🏪 Seller Intelligence Dashboard

Evaluates seller performance, revenue contribution, and logistics efficiency.

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

![Seller Dashboard](Dashboard%20Screenshots/04_Sellers.jpg)

---

## ⭐ Review Intelligence Dashboard

Analyzes customer satisfaction and review trends.

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

![Review Dashboard](Dashboard%20Screenshots/05_Reviews.jpg)

---

# 💻 SQL Modules

The repository also contains SQL scripts demonstrating the complete analytical workflow before dashboard development.

| SQL File | Description |
|----------|-------------|
| **01_Data_Cleaning.sql** | Data cleaning, validation, null handling, duplicate checks, datatype conversion and integrity verification |
| **02_Data_Exploration.sql** | Exploratory Data Analysis (EDA), descriptive statistics, data profiling and dataset exploration |
| **03_Business_Analysis.sql** | Revenue analysis, customer insights, seller performance, payment analysis, logistics insights and KPI calculations |
| **04_Advanced_SQL.sql** | Common Table Expressions (CTEs), Window Functions, Ranking, Running Totals, Customer Segmentation, Revenue Contribution and Advanced SQL Analytics |

---

# ✨ Dashboard Features

- Interactive slicers
- Cross-filtering
- Dynamic KPI Cards
- Executive Insights
- Multi-page navigation
- Drill-through enabled visuals
- Responsive dashboard layout
- Business-oriented reporting
- Interactive filtering
- Professional dashboard design

---

# 📥 Power BI Dashboard

The complete **Power BI (.pbix)** dashboard is hosted on **Google Drive** because GitHub does not allow files larger than 100 MB.

📂 **Download Power BI Dashboard**

https://drive.google.com/drive/folders/1AUmkHGm_dK0PQWm_1weuOroy97x2Yt07?usp=drive_link

> The Google Drive folder contains the complete Power BI dashboard along with the supporting project files.

---

# 📁 Repository Structure

```text
End-to-End-E-Commerce-Analytics/
│
├── Dashboard Screenshots/
│   ├── 01_Overview.jpg
│   ├── 02_Products.jpg
│   ├── 03_Customers.jpg
│   ├── 04_Sellers.jpg
│   └── 05_Reviews.jpg
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
│
├── README.md
│
└── LICENSE
```

---

# 📄 Documentation

The project documentation provides detailed information regarding:

- 📌 Project Summary
- 📊 Business Objectives
- 🗂 Schema Overview
- 📖 Data Dictionary
- 🧹 Data Cleaning Log
- ⭐ Star Schema Data Model
- 📈 Dashboard Pages
- 📐 DAX Measures
- 📊 Business KPIs

Documentation File:

**Documentation → Ecommerce_Project_Documentation.xlsx**

---

# 💼 Key Skills Demonstrated

### Data Analysis

- Exploratory Data Analysis (EDA)
- Business Analysis
- KPI Reporting
- Trend Analysis
- Customer Analytics
- Sales Analytics
- Data Storytelling

### SQL

- Data Cleaning
- Data Validation
- Joins
- Aggregate Functions
- CTEs
- Window Functions
- Ranking Functions
- CASE Statements
- Date Functions

### Power BI

- Interactive Dashboard Development
- DAX Measures
- Power Query
- Data Modeling
- Star Schema Design
- Drill-through Reports
- KPI Cards
- Dynamic Visualizations

---

# 📈 Project Highlights

- End-to-End Data Analytics Project
- SQL-Based Data Cleaning & Business Analysis
- Interactive Multi-page Power BI Dashboard
- ETL using Power Query
- Star Schema Data Modeling
- Advanced DAX Calculations
- Business KPI Tracking
- Executive-Level Reporting
- Customer, Product & Seller Analytics
- Professional Dashboard Design

---

# 🚀 Future Improvements

- Power BI Service Deployment
- Incremental Data Refresh
- Row-Level Security (RLS)
- Predictive Sales Forecasting
- Automated SQL ETL Pipeline
- Real-time Database Integration
- Interactive Power BI Web App

---

# 👩‍💻 Author

## Janhvi Mishra

**Computer Engineering Student | Aspiring Data Analyst | Business Intelligence Enthusiast**

📧 Email

mjanhvi0707@gmail.com

🔗 LinkedIn

https://www.linkedin.com/in/janhvi-mishra-4ab72328a

💻 GitHub

https://github.com/janhvi-mishra-data

---

# 🤝 Connect With Me

I'm always open to discussing:

- Data Analytics
- Power BI
- SQL
- Business Intelligence
- Dashboard Development
- Data Visualization

Feel free to connect with me on LinkedIn!

---

# ⭐ If you found this project helpful...

Please consider giving this repository a **Star ⭐**.

It motivates me to continue building more analytics projects and sharing them with the community.

---

## Thank you for visiting! 🚀
