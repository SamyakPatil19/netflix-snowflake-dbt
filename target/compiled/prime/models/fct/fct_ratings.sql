

WITH src_rating AS (
  SELECT * FROM MOVIELENS.DEV.src_rating
)

SELECT
  user_id,
  movie_id,
  rating,
  rating_timestamp
FROM src_rating
WHERE rating IS NOT NULL


  AND rating_timestamp > (SELECT MAX(rating_timestamp) FROM MOVIELENS.DEV.fct_ratings)
