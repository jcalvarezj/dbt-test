SELECT *
  FROM {{ source('dbt_source', 'dim_product') }}
