{{
    config(
        unique_key='order_id'
    )
}}

select
  order_id,
  customer_id,
  order_status,
  total_price,
  order_date,
  order_priority,
  clerk,
  shippriority,
  comment
from {{ ref('tx_tpch_sf1_orders') }}
-- {% if is_incremental() %}
where order_date > (select max(order_date) from {{ this }})
-- {% endif %}
