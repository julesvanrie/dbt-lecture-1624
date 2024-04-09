select
    date_date,
    sum(turnover) as turnover
from
    {{ ref("int_sales_stock") }}
group by 
    date_date
order by
    date_date desc