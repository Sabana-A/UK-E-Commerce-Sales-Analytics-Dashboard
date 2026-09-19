-- ============================================
-- UK E-Commerce Sales Analytics
-- SQL Analysis Queries (Oracle)
-- ============================================

-- Table Creation
CREATE TABLE ecommerce_sales (
    InvoiceNo    VARCHAR2(20),
    StockCode    VARCHAR2(20),
    Description  VARCHAR2(100),
    Quantity     NUMBER,
    InvoiceDate  DATE,
    UnitPrice    NUMBER(10,2),
    CustomerID   NUMBER,
    Country      VARCHAR2(50),
    TotalPrice   NUMBER(10,2)
);

-- 1. Top-Selling Products by Quantity
SELECT * FROM (
    SELECT Description, SUM(Quantity) AS TotalQty
    FROM ecommerce_sales
    GROUP BY Description
    ORDER BY TotalQty DESC
)
WHERE ROWNUM <= 10;

-- 2. Top Countries by Revenue
SELECT Country, SUM(TotalPrice) AS Revenue
FROM ecommerce_sales
GROUP BY Country
ORDER BY Revenue DESC;

-- 3. Monthly Revenue Trend
SELECT TO_CHAR(InvoiceDate, 'YYYY-MM') AS Month, SUM(TotalPrice) AS Revenue
FROM ecommerce_sales
GROUP BY TO_CHAR(InvoiceDate, 'YYYY-MM')
ORDER BY Month;

-- 4. Top 10 Customers by Spend
SELECT * FROM (
    SELECT CustomerID, SUM(TotalPrice) AS TotalSpend
    FROM ecommerce_sales
    GROUP BY CustomerID
    ORDER BY TotalSpend DESC
)
WHERE ROWNUM <= 10;

-- 5. Average Order Value
SELECT SUM(TotalPrice) / COUNT(DISTINCT InvoiceNo) AS AvgOrderValue
FROM ecommerce_sales;
