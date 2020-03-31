select
  p_partkey as part_id,
  rank() over (partition by p_partkey order by p_partkey desc) as part_item_rank,
	p_name,
	p_mfgr,
	p_brand,
	p_type,
	p_size,
	p_container,
	p_retailprice,
	p_comment
from snowflake_sample_data.tpch_sf1.part
