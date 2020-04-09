    select
        customer_id,
        min(order_date) as first_order_date,
        max(order_date) as most_recent_order_date,
        count(orders.order_id) as number_of_orders,
        sum(payments.amount) as lifetime_value
    from {{ ref('stg_orders') }} orders
    left outer join {{ ref('stg_payments') }} payments on orders.order_id=payments.order_id
    group by 1