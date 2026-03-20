SELECT
    runway_id,
    airport_id,
    length_ft,
    width_ft,
    surface,
    is_lighted,
    is_closed
FROM {{ ref('int_runways_clean') }}