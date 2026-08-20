with 
src as (
   select
      customer_id,
      first_name as customer_first_name,
      last_name as customer_last_name,
      last_name || ' ' || first_name as customer_name,
      city,
      country,
      postal_code,
      gender,
      e_mail,
      phone_number
   from {{ source('tasty_bytes', 'customer_loyalty') }}
)
select
    *
from src
