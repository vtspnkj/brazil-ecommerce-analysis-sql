/*
=========================================================
Query 22: Month-on-Month Orders by Payment Type
=========================================================

Business Question:
Find the month-on-month number of orders placed
using different payment types.

Purpose:
Analyze customer payment preferences over time and
identify monthly trends across different payment methods.

=========================================================
*/
select
date_trunc(date(o.order_purchase_timestamp), month) as order_month,
p.payment_type,
count(distinct o.order_id) as total_orders
from `target.orders` o
join `target.payments` p
on o.order_id = p.order_id
group by order_month, p.payment_type
order by order_month, total_orders, payment_type;
