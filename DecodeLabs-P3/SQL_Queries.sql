CREATE DATABASE CREATE DATABASE decodelabs_project3;

USE decodelabs_project3;

CREATE TABLE orders (
    OrderID VARCHAR(20),
    Date DATE,
    CustomerID VARCHAR(20),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);

SELECT COUNT(*) FROM orders;

SELECT*FROM orders;

SELECT COUNT(*) AS TotalOrders FROM orders;

SELECT SUM(TotalPrice) AS Revenue FROM orders;

SELECT AVG(TotalPrice) AS AvgOrderValue FROM orders;

SELECT * FROM orders ORDER BY TotalPrice DESC LIMIT 10;

SELECT*FROM orders WHERE TOTALPRICE>2000;

SELECT*FROM orders WHERE PaymentMethod='UPI';

SELECT*FROM orders WHERE PaymentMethod='Gift Card';

SELECT PaymentMethod,SUM(TotalPrice) AS Revenue FROM orders GROUP BY PaymentMethod ORDER BY Revenue DESC;

SELECT OrderStatus,COUNT(*) AS Orders FROM orders GROUP BY OrderStatus;

SELECT Product,AVG(TotalPrice) AS AvgPrice FROM orders GROUP BY Product ORDER BY AvgPrice DESC;

SELECT Product,SUM(Quantity) AS TotalSold FROM orders GROUP BY Product ORDER BY TotalSold DESC;

SELECT CouponCode,COUNT(*) AS TimesUsed FROM orders GROUP BY CouponCode ORDER BY TimesUsed DESC;

SELECT YEAR(Date) AS Year,MONTH(Date) AS Month,SUM(TotalPrice) AS Revenue FROM orders GROUP BY Year, Month ORDER BY Year, Month;

SELECT Product,SUM(Quantity) AS Sold FROM orders GROUP BY Product HAVING Sold > 100;