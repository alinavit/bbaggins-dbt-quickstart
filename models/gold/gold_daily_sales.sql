SELECT
    orders.order_date,
    products.product_name,
    products.category,
    products.vendor,
    users.city,
    users.state,
    users.sales_channel,
    SUM(orders.order_amount) as total_revenue
FROM {{ref('silver_orders')}} orders 
LEFT JOIN {{ ref('silver_products') }} products
    ON orders.product_id = products.ID
LEFT JOIN {{ ref('silver_users') }} users 
    ON orders.user_id = users.id
GROUP BY 
    orders.order_date,
    products.product_name,
    products.category,
    products.vendor,
    users.city,
    users.state,
    users.sales_channel

