with 
src as (
   select
      date,
      month,
      year
   from {{ ref('stg_date') }}
)
select
    *
from src
