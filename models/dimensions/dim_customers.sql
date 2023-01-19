select

    customer_name,
    max(customer_rating_food) as "Max customer rating food",
    max(customer_rating_delivery) as "Max customer rating delivery"

from {{ ref("stg_orders") }}

group by customer_name