-- ====================================================
-- GOLD : Revenu mensuel par pays
-- KPI :
-- - Chiffre d'affaires
-- - Nombre de clients actifs
-- - Panier moyen
-- ====================================================
CREATE TABLE gold_monthly_revenue_by_country AS
SELECT
    c.country,
    DATE_TRUNC('month', o.order_date) AS month,
    SUM(o.amount) AS total_revenue,
    COUNT(DISTINCT o.customer_id) AS active_customers,
    AVG(o.amount) AS average_order_value
FROM silver_orders o
JOIN silver_customers c
    ON o.customer_id = c.customer_id
WHERE o.amount IS NOT NULL
GROUP BY c.country, DATE_TRUNC('month', o.order_date);


-- ====================================================
-- GOLD : Revenu mensuel par catégorie de produit
-- KPI :
-- - Revenu par catégorie
-- - Nombre de clients uniques
-- ====================================================
CREATE TABLE gold_monthly_revenue_by_category AS
SELECT
    p.category,
    DATE_TRUNC('month', o.order_date) AS month,
    SUM(o.amount) AS total_revenue,
    COUNT(DISTINCT o.customer_id) AS unique_customers
FROM silver_orders o
JOIN silver_products p
    ON o.product_id = p.product_id
WHERE o.amount IS NOT NULL
GROUP BY p.category, DATE_TRUNC('month', o.order_date);


-- ====================================================
-- GOLD : KPI par client
-- - Dépense totale
-- - Nombre de commandes
-- - Panier moyen
-- ====================================================
CREATE TABLE gold_customer_kpi AS
SELECT
    c.customer_id,
    c.name,
    c.country,
    SUM(o.amount) AS total_spent,
    COUNT(o.order_id) AS total_orders,
    AVG(o.amount) AS average_order_value
FROM silver_orders o
JOIN silver_customers c
    ON o.customer_id = c.customer_id
WHERE o.amount IS NOT NULL
GROUP BY c.customer_id, c.name, c.country;

