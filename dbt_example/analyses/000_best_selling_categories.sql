SELECT
    category,
    ROUND(SUM(calculated_price), 2) AS total_earnings
FROM
    {{ ref("silver_sales") }}
GROUP BY
    category
ORDER BY
    total_earnings DESC
