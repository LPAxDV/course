WITH raw_airports AS (
    SELECT * FROM {{ source('airstats', 'airports') }} 
)

SELECT 
    ID            AS AIRPORT_ID_TEST,
    IDENT         AS AIRPORT_IDENT,
    TYPE          AS AIRPORT_TYPE,
    NAME          AS AIRPORT_NAME,
    LATITUDE_DEG  AS LATITUDE,
    LONGITUDE_DEG AS LONGITUDE,
    ELEVATION_FT  AS ELEVATION_FT,
    ISO_COUNTRY   AS COUNTRY,
    ISO_REGION    AS REGION,
    MUNICIPALITY  AS CITY,
    IATA_CODE,
    GPS_CODE
FROM 
    raw_airports-- test ci
