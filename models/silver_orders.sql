SELECT 
    ID,
    DATE_FORMAT(CREATED_AT, 'yyyy-MM-dd') as order_date,
    USER_ID,
    PRODUCT_ID,
    QUANTITY,
    UNIT_PRICE,
    QUANTITY*UNIT_PRICE AS ORDER_AMOUNT
FROM {{ ref('bronze_orders') }}