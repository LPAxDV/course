WITH raw_runways AS (
    SELECT * FROM {{ source('airstats', 'runways') }}
)

SELECT
    ID                               AS runway_id,
    AIRPORT_REF                      AS airport_id,
    AIRPORT_IDENT                    AS airport_ident,
    LENGTH_FT                        AS length_ft,
    WIDTH_FT                         AS width_ft,
    SURFACE                          AS surface,
    LIGHTED                          AS is_lighted,
    CLOSED                           AS is_closed,
    LE_IDENT                         AS le_ident,
    LE_LATITUDE_DEG                  AS le_latitude,
    LE_LONGITUDE_DEG                 AS le_longitude,
    LE_ELEVATION_FT                  AS le_elevation_ft,
    LE_HEADING_DEGT                  AS le_heading,
    LE_DISPLACED_THRESHOLD_FT        AS le_displaced_threshold_ft,
    HE_IDENT                         AS he_ident,
    HE_LATITUDE_DEG                  AS he_latitude,
    HE_LONGITUDE_DEG                 AS he_longitude,
    HE_ELEVATION_FT                  AS he_elevation_ft,
    HE_HEADING_DEGT                  AS he_heading,
    HE_DISPLACED_THRESHOLD_FT        AS he_displaced_threshold_ft
FROM raw_runways