-- Count unique cities and states

select
    count(distinct customer_city) as total_cities,
    count(distinct customer_state) as total_states
from target.customers;