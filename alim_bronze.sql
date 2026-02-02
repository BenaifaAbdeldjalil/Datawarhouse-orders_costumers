INSERT INTO bronze_customers (customer_id, name, email, country_code) VALUES
(5,  'Emma Laurent',   'emma@gmail.com',        'FR'),
(6,  'Lucas Bernard',  'lucas@gmail.com',       'FR'),
(7,  'Hans Müller',    'hans@gmail.com',        'DE'),
(8,  'Sophie Weber',   'sophie@gmail.com',      'DE'),
(9,  'John Smith',     'john@gmail.com',        'US'),
(10, 'Emily Clark',    'emily@gmail.com',       'US'),
(11, 'Marco Bianchi',  'marco@gmail.com',       'IT'),
(12, 'Giulia Romano',  NULL,                    'IT'),   -- email manquant
(13, 'Pedro Lopez',    'pedro@gmail.com',       'ES'),
(14, 'Maria Garcia',   'maria@gmail.com',       'ES');



INSERT INTO bronze_products (product_id, name, category) VALUES
(1004, 'Tablet',       'Electronics'),
(1005, 'Monitor',      'Electronics'),
(1006, 'Office Desk',  'Furniture'),
(1007, 'Keyboard',     'Accessories'),
(1008, 'Mouse',        'Accessories');



INSERT INTO bronze_orders (order_id, customer_id, product_id, amount, order_date) VALUES
-- Janvier
(106, 5,  1001, '1200',   '2026-01-05'),
(107, 6,  1002, '800',    '2026-01-10'),
(108, 7,  1003, '200',    '2026-01-12'),
(109, 8,  1006, '450',    '2026-01-15'),
(110, 9,  1004, '300',    '2026-01-18'),
(111, 10, 1007, 'abc',    '2026-01-20'), -- montant invalide
(112, 11, 1008, '50',     '2026-01-22'),

-- Février
(113, 5,  1005, '400',    '2026-02-02'),
(114, 6,  1008, '70',     '2026-02-05'),
(115, 7,  1001, '1100',   '2026-02-08'),
(116, 8,  1002, '900',    '2026-02-12'),
(117, 9,  1006, '500',    '2026-02-15'),
(118, 10, 1003, '250',    '2026-02-18'),
(119, 11, 1007, '85',     '2026-02-20'),

-- Mars
(120, 5,  1002, '850',    '2026-03-03'),
(121, 6,  1004, '320',    '2026-03-06'),
(122, 7,  1005, '450',    '2026-03-09'),
(123, 8,  1008, '60',     '2026-03-12'),
(124, 9,  1001, '1300',   '2026-03-15'),
(125, 10, 1006, '600',    '2026-03-18'),
(126, 11, 1007, '90',     '2026-03-22');
