with 
oh as (
   select
      *
   from {{ ref('stg_order_header') }}
),
od as (
    select
        *
    from {{ ref('stg_order_detail') }}
),
o as (
    select
        oh.order_id,
        oh.truck_id,
        oh.location_id,
        oh.customer_id,
        oh.order_date,
        oh.order_currency,
        od.order_detail_id,
        od.line_number,
        od.quantity as order_quantity,
        od.unit_price as order_unit_price,
        od.price as order_amount
    from oh
    join od on od.order_id = oh.order_id
)
select
    *
from o    
