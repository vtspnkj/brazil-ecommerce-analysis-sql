/*
=========================================================
Query 13: Average Delivery Time
=========================================================
*/

SELECT
    ROUND(AVG(
        DATE_DIFF(order_delivered_customer_date,
                  order_purchase_timestamp,
                  DAY)
    ),2) AS avg_delivery_days
FROM target.orders
WHERE order_delivered_customer_date IS NOT NULL;

