/*
=========================================================
Query 19: Top 5 States with Highest & Lowest Average Freight Value
=========================================================

Business Question:
Find the top 5 states with the highest and lowest
average freight value.

Purpose:
Identify states with the highest and lowest average
shipping costs to support logistics optimization
and warehouse planning.

=========================================================
*/
with state_freight as ( select
c.customer_state,
round(avg(oi.freight_value), 2) as avg_freight_value
from `target.customers` as c
join `target.orders` as o
on c.customer_id = o.customer_id
join `target.order_items` as oi
on o.order_id = oi.order_id
group by c.customer_state)


(select 'highest' as freight_category,
customer_state, avg_freight_value
from state_freight
order by avg_freight_value desc
limit 5)

union all

(select 'lowest' as freight_category,
customer_state, avg_freight_value
from state_freight
order by avg_freight_value asc
limit 5);
