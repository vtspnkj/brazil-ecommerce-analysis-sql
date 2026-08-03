/*
=========================================================
Query 20: Top 5 States with Highest & Lowest Average Delivery Time
=========================================================

Business Question:
Find the top 5 states with the highest and lowest
average delivery time.

Purpose:
Compare average delivery times across states to identify
regions with the slowest and fastest delivery performance.

=========================================================
*/
with order_delivery_days as (select
o.order_id, c.customer_state,
date_diff(date(o.order_delivered_customer_date),date(o.order_purchase_timestamp),day) as delivery_days
from `target.orders` o
join `target.customers` c
on o.customer_id = c.customer_id
where o.order_delivered_customer_date is not null),
state_avg_delivery as (
select customer_state,
round(avg(delivery_days), 2) as avg_delivery_time
from order_delivery_days
group by customer_state)
select customer_state, avg_delivery_time,
case
when rank() over (order by avg_delivery_time desc) <= 5 then 'highest'
when rank() over (order by avg_delivery_time asc) <= 5 then 'lowest'
end as delivery_category
from state_avg_delivery
qualify
rank() over (order by avg_delivery_time desc) <= 5
or rank() over (order by avg_delivery_time asc) <= 5
order by avg_delivery_time desc;
