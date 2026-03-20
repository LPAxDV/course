WITH airports AS (

    SELECT *
    FROM {{ ref('src_airports') }}

)

SELECT *
FROM airports
WHERE AIRPORT_ID IS NOT NULL