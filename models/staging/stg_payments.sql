select id as id
, "orderID" as order_id
, "paymentMethod" as payment_method
, amount as amount
, created as created
from {{ source('stripe', 'payment')}}