-- 1
SELECT ProductName, QuantityPerUnit 
FROM Products

-- 2
SELECT ProductID, ProductName 
FROM Products
WHERE Discontinued = 0 

-- 3
SELECT ProductID, ProductName 
FROM Products
WHERE Discontinued = 1 

-- 4
SELECT ProductName, UnitPrice 
FROM Products
ORDER BY UnitPrice DESC

-- 5
SELECT ProductID, ProductName, UnitPrice 
FROM Products
WHERE Discontinued = 0 and UnitPrice < 20

-- 6
SELECT ProductID, ProductName, UnitPrice 
FROM Products
WHERE UnitPrice BETWEEN 15 AND 25

-- 7
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)

-- 8
SELECT TOP 10 ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC

-- 9
SELECT COUNT(ProductID) [Current Products], 
(SELECT COUNT(ProductID) FROM Products WHERE Discontinued = 1) [Discontinued Products]
FROM Products 
WHERE Discontinued = 0

-- 10
SELECT ProductName, UnitsOnOrder, UnitsInStock
FROM Products
WHERE UnitsInStock < UnitsOnOrder

