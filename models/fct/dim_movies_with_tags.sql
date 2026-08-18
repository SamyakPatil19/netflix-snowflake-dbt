{{
  config(
    materialized='ephemeral'
  )
}}

with movies AS (
  SELECT * FROM {{ ref('dim_movies') }}
),

tags AS (
  SELECT * FROM {{ ref('dim_genome_tags') }}
),

scores AS (
  SELECT * FROM {{ ref('fct_genome_score') }}
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
