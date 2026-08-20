with 
src as (
   select
      truck_id,
      primary_city,
      region,
      country,
      year,
      make,
      model,
      truck_opening_date
   from {{ source('tasty_bytes', 'truck') }}
)
select
    *
from src
