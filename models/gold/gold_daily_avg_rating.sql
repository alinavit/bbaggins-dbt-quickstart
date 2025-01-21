SELECT
    DATE(DATE_FORMAT(reviews.CREATED_AT, 'yyyy-MM-dd')) as review_date,
    reviews.product_id,
    products.product_name,
    avg(reviews.rating) avg_rating
FROM {{ ref('bronze_reviews') }} reviews 
LEFT JOIN {{ ref('silver_products') }} products 
    ON reviews.product_id=products.id 

GROUP BY 
    DATE(DATE_FORMAT(reviews.CREATED_AT, 'yyyy-MM-dd')),
    reviews.product_id,
    products.product_name
