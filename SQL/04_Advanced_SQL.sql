-- =============================================================
-- Project : E-Commerce Analytics Dashboard
-- File    : 04_Advanced_SQL.sql
-- Author  : Janhvi Mishra
-- Purpose : Advanced SQL Analysis
-- =============================================================

USE ecommerce_db;

-- =============================================================
-- 1. Top 10 Sellers by Revenue (RANK)
-- =============================================================

WITH seller_revenue AS
(
SELECT
seller_id,
ROUND(SUM(price),2) AS revenue
FROM olist_order_items_dataset
GROUP BY seller_id
)

SELECT
seller_id,
revenue,
RANK() OVER(ORDER BY revenue DESC) AS seller_rank
FROM seller_revenue
LIMIT 10;

-- =============================================================
-- 2. Top Customers by Spending
-- =============================================================

WITH customer_revenue AS
(
SELECT
o.customer_id,
SUM(p.payment_value) AS total_spent
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p
ON o.order_id=p.order_id
GROUP BY o.customer_id
)

SELECT
customer_id,
ROUND(total_spent,2) AS total_spent,
RANK() OVER(ORDER BY total_spent DESC) AS customer_rank
FROM customer_revenue
LIMIT 10;

-- =============================================================
-- 3. Running Monthly Revenue
-- =============================================================

WITH monthly_sales AS
(
SELECT
YEAR(o.purchase_timestamp) AS year,
MONTH(o.purchase_timestamp) AS month,
SUM(p.payment_value) AS revenue
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p
ON o.order_id=p.order_id
GROUP BY year,month
)

SELECT
year,
month,
ROUND(revenue,2) AS revenue,
ROUND(
SUM(revenue) OVER(
ORDER BY year,month
),2) AS cumulative_revenue
FROM monthly_sales;

-- =============================================================
-- 4. Revenue Contribution by Payment Method
-- =============================================================

SELECT
payment_type,
ROUND(SUM(payment_value),2) AS revenue,
ROUND(
SUM(payment_value)*100/
SUM(SUM(payment_value)) OVER(),2
) AS revenue_percentage
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY revenue DESC;

-- =============================================================
-- 5. Product Price Ranking
-- =============================================================

SELECT
product_id,
price,
DENSE_RANK() OVER(
ORDER BY price DESC
) AS price_rank
FROM olist_order_items_dataset
LIMIT 20;

-- =============================================================
-- 6. Seller Revenue Quartiles
-- =============================================================

WITH seller_sales AS
(
SELECT
seller_id,
SUM(price) AS revenue
FROM olist_order_items_dataset
GROUP BY seller_id
)

SELECT
seller_id,
ROUND(revenue,2) AS revenue,
NTILE(4) OVER(ORDER BY revenue DESC) AS revenue_quartile
FROM seller_sales;

-- =============================================================
-- 7. Top Product Category by Revenue
-- =============================================================

WITH category_sales AS
(
SELECT
t.product_category_name_english,
SUM(oi.price) AS revenue
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p
ON oi.product_id=p.product_id
LEFT JOIN product_category_name_translation t
ON p.product_category_name=t.product_category_name
GROUP BY t.product_category_name_english
)

SELECT
product_category_name_english,
ROUND(revenue,2),
RANK() OVER(
ORDER BY revenue DESC
) AS category_rank
FROM category_sales;

-- =============================================================
-- 8. Monthly Growth Percentage
-- =============================================================

WITH monthly_sales AS
(
SELECT
YEAR(o.purchase_timestamp) AS year,
MONTH(o.purchase_timestamp) AS month,
SUM(payment_value) AS revenue
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p
ON o.order_id=p.order_id
GROUP BY year,month
)

SELECT
year,
month,
ROUND(revenue,2) AS revenue,

ROUND(
((revenue-
LAG(revenue) OVER(ORDER BY year,month))
/
LAG(revenue) OVER(ORDER BY year,month))*100
,2) AS growth_percentage

FROM monthly_sales;

-- =============================================================
-- 9. Average Order Value by Customer State
-- =============================================================

SELECT
customer_state,
ROUND(AVG(payment_value),2) AS avg_order_value,
RANK() OVER(
ORDER BY AVG(payment_value) DESC
) AS state_rank
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
ON c.customer_id=o.customer_id
JOIN olist_order_payments_dataset p
ON o.order_id=p.order_id
GROUP BY customer_state;

-- =============================================================
-- 10. Top Revenue Orders
-- =============================================================

WITH order_value AS
(
SELECT
order_id,
SUM(payment_value) AS revenue
FROM olist_order_payments_dataset
GROUP BY order_id
)

SELECT
order_id,
ROUND(revenue,2),
ROW_NUMBER() OVER(
ORDER BY revenue DESC
) AS row_num
FROM order_value
LIMIT 20;

-- =============================================================
-- 11. Customer Order Frequency
-- =============================================================

SELECT
customer_id,
COUNT(order_id) AS total_orders,
CASE
WHEN COUNT(order_id)=1 THEN 'One-time'
WHEN COUNT(order_id) BETWEEN 2 AND 5 THEN 'Returning'
ELSE 'Loyal'
END AS customer_segment
FROM olist_orders_dataset
GROUP BY customer_id;

-- =============================================================
-- 12. Highest Freight Cost Products
-- =============================================================

SELECT
product_id,
freight_value,
RANK() OVER(
ORDER BY freight_value DESC
) AS freight_rank
FROM olist_order_items_dataset
LIMIT 20;

-- =============================================================
-- 13. Seller Performance Category
-- =============================================================

WITH seller_sales AS
(
SELECT
seller_id,
SUM(price) revenue
FROM olist_order_items_dataset
GROUP BY seller_id
)
SELECT
seller_id,
ROUND(revenue,2),
CASE
WHEN revenue>=100000 THEN 'Excellent'
WHEN revenue>=50000 THEN 'Good'
WHEN revenue>=10000 THEN 'Average'
ELSE 'Low'
END AS performance
FROM seller_sales;

-- =============================================================
-- 14. Revenue Share by State
-- =============================================================

SELECT
customer_state,
ROUND(SUM(payment_value),2) revenue,
ROUND(
SUM(payment_value)*100/
SUM(SUM(payment_value)) OVER()
,2)
AS revenue_share
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
ON c.customer_id=o.customer_id
JOIN olist_order_payments_dataset p
ON o.order_id=p.order_id
GROUP BY customer_state
ORDER BY revenue DESC;

-- =============================================================
-- 15. Top 3 Sellers in Each State
-- =============================================================

WITH seller_state_sales AS
(
SELECT
s.seller_state,
s.seller_id,
SUM(oi.price) revenue
FROM olist_sellers_dataset s
JOIN olist_order_items_dataset oi
ON s.seller_id=oi.seller_id
GROUP BY s.seller_state,s.seller_id
)
SELECT *
FROM
(
SELECT
seller_state,
seller_id,
ROUND(revenue,2) revenue,
ROW_NUMBER() OVER(
PARTITION BY seller_state
ORDER BY revenue DESC
) rn
FROM seller_state_sales
)t
WHERE rn<=3;

-- =============================================================
-- End of Advanced SQL
-- =============================================================