WITH runways AS (

    SELECT
        airport_id,
        COUNT(*) AS nb_runways,
        AVG(length_ft) AS avg_runway_length
    FROM {{ ref('fct_runways') }}
    GROUP BY airport_id

),

comments AS (

    SELECT
        airport_id,
        COUNT(*) AS nb_comments
    FROM {{ ref('fct_comments') }}
    GROUP BY airport_id

)

SELECT
    a.AIRPORT_ID,
    a.AIRPORT_NAME,
    a.COUNTRY,

    COALESCE(r.nb_runways, 0) AS nb_runways,
    COALESCE(r.avg_runway_length, 0) AS avg_runway_length,
    COALESCE(c.nb_comments, 0) AS nb_comments

FROM {{ ref('dim_airports') }} a

LEFT JOIN runways r
    ON a.AIRPORT_ID = r.airport_id

LEFT JOIN comments c
    ON a.AIRPORT_ID = c.airport_id