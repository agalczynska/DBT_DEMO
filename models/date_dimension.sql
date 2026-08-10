with cte as (
    select
      TO_TIMESTAMP(started_at) as STARTED_AT,
      date(TO_TIMESTAMP(started_at)) as date_started_at,
      hour(TO_TIMESTAMP(started_at)) as hour_started_at,
      {{day_type('STARTED_AT')}} as day_type,
      {{get_season('STARTED_AT')}} as station_of_year

    from {{ ref('stg_bike') }}
    where started_at != 'started_at'
)


select
*
from cte