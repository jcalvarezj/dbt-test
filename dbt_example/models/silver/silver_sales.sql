WITH sales_base AS (
    SELECT
        sales_id,
        product_sk,
        customer_sk,
        unit_price,
        quantity,
        ROUND(unit_price * quantity, 2) AS calculated_price,
        payment_method
    FROM
        {{ ref("bronze_sales") }}
), product_base AS (
    SELECT
        product_sk,
        product_name,
        category
    FROM
        {{ ref("bronze_product") }}
), customer_base AS (
    SELECT
        customer_sk,
        CONCAT(first_name, ' ', last_name) AS full_name,
        loyalty_tier
    FROM
        {{ ref("bronze_customer") }}
)
SELECT
    sales_base.sales_id,
    sales_base.calculated_price,
    sales_base.payment_method,
    product_base.product_name,
    product_base.category,
    customer_base.full_name,
    customer_base.loyalty_tier
FROM
    sales_base
JOIN
    product_base ON sales_base.product_sk = product_base.product_sk
JOIN
    customer_base ON sales_base.customer_sk = customer_base.customer_sk
