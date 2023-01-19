with restaurants as (

    select * from {{ref('restaurants')}}

)

select * from restaurants