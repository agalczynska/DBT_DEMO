with 
src as (
   select
      location_id,
      location,
      city,
      region,
      country
   from {{ ref('stg_location') }}
)
select
    *
from src
