/*
=========================================================
Query 12: Orders by Status
=========================================================
*/

SELECT
    order_status,
    COUNT(*) AS total_orders
FROM target.orders
GROUP BY order_status
ORDER BY total_orders DESC;
