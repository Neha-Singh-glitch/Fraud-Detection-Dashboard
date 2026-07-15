-- ===========================================
-- Fraud Detection Dashboard
-- SQL Queries
-- ===========================================

// View Sample Data
SELECT *
FROM transactions
LIMIT 10;

//  High Value Transactions
SELECT *
FROM transactions
WHERE Amount > 4500;

//  Customers with Frequent Transactions
SELECT
Customer_ID,
COUNT(*) AS Total_Transactions
FROM transactions
GROUP BY Customer_ID
HAVING COUNT(*) > 30
ORDER BY Total_Transactions DESC;

// Transactions by Merchant
SELECT
Merchant,
COUNT(*) AS Total_Transactions
FROM transactions
GROUP BY Merchant
ORDER BY Total_Transactions DESC;

//  Total Amount by City
SELECT
City,
SUM(Amount) AS Total_Amount
FROM transactions
GROUP BY City
ORDER BY Total_Amount DESC;



// Average Transaction Amount by City
SELECT
City,
AVG(Amount) AS Average_Amount
FROM transactions
GROUP BY City
ORDER BY Average_Amount DESC;

//  Suspicious IP Addresses
SELECT
IP_Address,
COUNT(*) AS Total_Transactions
FROM transactions
GROUP BY IP_Address
ORDER BY Total_Transactions DESC;

//  Top 10 Highest Transactions
SELECT *
FROM transactions
ORDER BY Amount DESC
LIMIT 10;
