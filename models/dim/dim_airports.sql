SELECT
    AIRPORT_ID,
    AIRPORT_IDENT,
    AIRPORT_NAME,
    COUNTRY,
    CITY
FROM {{ ref('int_airports_clean') }}