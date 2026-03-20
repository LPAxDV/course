WITH comments AS (

    SELECT *
    FROM {{ ref('src_airport_comments') }}

),

airports AS (

    SELECT AIRPORT_ID
    FROM {{ ref('src_airports') }}

)

SELECT c.*
FROM comments c
INNER JOIN airports a
    ON c.airport_id = a.AIRPORT_ID