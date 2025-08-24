with orders as(
    select o_orderkey as order_key
          ,o_custkey as customer_key
          ,o_totalprice as order_price
    from  "TEST_DB_SNOWFLAKE_DB"."TEST_SCHEMA"."TEST_ORDER"
)

select * from orders