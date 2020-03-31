with
  part as (
  select
    *
  from
    {{ref('stg_tpch_sf1_part')}}
  )
select distinct
  part_id,
  p_name as name,
  p_mfgr as mfgr,
  p_brand as brand,
  p_type as type,
  p_size as size,
  p_container as container,
  p_retailprice as retailprice,
  p_comment as comment
from
  part
where
  part_item_rank = 1
