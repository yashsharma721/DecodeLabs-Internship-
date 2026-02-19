CREATE DATABASE company;
USE company;
SELECT * FROM orders;

SELECT Customerid,SUM(Totalprice) AS Total_spent FROM orders GROUP BY Customerid ORDER BY Total_spent  DESC LIMIT 5;
SELECT ShippingAddress,SUM(Totalprice) AS Total_sales FROM orders GROUP BY Shippingaddress;
SELECT Product,SUM(Quantity) AS Total_quantity FROM orders GROUP BY Product HAVING SUM(Quantity) < 10;