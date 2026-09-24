USE GREENGROOVE;

CREATE TABLE Payment
(
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMode VARCHAR(20),
    PaymentDate DATE,
    PaymentAmount DECIMAL(10,2),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Payment VALUES
(601, 501, 'UPI', '2026-08-01', 2500.00, 'Successful'),
(602, 502, 'Card', '2026-08-02', 1500.00, 'Successful'),
(603, 503, 'Cash', '2026-08-05', 3200.00, 'Failed'),
(604, 504, 'UPI', '2026-08-07', 1800.00, 'Successful'),
(605, 501, 'Card', '2026-08-08', 2500.00, 'Successful'),
(606, 502, 'Cash', '2026-08-09', 1500.00, 'Failed'),
(607, 503, 'UPI', '2026-08-10', 3200.00, 'Successful'),
(608, 504, 'Card', '2026-08-11', 1800.00, 'Successful'),
(609, 501, 'Cash', '2026-08-12', 2500.00, 'Successful'),
(610, 502, 'UPI', '2026-08-13', 1500.00, 'Failed');

SELECT * FROM Payment;

UPDATE Payment
SET PaymentStatus = 'Successful'
WHERE PaymentID = 603;

SELECT * FROM Payment
WHERE PaymentStatus = 'Successful';

SELECT * FROM Payment
WHERE PaymentStatus = 'Failed';

SELECT * FROM Payment
WHERE PaymentMode = 'UPI';

SELECT * FROM Payment
WHERE PaymentMode = 'Card';

SELECT * FROM Payment
WHERE PaymentMode = 'Cash';

SELECT PaymentMode, COUNT(*) AS No_Of_Transactions
FROM Payment
GROUP BY PaymentMode;

SELECT PaymentMode, SUM(PaymentAmount) AS Total_Amount_Received
FROM Payment
WHERE PaymentStatus = 'Successful'
GROUP BY PaymentMode;