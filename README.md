# 🛒 E-Commerce Analytics Dashboard | Power BI

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-Measures-0078D4?style=for-the-badge)
![Power Query](https://img.shields.io/badge/Power_Query-ETL-217346?style=for-the-badge)
![Star Schema](https://img.shields.io/badge/Data_Model-Star_Schema-6A5ACD?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-2EA44F?style=for-the-badge)

An end-to-end **Business Intelligence** project developed using **Power BI**, **Power Query**, and **DAX** to analyze the **Olist Brazilian E-Commerce Public Dataset**. The project transforms raw transactional data into interactive dashboards, providing actionable insights into sales performance, customer behavior, product analytics, seller performance, and customer satisfaction.

---

# 📌 Project Overview

This project presents a complete Business Intelligence solution for analyzing an e-commerce business. It demonstrates the entire analytics workflow—from data cleaning and transformation to data modeling, DAX calculations, and interactive dashboard development.

The solution follows a **Star Schema** architecture and consists of **five interactive dashboard pages**, enabling stakeholders to monitor business performance, identify trends, evaluate operational efficiency, and support data-driven decision-making.

---

# 🎯 Project Objectives

This dashboard helps answer important business questions, including:

- Which product categories generate the highest revenue?
- Which categories sell the most products?
- Which states contribute the highest sales?
- Which sellers perform the best?
- How do customers behave across different regions?
- How do customer reviews reflect business performance?
- What sales trends can be observed over time?

---

# 🛠️ Tech Stack

- Microsoft Power BI Desktop
- Power Query
- DAX (Data Analysis Expressions)
- Microsoft Excel
- Star Schema Data Modeling

---

# 📂 Dataset

**Source:** Olist Brazilian E-Commerce Public Dataset

The project is built using the Olist dataset, which contains information related to:

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews
- Geolocation

> **Note:** The original dataset is **not included** in this repository due to its large size.

**Dataset Source:**  
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

# 🧹 Data Preparation

Data preprocessing and transformation were performed using **Power Query**.

Key transformation steps include:

- Removed duplicate records
- Handled missing values
- Changed data types
- Merged required tables
- Created calculated columns
- Built a Star Schema data model
- Developed DAX measures
- Optimized the data model for reporting

---

# ⭐ Data Model

The project follows a **Star Schema** architecture consisting of Fact and Dimension tables to improve report performance and simplify analysis.

### Fact Tables

- Fact Orders
- Fact Order Items
- Fact Order Payments
- Fact Order Reviews

### Dimension Tables

- Customers
- Products
- Product Categories
- Sellers
- Date
- Geolocation

📄 The complete documentation, including the **Project Summary, Schema Overview, Data Dictionary, Data Cleaning Log, Data Model, Dashboard Pages, and DAX Measures**, is available in:

**Documentation → Ecommerce_Project_Documentation.xlsx**

---

# 📊 Dashboard Pages

## 📈 1. Executive Dashboard

Provides a complete overview of business performance.

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

![Executive Dashboard](Dashboard%20Screenshots/01_Overview.jpg)

---

## 📦 2. Product Intelligence Dashboard

Analyzes product pricing and category performance.

### KPIs

- Total Products
- Product Categories
- Average Product Price
- Average Freight Cost

### Visuals

- Highest Average Product Price by Category
- Revenue by Product Category
- Category-wise Product Performance
- Top Selling Product Categories

### Preview

![Products Dashboard](Dashboard%20Screenshots/02_Products.jpg)

---

## 👥 3. Customer Intelligence Dashboard

Analyzes customer behavior and geographical distribution.

### KPIs

- Total Customers
- Average Orders per Customer
- Average Customer Rating
- States Served

### Visuals

- Revenue by Customer State
- Customer Distribution
- Customer State Performance
- Top Customer States

### Preview

![Customers Dashboard](Dashboard%20Screenshots/03_Customers.jpg)

---

## 🏪 4. Seller Intelligence Dashboard

Evaluates seller performance and logistics efficiency.

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

## ⭐ 5. Review Intelligence Dashboard

Analyzes customer satisfaction using review data.

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

# ✨ Dashboard Features

- Interactive slicers
- Cross-filtering
- Dynamic KPI Cards
- Executive Insights
- Multi-page navigation
- Drill-down enabled visuals
- Responsive dashboard layout
- Professional business reporting design

---

# 📥 Power BI Dashboard

The complete **Power BI (.pbix)** dashboard is hosted on **Google Drive** due to GitHub's file size limitations.

**📂 Download Here:**  
https://drive.google.com/drive/folders/1AUmkHGm_dK0PQWm_1weuOroy97x2Yt07?usp=drive_link

> **Note:** The Google Drive folder contains the complete Power BI dashboard and supporting project files.

---

# 📁 Repository Structure

```text
E-Commerce-Analytics-PowerBI/
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
├── Power BI/
│
├── README.md
└── LICENSE
```

---

# 📄 Documentation

The repository includes detailed project documentation covering:

- 📌 Project Summary
- 🗂️ Schema Overview
- 📖 Data Dictionary
- 🧹 Data Cleaning Log
- ⭐ Star Schema Data Model
- 📊 Dashboard Pages
- 📈 DAX Measures

The documentation provides a complete understanding of the project's data architecture, transformation process, business logic, and dashboard development.

---

# 📈 Project Highlights

- End-to-End Business Intelligence Project
- Interactive Multi-page Dashboard
- Star Schema Data Modeling
- Data Cleaning using Power Query
- Advanced DAX Calculations
- Business KPI Tracking
- Executive-Level Reporting
- Professional Dashboard Design

---

# 🚀 Future Improvements

- SQL-based business analysis
- Power BI Service deployment
- Incremental Refresh
- Row-Level Security (RLS)
- Predictive sales forecasting

---

# 👩‍💻 Author

## Janhvi Mishra

**Computer Engineering Student | Aspiring Data Analyst | Business Intelligence Enthusiast**

🔗 **LinkedIn**  
https://www.linkedin.com/in/janhvi-mishra-4ab72328a

💻 **GitHub**  
https://github.com/janhvi-mishra-data

---

## ⭐ Support

If you found this project helpful, consider giving this repository a **Star ⭐**.

Thank you for visiting!
