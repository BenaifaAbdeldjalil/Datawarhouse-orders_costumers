-- ====================================================
-- SILVER : Clients nettoyés
-- - Suppression des clients sans email
-- - Transformation du code pays en nom lisible
-- ====================================================
CREATE TABLE silver_customers AS
SELECT
    customer_id,
    name,
    email,
    CASE 
        WHEN country_code = 'FR' THEN 'France'
        WHEN country_code = 'DE' THEN 'Germany'
        WHEN country_code = 'US' THEN 'USA'
        WHEN country_code = 'IT' THEN 'Italy'
        ELSE 'Unknown'
    END AS country
FROM bronze_customers
WHERE email IS NOT NULL;


-- ====================================================
-- SILVER : Commandes nettoyées
-- - Conversion du montant en numérique
-- - Standardisation du format de date
-- - Les valeurs invalides deviennent NULL
-- ====================================================
CREATE TABLE silver_orders AS
SELECT
    order_id,
    customer_id,
    product_id,
    TRY_CAST(amount AS DECIMAL(10,2)) AS amount,
    CAST(order_date AS DATE) AS order_date
FROM bronze_orders;


-- ====================================================
-- SILVER : Produits
-- - Peu de nettoyage nécessaire
-- - On conserve la structure
-- ====================================================
CREATE TABLE silver_products AS
SELECT
    product_id,
    name,
    category
FROM bronze_products;
