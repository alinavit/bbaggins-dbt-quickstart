SELECT
    ID,
    CREATED_AT,
    TITLE AS PRODUCT_NAME,
    CATEGORY,
    EAN,
    VENDOR,
    PRICE
FROM {{ ref('bronze_products') }}