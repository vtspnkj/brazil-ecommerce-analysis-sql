/*
=========================================================
Query 09: Customer Distribution by State
=========================================================
*/

SELECT
    customer_state,
    COUNT(customer_id) AS total_customers
FROM target.customers
GROUP BY customer_state
ORDER BY total_customers DESC;