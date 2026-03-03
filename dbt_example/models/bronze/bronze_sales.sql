SELECT *
  FROM {{ source('dbt_source', 'fact_sales') }}
