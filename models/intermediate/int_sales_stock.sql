select
    *,
    qty * price as turnover
from
    {{ ref('stg_raw__sales') }}
inner join
    {{ ref('stg_raw__stock') }}
using (product_id)