WITH raw_airport_comments AS (
    SELECT * FROM {{ source('airstats', 'airport_comments') }}
)

SELECT
    ID                AS comment_id,
    THREAD_REF        AS thread_id,
    AIRPORT_REF       AS airport_id,
    AIRPORT_IDENT     AS airport_ident,
    DATE              AS comment_date,
    LOADED_AT         AS loaded_at,
    MEMBER_NICKNAME   AS member_nickname,
    SUBJECT           AS subject,
    BODY              AS body
FROM raw_airport_comments