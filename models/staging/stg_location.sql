with 
src as (
   select
      location_id,
      location,
      city,
      region,
      iso_country_code as country_code,
      country
   from {{ source('tasty_bytes', 'location') }}
)
select
    *
from src
