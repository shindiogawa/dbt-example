with
  supplier as (
  select
    *
  from
    {{ref('stg_tpch_sf1_supplier')}}
  )
select distinct
  supplier_id,
  s_name as name,
  s_address as address,
  s_nationkey as nationkey,
  s_phone as phone,
  s_acctbal as acctbal,
  s_comment as comment
from
  supplier
where
  supplier_item_rank = 1
