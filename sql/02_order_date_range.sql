-- Find the first and last order date

select
    min(order_purchase_timestamp) as first_order_date,
    max(order_purchase_timestamp) as last_order_date
from target.orders;