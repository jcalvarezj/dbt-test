{% test is_non_negative(model, column_name) %}

WITH validation_base AS (
    SELECT {{ column_name }}
      FROM {{ model }}
), validation_errors AS (
    SELECT {{ column_name }}
      FROM validation_base
     WHERE {{ column_name }} < 0
)

SELECT *
  FROM validation_errors

{% endtest %}
