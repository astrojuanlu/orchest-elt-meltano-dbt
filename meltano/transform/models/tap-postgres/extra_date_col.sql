{{
  config(
    materialized='table'
  )
}}

WITH names_us AS (
  SELECT * FROM {{ source('tap-postgres', 'public-names_us') }}
)

SELECT
  *
  , CAST(CURRENT_DATETIME() AS DATETIME) as date_column
FROM names_us
