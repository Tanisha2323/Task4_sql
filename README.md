#🚚 E-Commerce Shipping Data Analysis (MySQL Project)
#📌 Project Overview
This project focuses on analyzing e-commerce shipping data using MySQL.
It covers creating a database, importing the dataset, performing queries, creating analytical views, and optimizing performance using indexes.
The goal is to explore shipment patterns, warehouse performance, and customer behavior.

---

## 📂 Dataset  
**File:** `Ecommerce_Shipping_Data.csv`  
**Rows:** ~10,000+  
**Columns:**  
- `ID`  
- `Warehouse_block`  
- `Mode_of_Shipment`  
- `Customer_care_calls`  
- `Customer_rating`  
- `Cost_of_the_Product`  
- `Prior_purchases`  
- `Product_importance`  
- `Gender`  
- `Discount_offered`  
- `Weight_in_gms`  
- `Reached.on.Time_Y.N`  

---



## 🛠️ Process  
- Created **Database** & **Table** structure in MySQL (`Ecom`, `ESD`).  
- Imported dataset from CSV.  
- Performed **SELECT**, **WHERE**, **ORDER BY**, **GROUP BY** queries.  
- Implemented **Joins** (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`).  
- Used **Subqueries**: single-row, multi-row, correlated.  
- Applied **Aggregate Functions** (`SUM`, `AVG`, `COUNT`, `MAX`).  
- Created **Views** for quick analysis.  
- Added **Indexes** to improve query performance.  

---



## 📊 Key Insights  
- **Shipment Modes:** Majority of shipments were via **Ship**, followed by **Flight** and **Road**.  
- **Warehouse Performance:** Certain warehouse blocks consistently handled higher order volumes.  
- **Customer Behavior:** High ratings correlate with faster delivery modes.  
- **Discount Trends:** Higher discounts offered mostly on heavier products.  

---


## 📂 SQL Features Demonstrated  
- `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`  
- `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`  
- **Subqueries**: single-row, multi-row, correlated  
- **Aggregate functions**: `SUM`, `AVG`, `COUNT`, `MAX`  
- `CREATE VIEW` for reusable analysis  
- `CREATE INDEX` for optimization  

---


🚀 Author
Tanisha More
