/*
=========================================================
Query 23: Orders by Payment Installments
=========================================================

Business Question:
Find the number of orders placed based on the
payment installments used by customers.

Purpose:
Analyze how customers prefer to pay for their
orders through installments and identify the
most commonly used installment plans.

=========================================================
*/
select
payment_installments,
count(distinct order_id) as total_orders
from `target.payments`
group by payment_installments
order by payment_installments;
