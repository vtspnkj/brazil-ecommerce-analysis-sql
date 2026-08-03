/*
=========================================================
Query 16: Total and Average Freight Value by State
=========================================================

Business Question:
Calculate the total and average freight value paid by
customers in each state.

=========================================================
*/

select
c.customer_state,
round(sum(oi.price), 2) as total_order_value,
round(avg(oi.price), 2) as average_order_value
from `target.customers` as c
join `target.orders` as o
on c.customer_id = o.customer_id
join `target.order_items` as oi
on o.order_id = oi.order_id
group by c.customer_state
order by total_order_value desc;
