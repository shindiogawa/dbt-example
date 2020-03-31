select
  o_orderkey as order_id,
  rank() over (partition by o_orderkey order by o_orderkey desc) as order_item_rank,
  o_custkey as customer_id,
  o_orderstatus,
  o_totalprice,
  o_orderdate,
  o_orderpriority,
  o_clerk,
  o_shippriority,
  o_comment
from snowflake_sample_data.tpch_sf1.orders
