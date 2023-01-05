with source as (

select * from {{ ref('stg_orders')}}
),


rating_delivery_less_5 as (

select
    order_id,
    customer_rating_delivery

from source

where customer_rating_delivery > 5

)

select * from rating_delivery_less_5