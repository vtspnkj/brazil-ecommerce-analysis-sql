/*
=========================================================
Query 11: Top 10 Cities by Customers
=========================================================
*/

SELECT
    customer_city,
    COUNT(customer_unique_id) AS total_customers
FROM target.customers
GROUP BY customer_city
ORDER BY total_customers DESC
LIMIT 10;
