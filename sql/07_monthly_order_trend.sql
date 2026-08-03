/*
=========================================================
Query 07: Monthly Order Trend
=========================================================

Business Question:
How do customer orders vary by month?

Purpose:
Analyze monthly order volume to identify seasonal trends
and support inventory planning and forecasting.

Tables Used:
- orders

SQL Concepts:
- EXTRACT()
- COUNT()
- GROUP BY
- ORDER BY

Author:
Pankaj Vats
=========================================================
*/

SELECT
    EXTRACT(YEAR FROM order_purchase_timestamp) AS order_year,
    EXTRACT(MONTH FROM order_purchase_timestamp) AS order_month,
    COUNT(order_id) AS total_orders
FROM target.orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;