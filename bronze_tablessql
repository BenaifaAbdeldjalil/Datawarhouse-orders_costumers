-- ====================================================
-- Fichier SQL : Exemple de tables Bronze pour Data Warehouse
-- Zone : Bronze (Raw / Brut)
-- Objectif : Stocker les données telles qu'elles arrivent, sans nettoyage
-- ====================================================

-- ====================================================
-- 1️⃣ Création de la table des clients bruts
-- ====================================================
CREATE TABLE bronze_customers (
    customer_id INT,          -- Identifiant du client
    name VARCHAR(100),        -- Nom complet
    email VARCHAR(100),       -- Email (peut être invalide ou manquant)
    country_code VARCHAR(5)   -- Code pays (ex: FR, DE, US)
);

-- Insertion de données brutes dans bronze_customers
INSERT INTO bronze_customers (customer_id, name, email, country_code) VALUES
(1, 'Alice Dupont', 'alice@gmail.com', 'FR'),
(2, 'Bob Martin', 'bob@invalid_email', 'DE'),  -- email incorrect volontairement
(3, 'Claire Lee', 'claire@example.com', 'US'),
(4, 'David Rossi', NULL, 'IT');               -- email manquant

-- ====================================================
-- 2️⃣ Création de la table des commandes brutes
-- ====================================================
CREATE TABLE bronze_orders (
    order_id INT,             -- Identifiant de la commande
    customer_id INT,          -- Référence au client
    product_id INT,           -- Référence au produit
    amount VARCHAR(20),       -- Montant brut (peut contenir des erreurs comme 'abc')
    order_date VARCHAR(20)    -- Date brute (différents formats possibles)
);

-- Insertion de données brutes dans bronze_orders
INSERT INTO bronze_orders (order_id, customer_id, product_id, amount, order_date) VALUES
(101, 1, 1001, '250.5', '2026-01-15'),
(102, 2, 1002, 'abc', '2026/01/16'),      -- erreur volontaire dans amount et date
(103, 3, 1003, '180', '17-01-2026'),     -- format date différent
(104, 1, 1002, '300', '2026-01-20'),
(105, 4, 1003, '150', '2026-01-21');

-- ====================================================
-- 3️⃣ Création de la table des produits bruts
-- ====================================================
CREATE TABLE bronze_products (
    product_id INT,          -- Identifiant du produit
    name VARCHAR(100),       -- Nom du produit
    category VARCHAR(50)     -- Catégorie du produit
);

-- Insertion de données brutes dans bronze_products
INSERT INTO bronze_products (product_id, name, category) VALUES
(1001, 'Laptop', 'Electronics'),
(1002, 'Phone', 'Electronics'),
(1003, 'Desk Chair', 'Furniture');

-- ====================================================
-- ✅ Résumé
-- Tables Bronze créées :
-- 1. bronze_customers : clients bruts, emails et pays non nettoyés
-- 2. bronze_orders : commandes brutes, montants et dates potentiellement incorrects
-- 3. bronze_products : produits bruts avec catégories
-- Ces tables constituent la zone "raw" de votre data warehouse
-- Elles serviront ensuite à construire les zones Silver et Gold
-- ====================================================
