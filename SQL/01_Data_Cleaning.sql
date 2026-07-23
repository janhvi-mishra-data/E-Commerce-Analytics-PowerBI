-- =============================================================
-- Project : E-Commerce Analytics Dashboard
-- File    : 01_Data_Cleaning.sql
-- Author  : Janhvi Mishra
-- Purpose : Data Cleaning & Data Validation
-- =============================================================

USE ecommerce_db;

-- =============================================================
-- 1. View Available Tables
-- =============================================================

SHOW TABLES;

-- =============================================================
-- 2. Check Table Structure
-- =============================================================

DESC olist_customers_dataset;

DESC olist_orders_dataset;

DESC olist_order_items_dataset;

DESC olist_order_payments_dataset;

DESC olist_products_dataset;

DESC olist_sellers_dataset;

DESC product_category_name_translation;

-- =============================================================
-- 3. Check Total Records
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

SELECT COUNT(*) AS total_categories
FROM product_category_name_translation;

-- =============================================================
-- 4. Check Missing Values
-- =============================================================

-- Products Table

SELECT
SUM(product_category_name IS NULL) AS missing_category,
SUM(product_name_lenght IS NULL) AS missing_name_length,
SUM(product_description_lenght IS NULL) AS missing_description_length,
SUM(product_photos_qty IS NULL) AS missing_photos,
SUM(product_weight_g IS NULL) AS missing_weight,
SUM(product_length_cm IS NULL) AS missing_length,
SUM(product_height_cm IS NULL) AS missing_height,
SUM(product_width_cm IS NULL) AS missing_width
FROM olist_products_dataset;

-- Orders Table

SELECT
SUM(order_approved_at IS NULL) AS missing_approved_date,
SUM(order_delivered_carrier_date IS NULL) AS missing_carrier_date,
SUM(order_delivered_customer_date IS NULL) AS missing_delivery_date
FROM olist_orders_dataset;

-- Payments Table

SELECT
SUM(payment_type IS NULL) AS missing_payment_type,
SUM(payment_value IS NULL) AS missing_payment_value
FROM olist_order_payments_dataset;

-- =============================================================
-- 5. Check Duplicate Records
-- =============================================================

-- Duplicate Order IDs

SELECT
order_id,
COUNT(*) AS duplicate_count
FROM olist_orders_dataset
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Duplicate Customer IDs

SELECT
customer_id,
COUNT(*) AS duplicate_count
FROM olist_customers_dataset
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Duplicate Product IDs

SELECT
product_id,
COUNT(*) AS duplicate_count
FROM olist_products_dataset
GROUP BY product_id
HAVING COUNT(*) > 1;

-- Duplicate Seller IDs

SELECT
seller_id,
COUNT(*) AS duplicate_count
FROM olist_sellers_dataset
GROUP BY seller_id
HAVING COUNT(*) > 1;

-- =============================================================
-- 6. Create Clean Date Columns
-- =============================================================

ALTER TABLE olist_orders_dataset
ADD COLUMN purchase_timestamp DATETIME,
ADD COLUMN approved_timestamp DATETIME,
ADD COLUMN carrier_timestamp DATETIME,
ADD COLUMN delivered_timestamp DATETIME,
ADD COLUMN estimated_delivery_timestamp DATETIME;

-- =============================================================
-- 7. Convert Text Dates into DATETIME
-- =============================================================

UPDATE olist_orders_dataset
SET
purchase_timestamp =
CASE
    WHEN order_purchase_timestamp IS NULL OR order_purchase_timestamp = ''
    THEN NULL
    ELSE STR_TO_DATE(order_purchase_timestamp,'%d-%m-%Y %H:%i')
END,

approved_timestamp =
CASE
    WHEN order_approved_at IS NULL OR order_approved_at = ''
    THEN NULL
    ELSE STR_TO_DATE(order_approved_at,'%d-%m-%Y %H:%i')
END,

carrier_timestamp =
CASE
    WHEN order_delivered_carrier_date IS NULL OR order_delivered_carrier_date = ''
    THEN NULL
    ELSE STR_TO_DATE(order_delivered_carrier_date,'%d-%m-%Y %H:%i')
END,

delivered_timestamp =
CASE
    WHEN order_delivered_customer_date IS NULL OR order_delivered_customer_date = ''
    THEN NULL
    ELSE STR_TO_DATE(order_delivered_customer_date,'%d-%m-%Y %H:%i')
END,

estimated_delivery_timestamp =
CASE
    WHEN order_estimated_delivery_date IS NULL OR order_estimated_delivery_date = ''
    THEN NULL
    ELSE STR_TO_DATE(order_estimated_delivery_date,'%d-%m-%Y %H:%i')
END;
-- =============================================================
-- 8. Verify Date Conversion
-- =============================================================

SELECT
order_purchase_timestamp,
purchase_timestamp
FROM olist_orders_dataset
LIMIT 10;

-- =============================================================
-- 9. Data Quality Checks
-- =============================================================

-- Orders without Customers

SELECT COUNT(*) AS orders_without_customers
FROM olist_orders_dataset o
LEFT JOIN olist_customers_dataset c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Orders without Payments

SELECT COUNT(*) AS orders_without_payments
FROM olist_orders_dataset o
LEFT JOIN olist_order_payments_dataset p
ON o.order_id = p.order_id
WHERE p.order_id IS NULL;

-- Orders without Order Items

SELECT COUNT(*) AS orders_without_items
FROM olist_orders_dataset o
LEFT JOIN olist_order_items_dataset oi
ON o.order_id = oi.order_id
WHERE oi.order_id IS NULL;

-- Products without Category Translation

DESC product_category_name_translation;

SELECT *
FROM product_category_name_translation
LIMIT 5;

ALTER TABLE product_category_name_translation
CHANGE COLUMN `ï»¿product_category_name`
product_category_name VARCHAR(255);

SELECT COUNT(*) AS untranslated_categories
FROM olist_products_dataset p
LEFT JOIN product_category_name_translation t
ON p.product_category_name = t.product_category_name
WHERE p.product_category_name IS NOT NULL
AND t.product_category_name_english IS NULL;

-- =============================================================
-- 10. Validate Cleaned Data
-- =============================================================

SELECT
MIN(purchase_timestamp) AS first_order,
MAX(purchase_timestamp) AS latest_order
FROM olist_orders_dataset;

SELECT
COUNT(*) AS total_orders_after_cleaning
FROM olist_orders_dataset;

-- =============================================================
-- End of Data Cleaning
-- =============================================================