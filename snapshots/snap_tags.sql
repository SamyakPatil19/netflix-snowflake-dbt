{% snapshot snap_tags %}

{{ config(
  target_schema='snapshots',
  unique_key=['user_id', 'movie_id', 'tag'],
  strategy='timestamp',
  updated_at='tag_timestamp',
  invalidate_hard_deletes=True
  ) 
}}

select
  {{ dbt_utils.generate_surrogate_key(['user_id','movie_id','tag']) }} AS row_key,
  user_id,
  movie_id,
  tag,
  CAST(tag_timestamp AS TIMESTAMP_NTZ) AS tag_timestamp
from {{ ref('src_tags') }}
limit 100

{% endsnapshot %}