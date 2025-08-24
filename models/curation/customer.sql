with customer as (
    select c_custkey as customer_id
          ,c_name as customer_name
          ,c_phone as customer_phone
    from TEST_DB_SNOWFLAKE_DB.TEST_SCHEMA.TEST_CUSTOMER
)

select * from customer