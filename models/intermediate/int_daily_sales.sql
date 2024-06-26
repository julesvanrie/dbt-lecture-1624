select
    date_date
    ,extract(year from date_date) as year
    ,extract(month from date_date) as month
    ,extract(week from date_date) as week
    ,sum(turnover) as turnover
    ,sum(qty) as items_count
    ,count(*) as product_id_unique
from
    {{ ref("int_sales_stock") }}
group by 
    date_date
order by
    date_date desc