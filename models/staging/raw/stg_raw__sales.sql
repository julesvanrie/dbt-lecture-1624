with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        product_id,
        cast(quantity as int64) as qty

    from source

)

select * from renamed
