/*
=========================================================
Query 15: Percentage Increase in Order Cost (2017 vs 2018)
=========================================================

Business Question:
Get the percentage increase in the total cost of orders
from 2017 to 2018 considering only January to August.
=========================================================
*/

with yearly_cost as (
select
extract(year from o.order_purchase_timestamp) as order_year,
sum(p.payment_value) as total_order_cost
from `target.orders` o
join `target.payments` p
on o.order_id = p.order_id
where extract(year from o.order_purchase_timestamp) in (2017, 2018)
and extract(month from o.order_purchase_timestamp) between 1 and 8
group by order_year),
max_cost as (select
round(max(case when order_year = 2017 then total_order_cost end),2) as total_cost_2017,
round(max(case when order_year = 2018 then total_order_cost end),2) as total_cost_2018,
from yearly_cost)
select total_cost_2017, total_cost_2018,
round((total_cost_2018 - total_cost_2017)/ total_cost_2017 * 100,2) as percentage_increase
from max_cost;
