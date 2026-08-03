/*
=========================================================
Query 10: New Customers by Month
=========================================================
*/

SELECT
    EXTRACT(YEAR FROM o.order_purchase_timestamp) AS order_year,
    EXTRACT(MONTH FROM o.order_purchase_timestamp) AS order_month,
    COUNT(DISTINCT c.customer_unique_id) AS total_customers
FROM target.orders o
JOIN target.customers c
ON o.customer_id = c.customer_id
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
