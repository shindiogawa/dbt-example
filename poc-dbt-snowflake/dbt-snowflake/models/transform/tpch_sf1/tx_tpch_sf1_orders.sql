with
  orders as (
  select
    *
  from
    {{ref('stg_tpch_sf1_orders')}}
  )
select distinct
  order_id,
  customer_id,
  o_orderstatus as order_status,
  o_totalprice as total_price,
  o_orderdate as order_date,
  o_orderpriority as order_priority,
  o_clerk as clerk,
  o_shippriority as shippriority,
  o_comment as comment
from
  orders
where
  order_item_rank = 1
