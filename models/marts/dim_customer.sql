with 
src as (
   select
      customer_id,
      customer_name,
      city,
      country,
      gender,
      e_mail,
      phone_number
   from {{ ref('stg_customer') }}
)
select
    *
from src
