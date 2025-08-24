{{ config (
    materialized = "table"
)}}

with customer as(
    select * from {{ref('customer')}})
,

orders as(
    select * from {{ref('orders')}})
,  

customer_x_orders as(
    select c.customer_id
          ,c.customer_name
          ,sum(o.order_price)
    from customer c, orders o
    where c.customer_id = o.customer_key
    group by c.customer_id, c.customer_name
    order by sum(o.order_price) desc limit 10
)

select * from customer_x_orders