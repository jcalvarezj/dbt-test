SELECT *
  FROM {{ ref('bronze_returns') }}
 WHERE refund_amount >= 2000
