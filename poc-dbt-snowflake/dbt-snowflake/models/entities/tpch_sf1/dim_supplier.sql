{{
    config(
        unique_key='supplier_id'
    )
}}

select
  supplier_id,
  name,
  address,
  nationkey,
  phone,
  acctbal,
  comment
from {{ ref('tx_tpch_sf1_supplier') }}
