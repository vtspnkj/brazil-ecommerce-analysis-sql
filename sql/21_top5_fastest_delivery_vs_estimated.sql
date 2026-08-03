/*
=========================================================
Query 21: Top 5 States with Fastest Delivery vs Estimated Date
=========================================================

Business Question:
Find the top 5 states where the order delivery is
significantly faster than the estimated delivery date.

Purpose:
Identify states where deliveries consistently arrive
earlier than expected, indicating strong logistics
performance.
=========================================================
*/
with state_delivery_gap as (select
c.customer_state,
round(avg(date_diff(date(o.order_delivered_customer_date),date(o.order_estimated_delivery_date),day)),2) as avg_delivery_gap
from `target.orders` o
join `target.customers` c
on o.customer_id = c.customer_id
where o.order_delivered_customer_date is not null
group by c.customer_state)


select
customer_state,
avg_delivery_gap
from state_delivery_gap
order by avg_delivery_gap asc
limit 5;
