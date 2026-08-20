with 
src as (
   select
      order_id,
      truck_id,
      location_id,
      customer_id,
      order_ts,
      order_ts::DATE as order_date,
      order_currency,
      order_amount,
      order_discount_amount,
      order_total
   from {{ source('tasty_bytes', 'order_header') }}
)
select
    *
from src
