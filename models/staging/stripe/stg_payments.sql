select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount stored in cents convert it into dollars
    amount/100  as amount,
    created as created_dt

 from {{ source('stripe','payment')}}
 