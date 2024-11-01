WITH source AS (
    SELECT {{ dbt_utils.star(from=source('thelook','events')) }}
      FROM {{ source('thelook','events') }}
)
SELECT * FROM source