with source as (

select * from {{ ref('stg_orders')}}
),


rating_food_less_5 as (

select
    order_id,
    customer_rating_food

from source

where customer_rating_food > 5

)

select * from rating_food_less_5