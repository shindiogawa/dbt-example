{{
    config(
        unique_key='order_id'
    )
}}

select
  order_id,
  part_id,
  supplier_id,
  line_snumber,
  quantity,
  extended_price,
  discount,
  tax,
  return_flag,
  line_status,
  ship_date,
  commit_date,
  receipt_date,
  ship_instruct,
  ship_mode,
  comment
from {{ref('tx_tpch_sf1_lineitem')}} as lineitem
