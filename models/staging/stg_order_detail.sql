with 
src as (
   select
      order_detail_id,
      order_id,
      line_number,
      quantity,
      unit_price,
      price,
      order_item_discount_amount
   from {{ source('tasty_bytes', 'order_detail') }}
)
select
    *
from src
