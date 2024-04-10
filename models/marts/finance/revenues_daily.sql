select
    date_date
    ,turnover
from
    {{ ref('int_daily_sales')}}
order by
    date_date desc