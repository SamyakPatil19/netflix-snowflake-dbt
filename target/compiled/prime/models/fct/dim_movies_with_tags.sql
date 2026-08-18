

with movies AS (
  SELECT * FROM MOVIELENS.DEV.dim_movies
),

tags AS (
  SELECT * FROM MOVIELENS.DEV.dim_genome_tags
),

scores AS (
  SELECT * FROM MOVIELENS.DEV.fct_genome_score
)

select
  m.movie_id,
  m.movie_title,
  m.genre_array,
  m.genres,
  t.tag_id,
  t.tag_name,
  s.relevance_score
from movies m
left join scores s
  on m.movie_id = s.movie_id
left join tags t
  on s.tag_id = t.tag_id