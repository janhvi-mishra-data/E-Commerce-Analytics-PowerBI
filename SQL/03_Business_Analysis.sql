-- =============================================================
-- Project : E-Commerce Analytics Dashboard
-- File    : 03_Business_Analysis.sql
-- Author  : Janhvi Mishra
-- Purpose : Business Analysis using SQL
-- =============================================================

USE ecommerce_db;

-- =============================================================
-- 1. Total Revenue
-- =============================================================

SELECT
ROUND(SUM(payment_value),2) AS total_revenue
FROM olist_order_payments_dataset;

-- =============================================================
-- 2. Average Order Value
-- =============================================================

SELECT
ROUND(AVG(payment_value),2) AS average_order_value
FROM olist_order_payments_dataset;

-- =============================================================
-- 3. Monthly Revenue Trend
-- =============================================================

SELECT
YEAR(o.purchase_timestamp) AS year,
MONTH(o.purchase_timestamp) AS month,
ROUND(SUM(p.payment_value),2) AS revenue
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p
ON o.order_id = p.order_id
GROUP BY YEAR(o.purchase_timestamp),
MONTH(o.purchase_timestamp)
ORDER BY year,month;

-- =============================================================
-- 4. Monthly Order Trend
-- =============================================================

SELECT
YEAR(purchase_timestamp) AS year,
MONTH(purchase_timestamp) AS month,
COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY YEAR(purchase_timestamp),
MONTH(purchase_timestamp)
ORDER BY year,month;

-- =============================================================
-- 5. Revenue by Customer State
-- =============================================================

SELECT
c.customer_state,
ROUND(SUM(p.payment_value),2) AS revenue
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
ON c.customer_id=o.customer_id
JOIN olist_order_payments_dataset p
ON o.order_id=p.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;

-- =============================================================
-- 6. Top 10 Customer Cities by Revenue
-- =============================================================

SELECT
c.customer_city,
ROUND(SUM(p.payment_value),2) AS revenue
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
ON c.customer_id=o.customer_id
JOIN olist_order_payments_dataset p
ON o.order_id=p.order_id
GROUP BY c.customer_city
ORDER BY revenue DESC
LIMIT 10;

-- =============================================================
-- 7. Top Selling Product Categories
-- =============================================================

SELECT
t.product_category_name_english,
COUNT(*) AS total_items_sold
FROM olist_order_items_dataset oi
JOIN olist_products_dataset pr
ON oi.product_id=pr.product_id
LEFT JOIN product_category_name_translation t
ON pr.product_category_name=t.product_category_name
GROUP BY t.product_category_name_english
ORDER BY total_items_sold DESC
LIMIT 10;

-- =============================================================
-- 8. Revenue by Product Category
-- =============================================================

SELECT
t.product_category_name_english,
ROUND(SUM(oi.price),2) AS revenue
FROM olist_order_items_dataset oi
JOIN olist_products_dataset pr
ON oi.product_id=pr.product_id
LEFT JOIN product_category_name_translation t
ON pr.product_category_name=t.product_category_name
GROUP BY t.product_category_name_english
ORDER BY revenue DESC
LIMIT 10;

-- =============================================================
-- 9. Top 10 Sellers by Revenue
-- =============================================================

SELECT
seller_id,
ROUND(SUM(price),2) AS revenue
FROM olist_order_items_dataset
GROUP BY seller_id
ORDER BY revenue DESC
LIMIT 10;

-- =============================================================
-- 10. Seller State Performance
-- =============================================================

SELECT
s.seller_state,
ROUND(SUM(oi.price),2) AS revenue
FROM olist_sellers_dataset s
JOIN olist_order_items_dataset oi
ON s.seller_id=oi.seller_id
GROUP BY s.seller_state
ORDER BY revenue DESC;

-- =============================================================
-- 11. Average Delivery Time
-- =============================================================

SELECT
ROUND(AVG(DATEDIFF(delivered_timestamp,purchase_timestamp)),2)
AS avg_delivery_days
FROM olist_orders_dataset
WHERE delivered_timestamp IS NOT NULL;

-- =============================================================
-- 12. Fastest Delivery States
-- =============================================================

SELECT
c.customer_state,
ROUND(AVG(DATEDIFF(o.delivered_timestamp,o.purchase_timestamp)),2)
AS avg_delivery_days
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
ON c.customer_id=o.customer_id
WHERE o.delivered_timestamp IS NOT NULL
GROUP BY c.customer_state
ORDER BY avg_delivery_days;

-- =============================================================
-- 13. Revenue by Payment Type
-- =============================================================

SELECT
payment_type,
ROUND(SUM(payment_value),2) AS revenue
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY revenue DESC;

-- =============================================================
-- 14. Average Freight Cost by State
-- =============================================================

SELECT
s.seller_state,
ROUND(AVG(oi.freight_value),2) AS avg_freight
FROM olist_sellers_dataset s
JOIN olist_order_items_dataset oi
ON s.seller_id=oi.seller_id
GROUP BY s.seller_state
ORDER BY avg_freight DESC;

-- =============================================================
-- 15. Highest Value Orders
-- =============================================================

SELECT
order_id,
ROUND(SUM(payment_value),2) AS total_value
FROM olist_order_payments_dataset
GROUP BY order_id
ORDER BY total_value DESC
LIMIT 10;

-- =============================================================
-- 16. Customers with Multiple Orders
-- =============================================================

SELECT
customer_id,
COUNT(order_id) AS total_orders
FROM olist_orders_dataset
GROUP BY customer_id
HAVING COUNT(order_id)>1
ORDER BY total_orders DESC;

-- =============================================================
-- 17. Average Revenue Per Seller
-- =============================================================

SELECT
ROUND(AVG(revenue),2) AS avg_seller_revenue
FROM
(
SELECT
seller_id,
SUM(price) AS revenue
FROM olist_order_items_dataset
GROUP BY seller_id
)t;

-- =============================================================
-- 18. Most Expensive Products Sold
-- =============================================================

SELECT
product_id,
MAX(price) AS highest_price
FROM olist_order_items_dataset
GROUP BY product_id
ORDER BY highest_price DESC
LIMIT 10;

-- =============================================================
-- 19. Orders by Weekday
-- =============================================================

SELECT
DAYNAME(purchase_timestamp) AS weekday,
COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY DAYNAME(purchase_timestamp)
ORDER BY total_orders DESC;

-- =============================================================
-- 20. Top 10 Products by Revenue
-- =============================================================

SELECT
product_id,
ROUND(SUM(price),2) AS revenue
FROM olist_order_items_dataset
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

-- =============================================================
-- End of Business Analysis
-- =============================================================