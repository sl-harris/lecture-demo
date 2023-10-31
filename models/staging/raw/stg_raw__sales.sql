with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date AS date,
        orders_id AS order_id,
        pdt_id AS product_id,
        revenue,
        quantity

    from source

)

select * from renamed
