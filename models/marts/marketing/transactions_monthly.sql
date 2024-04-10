{{ config(materialized='table') }}

select
    year || "-" || month as yearmonth
    ,sum(turnover) as turnover
    ,sum(items_count) as items_count
    ,sum(product_id_unique) as product_id_unique

from
    {{ ref("int_daily_sales")}}

group by
    year
    ,month

order by
    year desc
    ,month desc