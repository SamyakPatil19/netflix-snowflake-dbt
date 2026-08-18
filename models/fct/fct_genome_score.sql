WITH src_scores AS(
  SELECT * FROM {{ ref('src_genome_score') }}
)

SELECT
  movie_id,
  tag_id,
  ROUND(relevance) AS relevance_score
FROM src_scores
WHERE relevance > 0 