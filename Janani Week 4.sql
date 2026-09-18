USE GREENGROOVE;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    OrderStatus VARCHAR(20)
);

CREATE TABLE Order_Details (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

INSERT INTO Orders
(OrderID, CustomerName, OrderDate, TotalAmount, OrderStatus)
VALUES
(501, "Janani", '2026-08-01', 2500.00, 'Delivered'),
(502, "Nivedha", '2026-08-02', 1500.00, 'Pending'),
(503, "Rajasree", '2026-08-05', 3200.00, 'Shipped'),
(504, "Poojasree", '2026-08-07', 1800.00, 'Delivered');

INSERT INTO Order_Details
(OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 501, 101, 2, 200.00),
(2, 501, 103, 1, 150.00),
(3, 502, 102, 1, 80.00),
(4, 503, 104, 2, 120.00),
(5, 503, 106, 1, 90.00),
(6, 504, 107, 2, 70.00);

SELECT * FROM Orders;

SELECT * FROM Order_Details;

UPDATE Orders
SET OrderStatus = "Shipped"
WHERE OrderID = 502;

UPDATE Orders
SET OrderStatus = "Delivered"
WHERE OrderID = 503;

SELECT * FROM Orders
ORDER BY CustomerName, OrderDate;

SELECT * FROM Orders
WHERE CustomerName = "Anu"
ORDER BY OrderDate;

SELECT * FROM Orders
WHERE OrderStatus = "Pending";

SELECT * FROM Orders
WHERE OrderStatus = "Shipped";

SELECT * FROM Orders
WHERE OrderStatus = "Delivered";

SELECT CustomerName, COUNT(*)
FROM Orders
GROUP BY CustomerName;

SELECT CustomerName, SUM(TotalAmount)
FROM Orders
GROUP BY CustomerName;
