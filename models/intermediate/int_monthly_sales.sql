select
    extract(month from date_date) as month,
    sum(turnover) as turnover
from
    {{ ref("int_sales_stock") }}
group by 
    extract(month from date_date)
order by
    month desc