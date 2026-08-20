with 
src as (
    SELECT
        DATEADD(
            DAY,
            ROW_NUMBER() OVER (ORDER BY SEQ4()) - 1,
            '2019-01-01'::DATE
        ) AS date
    FROM TABLE(GENERATOR(ROWCOUNT => 1461))
),
trans as (
    select
        date,
        TO_CHAR(date, 'YYYY-MM') AS month,
        TO_CHAR(date, 'YYYY') AS year
    from src    
)
select
    *
from trans
