with source as (

select * from {{ ref('stg_restaurants')}}
),


id_positive as (

select
    restaurantid

from source

where restaurantid < 1

)

select * from id_positive