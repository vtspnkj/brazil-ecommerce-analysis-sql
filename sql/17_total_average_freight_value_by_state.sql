/*
=========================================================
Query 17: Total & Average Freight Value by State
=========================================================

Business Question:
Calculate the total and average freight value
for each state.

Purpose:
Analyze freight costs across states to identify
regions with high shipping expenses and compare
average freight charges.

=========================================================
*/
select
c.customer_state,
round(sum(oi.freight_value), 2) as total_freight_value,
round(avg(oi.freight_value), 2) as average_freight_value
from `target.customers` c
join `target.orders` o
on c.customer_id = o.customer_id
join `target.order_items` oi
on o.order_id = oi.order_id
group by c.customer_state
order by total_freight_value desc;
