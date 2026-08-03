/*
=========================================================
Query 08: Time of Day Analysis
=========================================================

Business Question:
During which time of the day do customers place the most orders?

Purpose:
Identify customer purchasing patterns throughout the day
to support staffing, marketing campaigns, and operations.

=========================================================
*/

SELECT
    CASE
        WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 0 AND 5 THEN 'Dawn'
        WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Night'
    END AS time_of_day,
    COUNT(order_id) AS total_orders
FROM target.orders
GROUP BY time_of_day
ORDER BY total_orders DESC;
