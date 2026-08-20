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
   from {{ ref('stg_truck') }}
)
select
    *
from src
