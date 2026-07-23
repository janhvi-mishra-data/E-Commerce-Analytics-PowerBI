-- =============================================================
-- Project : E-Commerce Analytics Dashboard
-- File    : 02_Data_Exploration.sql
-- Author  : Janhvi Mishra
-- Purpose : Exploratory Data Analysis (EDA)
-- =============================================================

USE ecommerce_db;

-- =============================================================
-- 1. Total Records in Each Table
-- =============================================================

SELECT COUNT(*) AS total_customers
FROM olist_customers_dataset;

SELECT COUNT(*) AS total_orders
FROM olist_orders_dataset;

SELECT COUNT(*) AS total_order_items
FROM olist_order_items_dataset;

SELECT COUNT(*) AS total_payments
FROM olist_order_payments_dataset;

SELECT COUNT(*) AS total_products
FROM olist_products_dataset;

SELECT COUNT(*) AS total_sellers
FROM olist_sellers_dataset;

-- =============================================================
-- 2. Unique Customers
-- =============================================================

SELECT COUNT(DISTINCT customer_unique_id) AS unique_customers
FROM olist_customers_dataset;

-- =============================================================
-- 3. Unique Product Categories
-- =============================================================

SELECT COUNT(DISTINCT product_category_name) AS total_categories
FROM olist_products_dataset;

-- =============================================================
-- 4. Customer Distribution by State
-- =============================================================

SELECT
customer_state,
COUNT(*) AS total_customers
FROM olist_customers_dataset
GROUP BY customer_state
ORDER BY total_customers DESC;

-- =============================================================
-- 5. Seller Distribution by State
-- =============================================================

SELECT
seller_state,
COUNT(*) AS total_sellers
FROM olist_sellers_dataset
GROUP BY seller_state
ORDER BY total_sellers DESC;

-- =============================================================
-- 6. Order Status Distribution
-- =============================================================

SELECT
order_status,
COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY total_orders DESC;

-- =============================================================
-- 7. Payment Method Distribution
-- =============================================================

SELECT
payment_type,
COUNT(*) AS total_transactions
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY total_transactions DESC;

-- =============================================================
-- 8. Product Price Statistics
-- =============================================================

SELECT
MIN(price) AS minimum_price,
MAX(price) AS maximum_price,
ROUND(AVG(price),2) AS average_price
FROM olist_order_items_dataset;

-- =============================================================
-- 9. Freight Value Statistics
-- =============================================================

SELECT
MIN(freight_value) AS minimum_freight,
MAX(freight_value) AS maximum_freight,
ROUND(AVG(freight_value),2) AS average_freight
FROM olist_order_items_dataset;

-- =============================================================
-- 10. Products per Category
-- =============================================================

SELECT
product_category_name,
COUNT(*) AS total_products
FROM olist_products_dataset
GROUP BY product_category_name
ORDER BY total_products DESC
LIMIT 15;

-- =============================================================
-- 11. Average Payment Value
-- =============================================================

SELECT
ROUND(AVG(payment_value),2) AS average_payment
FROM olist_order_payments_dataset;

-- =============================================================
-- 12. Payment Installments Distribution
-- =============================================================

SELECT
payment_installments,
COUNT(*) AS total_orders
FROM olist_order_payments_dataset
GROUP BY payment_installments
ORDER BY payment_installments;

-- =============================================================
-- 13. Average Items Per Order
-- =============================================================

SELECT
ROUND(AVG(item_count),2) AS avg_items_per_order
FROM
(
SELECT
order_id,
COUNT(order_item_id) AS item_count
FROM olist_order_items_dataset
GROUP BY order_id
) t;

-- =============================================================
-- 14. Top 10 Customer Cities
-- =============================================================

SELECT
customer_city,
COUNT(*) AS total_customers
FROM olist_customers_dataset
GROUP BY customer_city
ORDER BY total_customers DESC
LIMIT 10;

-- =============================================================
-- 15. Top 10 Seller Cities
-- =============================================================

SELECT
seller_city,
COUNT(*) AS total_sellers
FROM olist_sellers_dataset
GROUP BY seller_city
ORDER BY total_sellers DESC
LIMIT 10;

-- =============================================================
-- 16. Highest Priced Products
-- =============================================================

SELECT
product_id,
price
FROM olist_order_items_dataset
ORDER BY price DESC
LIMIT 10;

-- =============================================================
-- 17. Highest Freight Charges
-- =============================================================

SELECT
product_id,
freight_value
FROM olist_order_items_dataset
ORDER BY freight_value DESC
LIMIT 10;

-- =============================================================
-- 18. Orders by Year
-- =============================================================

SELECT
YEAR(purchase_timestamp) AS order_year,
COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY YEAR(purchase_timestamp)
ORDER BY order_year;

-- =============================================================
-- 19. Orders by Month
-- =============================================================

SELECT
MONTHNAME(purchase_timestamp) AS month_name,
COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY MONTH(purchase_timestamp),
MONTHNAME(purchase_timestamp)
ORDER BY MONTH(purchase_timestamp);

-- =============================================================
-- 20. Earliest and Latest Orders
-- =============================================================

SELECT
MIN(purchase_timestamp) AS first_order,
MAX(purchase_timestamp) AS latest_order
FROM olist_orders_dataset;

-- =============================================================
-- End of Exploratory Data Analysis
-- =============================================================