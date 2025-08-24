## Singular test ##
with orders as (
    select * from {{ref("orders")}}
)

select order_key,
       order_price
from orders
where order_price < 0