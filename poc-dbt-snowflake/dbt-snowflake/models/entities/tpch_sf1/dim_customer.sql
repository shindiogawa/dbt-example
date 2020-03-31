{{
    config(
        unique_key='customer_id'
    )
}}

select
  customer_id,
  name,
  address,
  nationkey,
  phone,
  acctbal,
  mktsegment,
  comment
from {{ ref('tx_tpch_sf1_customer') }}
