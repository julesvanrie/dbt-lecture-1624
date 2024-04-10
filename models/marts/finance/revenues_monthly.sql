select
    year || "-" || month as yearmonth
    ,sum(turnover) as turnover
from
    {{ ref('int_daily_sales') }}
group by
    year || "-" || month
order by
    yearmonth desc