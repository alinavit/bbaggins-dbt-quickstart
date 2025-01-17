SELECT
    ID,
    CREATED_AT,
    CITY,
    STATE,
    YEAR(BIRTH_DATE) AS BIRTH_YEAR,
    SOURCE AS SALES_CHANNEL
FROM {{ref('bronze_users')}}