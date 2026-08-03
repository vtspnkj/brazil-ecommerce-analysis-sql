/*
=========================================================
Query 06: Year-over-Year Order Growth
=========================================================

Business Question:
Has the number of orders increased over time?

Purpose:
Understand the yearly growth of the business by analyzing
the total number of orders placed each year.
=========================================================
*/

SELECT
    EXTRACT(YEAR FROM order_purchase_timestamp) AS order_year,
    COUNT(order_id) AS total_orders
FROM target.orders
GROUP BY order_year
ORDER BY order_year;