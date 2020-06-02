select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status as payment_status,
    1.0 * amount / 100 as amount,
    created as created_at

from raw.stripe.payment

where status != 'fail'