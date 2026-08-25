CREATE TABLE sneaker_store (
    id INTEGER PRIMARY KEY,
    name TEXT,
    brand TEXT,
    category TEXT,
    price INTEGER,
    stock INTEGER
);

INSERT INTO sneaker_store VALUES (1, "Air Runner", "Nike", "Running", 4500, 12);
INSERT INTO sneaker_store VALUES (2, "Ultraboost", "Adidas", "Running", 9000, 8);
INSERT INTO sneaker_store VALUES (3, "Classic Leather", "Puma", "Casual", 3500, 15);
INSERT INTO sneaker_store VALUES (4, "Chuck Taylor", "Converse", "Casual", 4200, 10);
INSERT INTO sneaker_store VALUES (5, "574 Core", "New Balance", "Casual", 6500, 7);
INSERT INTO sneaker_store VALUES (6, "Gel-Kayano", "Asics", "Running", 8500, 6);
INSERT INTO sneaker_store VALUES (7, "Superstar", "Adidas", "Lifestyle", 5500, 11);
INSERT INTO sneaker_store VALUES (8, "Air Force 1", "Nike", "Lifestyle", 7500, 9);
INSERT INTO sneaker_store VALUES (9, "Suede Classic", "Puma", "Lifestyle", 4800, 13);
INSERT INTO sneaker_store VALUES (10, "Old Skool", "Vans", "Skateboarding", 5000, 14);
INSERT INTO sneaker_store VALUES (11, "Revolution 7", "Nike", "Running", 4000, 16);
INSERT INTO sneaker_store VALUES (12, "RS-X", "Puma", "Lifestyle", 6000, 5);
INSERT INTO sneaker_store VALUES (13, "Forum Low", "Adidas", "Casual", 7000, 8);
INSERT INTO sneaker_store VALUES (14, "Fresh Foam", "New Balance", "Running", 8000, 6);
INSERT INTO sneaker_store VALUES (15, "Sk8-Hi", "Vans", "Skateboarding", 6200, 10);

-- display all products
SELECT * FROM sneaker_store;

-- sort products by price
SELECT * FROM sneaker_store ORDER BY price ASC;

-- Calculate the average price of all sneakers
SELECT AVG(price) AS average_price FROM sneaker_store;

-- TOTAL VAL OF ALL STOCK
SELECT SUM(price * stock) AS total_inventory_value
FROM sneaker_store;

-- CHEAPEST AND MOST EXPENSIVE SNEAKERS
SELECT MIN(price) AS cheapest_price,
       MAX(price) AS most_expensive_price
FROM sneaker_store;
