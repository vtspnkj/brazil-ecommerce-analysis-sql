-- Count orders by status

select
    order_status,
    count(*) as total_orders
from target.orders
group by order_status
order by total_orders desc;