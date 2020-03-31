select
  s_suppkey as supplier_id,
  rank() over (partition by s_suppkey order by s_suppkey desc) as supplier_item_rank,
  s_name,
  s_address,
  s_nationkey,
  s_phone,
  s_acctbal,
  s_comment
from snowflake_sample_data.tpch_sf1.supplier
