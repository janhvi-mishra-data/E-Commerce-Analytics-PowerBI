# 🛒 E-Commerce Analytics Dashboard | Power BI

An end-to-end Business Intelligence project built using **Power BI**, **Power Query**, **DAX**, and the **Olist Brazilian E-Commerce Dataset**.

The project transforms raw transactional data into interactive dashboards that provide insights into sales performance, customer behavior, seller performance, product analytics, and customer reviews through an interactive multi-page Power BI report.

---

# 📌 Dashboard Overview

![Overview Dashboard](Dashboard%20Screenshots/01_Overview.jpg)

---

# 🎯 Project Objective

The objective of this project is to analyze an e-commerce business from multiple business perspectives and answer key questions such as:

- Which product categories generate the highest revenue?
- Which states contribute the highest sales?
- Which sellers perform the best?
- What is customer purchasing behavior?
- How do customer reviews impact business performance?
- What sales trends can be observed over time?

---

# 🛠 Tech Stack

- Power BI Desktop
- Power Query
- DAX
- Star Schema Data Modeling
- Microsoft Excel
- Olist Brazilian E-Commerce Dataset

---

# 📂 Dataset

**Source:** Olist Brazilian E-Commerce Public Dataset

The dataset includes:

- Customers
- Orders
- Order Items
- Products
- Sellers
- Reviews
- Payments
- Geolocation

---

# 🧹 Data Preparation

Data cleaning and transformation were performed using **Power Query**.

Major preprocessing steps include:

- Removed duplicate records
- Handled missing values
- Changed data types
- Merged required tables
- Built a Star Schema
- Created calculated columns
- Developed DAX measures
- Optimized the data model

---

# ⭐ Data Model

A Star Schema was implemented consisting of:

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

📄 The complete data model is available in:

**Documentation → Data_Model.png**

---

# 📊 Dashboard Pages

## 1️⃣ Executive Dashboard

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

![Overview Dashboard](Dashboard%20Screenshots/01_Overview.jpg)

---

## 2️⃣ Product Intelligence Dashboard

Analyzes product performance and category insights.

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

## 3️⃣ Customer Intelligence Dashboard

Provides customer demographics and purchasing insights.

### KPIs

- Total Customers
- Average Orders per Customer
- Average Customer Rating
- States Served

### Visuals

- Revenue by Customer State
- Customer Distribution Map
- Customer State Performance
- Top Customer States

### Preview

![Customers Dashboard](Dashboard%20Screenshots/03_Customers.jpg)

---

## 4️⃣ Seller Intelligence Dashboard

Evaluates seller performance across different regions.

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

![Sellers Dashboard](Dashboard%20Screenshots/04_Sellers.jpg)

---

## 5️⃣ Review Intelligence Dashboard

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

![Reviews Dashboard](Dashboard%20Screenshots/05_Reviews.jpg)

---

# ✨ Dashboard Features

- Interactive slicers
- Cross-filtering
- Dynamic KPI Cards
- Executive Insights
- Responsive Dashboard Layout
- Business-oriented UI
- Multi-page navigation
- Drill-down enabled visuals

---

# 📁 Repository Structure

```
E-Commerce-Analytics-Dashboard/
│
├── Dashboard Screenshots/
├── Data/
├── Documentation/
├── Power BI/
├── README.md
└── LICENSE
```

---

# 📈 Project Highlights

- End-to-End Business Intelligence Project
- Interactive Multi-page Dashboard
- Star Schema Data Modeling
- Power Query Data Cleaning
- Advanced DAX Calculations
- Professional Dashboard Design
- Business KPI Tracking
- Executive Reporting

---

# 🚀 Future Improvements

- SQL Data Extraction Pipeline
- Power BI Service Deployment
- Incremental Refresh
- Row Level Security (RLS)
- Forecasting using Power BI

---

# 👩‍💻 Author

## Janhvi Mishra

Computer Engineering Student | Aspiring Data Analyst | Power BI Developer

### LinkedIn

[https://www.linkedin.com/in/janhvi-mishra/](https://www.linkedin.com/in/janhvi-mishra-4ab72328a)

### GitHub

[https://github.com/janhvi-mishra-data](https://github.com/janhvi-mishra-data)

---

⭐ If you found this project helpful, consider giving it a star!
