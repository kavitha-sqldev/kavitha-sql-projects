-- Inventory Management System - Sample Reports
-- Author: Kavitha
-- Description: Sample queries to generate reports for inventory insights

--------------------------------------------------
-- 1. Current Stock Report
--------------------------------------------------
SELECT 
    p.prodid,
    p.prodname,
    i.stkqty AS Stock_Quantity,
    i.stkdt AS Last_Stock_Date
FROM Inventory i
JOIN prod p ON i.prodid = p.prodid;

--------------------------------------------------
-- 2. Purchase Summary by Product
--------------------------------------------------
SELECT 
    p.prodid,
    p.prodname,
    SUM(po.qty) AS Total_Purchased
FROM PurcOrd po
JOIN prod p ON po.prodid = p.prodid
GROUP BY p.prodid, p.prodname;

--------------------------------------------------
-- 3. Sales Summary by Product
--------------------------------------------------
SELECT 
    p.prodid,
    p.prodname,
    SUM(so.saleqty) AS Total_Sold
FROM SaleOrd so
JOIN prod p ON so.prodid = p.prodid
GROUP BY p.prodid, p.prodname;

--------------------------------------------------
-- 4. Stock Alert (Low Inventory)
--------------------------------------------------
SELECT 
    p.prodid,
    p.prodname,
    i.st
