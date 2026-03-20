WITH runways AS (

    SELECT *
    FROM {{ ref('src_runway') }}

)

SELECT *
FROM runways
WHERE length_ft IS NOT NULL
  AND length_ft > 0