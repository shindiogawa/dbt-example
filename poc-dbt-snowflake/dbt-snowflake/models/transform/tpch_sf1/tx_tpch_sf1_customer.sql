with
  customer as (
  select
    *
  from
    {{ref('stg_tpch_sf1_customer')}}
  )
select distinct
  customer_id,
  c_name as name,
  c_address as address,
  c_nationkey as nationkey,
  c_phone as phone,
  c_acctbal as acctbal,
  c_mktsegment as mktsegment,
  c_comment as comment
from
  customer
where
  customer_item_rank = 1
