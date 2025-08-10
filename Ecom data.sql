CREATE DATABASE Ecom;
USE Ecom;
CREATE TABLE ESD (
    ID INT,
    Warehouse_block VARCHAR(5),
    Mode_of_Shipment VARCHAR(50),
    Customer_care_calls INT,
    Customer_rating INT,
    Cost_of_the_Product DECIMAL(10,2),
    Prior_purchases INT,
    Product_importance VARCHAR(20),
    Gender CHAR(1),
    Discount_offered DECIMAL(10,2),
    Weight_in_gms INT,
    `Reached.on.Time_Y.N` INT
);
SELECT COUNT(*) FROM ESD;
SELECT * FROM ESD LIMIT 10;

SELECT * 
FROM ESD
WHERE Mode_of_Shipment = 'Flight';

SELECT ID, Customer_rating
FROM ESD
ORDER BY Customer_rating DESC;

SELECT ID, Customer_rating, Cost_of_the_Product
FROM ESD
ORDER BY Customer_rating ASC, Cost_of_the_Product DESC;


SELECT Warehouse_block, COUNT(*) AS TotalShipments
FROM ESD
GROUP BY Warehouse_block;

SELECT A.ID, A.Warehouse_block, B.Mode_of_Shipment
FROM ESD A
INNER JOIN ESD B
ON A.Customer_rating = B.Customer_rating
LIMIT 10;

SELECT 
    A.ID AS First_ID,
    A.Customer_rating,
    B.ID AS Second_ID,
    B.Mode_of_Shipment
FROM ESD A
LEFT JOIN ESD B
ON A.Customer_rating = B.Customer_rating
LIMIT 20;


SELECT 
    A.ID AS First_ID,
    A.Customer_rating AS First_Rating,
    B.ID AS Second_ID,
    B.Mode_of_Shipment AS Second_Shipment
FROM ESD A
RIGHT JOIN ESD B
ON A.Customer_rating = B.Customer_rating
LIMIT 20;

#Single-row subquery

SELECT ID, Cost_of_the_Product
FROM ESD
WHERE Cost_of_the_Product > (
    SELECT AVG(Cost_of_the_Product) 
    FROM ESD
);

#Multi-row subquery
SELECT ID, Warehouse_block
FROM ESD
WHERE Warehouse_block IN (
    SELECT Warehouse_block
    FROM ESD
    WHERE Customer_rating = 5
);


#Correlated subquery
SELECT A.ID, A.Customer_rating
FROM ESD A
WHERE Customer_rating > (
    SELECT AVG(Customer_rating)
    FROM ESD B
    WHERE B.Warehouse_block = A.Warehouse_block
);


SHOW TABLES;
SHOW DATABASES;
USE ecom;  -- or whatever your database is called
SHOW TABLES;


#aggregate function query
SELECT 
    Mode_of_Shipment,
    COUNT(*) AS total_orders,
    AVG(Cost_of_the_Product) AS avg_cost,
    SUM(Discount_offered) AS total_discount,
    MAX(Weight_in_gms) AS heaviest_product
FROM esd
GROUP BY Mode_of_Shipment;

#view analysis by Warehouse
CREATE VIEW warehouse_summary AS
SELECT 
    Warehouse_block,
    COUNT(*) AS total_orders,
    AVG(Cost_of_the_Product) AS avg_cost
FROM esd
GROUP BY Warehouse_block;


#Warehouse summary view
CREATE INDEX idx_esd_warehouse_block ON esd (Warehouse_block);

# Product importance summary view Groups by Product_importance → index that column
CREATE INDEX idx_esd_product_importance ON esd (Product_importance);





















