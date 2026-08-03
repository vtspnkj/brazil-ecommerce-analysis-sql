/*
=========================================================
Query 14: Delayed Orders
=========================================================
*/

SELECT
    COUNT(*) AS delayed_orders
FROM target.orders
WHERE order_delivered_customer_date >
      order_estimated_delivery_date;
      