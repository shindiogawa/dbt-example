select
    c_custkey as customer_id,
    rank() over (partition by c_custkey order by c_custkey desc) as customer_item_rank,
    c_name,
  	c_address,
  	c_nationkey,
  	c_phone,
  	c_acctbal,
  	c_mktsegment,
  	c_comment
from snowflake_sample_data.tpch_sf1.customer
