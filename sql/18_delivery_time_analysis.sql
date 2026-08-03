/*
=========================================================
Query 18: Delivery Time Analysis
=========================================================

Business Question:
Find the number of days taken to deliver each order from
the purchase date and calculate the difference between
the estimated and actual delivery dates.

Purpose:
Analyze delivery performance by measuring the actual
delivery time and determining whether orders were
delivered early or late compared to the estimated date.

=========================================================
*/
select
order_id,
date(order_purchase_timestamp) as purchase_date,
date(order_delivered_customer_date) as actual_delivery_date,
date(order_estimated_delivery_date) as estimated_delivery_date,
date_diff(date(order_delivered_customer_date),date(order_purchase_timestamp),day) as delivery_time_in_days,
date_diff(date(order_delivered_customer_date),date(order_estimated_delivery_date),day) as estimated_vs_actual_diff_in_days


from `target.orders`
where order_delivered_customer_date is not null;
