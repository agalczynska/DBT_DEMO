with cte as (
    select
      STARTED_AT,
      TO_TIMESTAMP(started_at)
    from {{ source('demo', 'bike') }}
    where started_at != 'started_at'
)


select
*
from cte