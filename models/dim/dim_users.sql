WITH rating AS(
  SELECT DISTINCT user_id FROM {{ ref('src_rating') }}
),

tags AS(
  SELECT DISTINCT user_id FROM {{ ref('src_tags') }}
)
SELECT DISTINCT user_id 
FROM (
  SELECT * FROM rating
  UNION ALL
  SELECT * FROM tags
)