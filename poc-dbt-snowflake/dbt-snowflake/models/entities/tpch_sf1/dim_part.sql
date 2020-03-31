{{
    config(
        unique_key='part_id'
    )
}}

select
  part_id,
  name,
  mfgr,
  brand,
  type,
  size,
  container,
  retailprice,
  comment
from {{ ref('tx_tpch_sf1_part') }}
