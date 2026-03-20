SELECT
    comment_id,
    airport_id,
    comment_date,
    member_nickname
FROM {{ ref('int_comments_clean') }}