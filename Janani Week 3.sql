USE GREENGROOVE;

CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "GREEN FARM", "9876102001", "greenfarm@gmail.com", "Chennai"),
(202, "NATURE FRESH", "9876102002", "naturefresh@gmail.com", "Madurai"),
(203, "ORGANIC WORLD", "9876102003", "organicworld@gmail.com", "Coimbatore"),
(204, "FRESH HARVEST", "9876102004", "freshharvest@gmail.com", "Salem"),
(205, "GREEN MART", "9876102005", "greenmart@gmail.com", "Trichy"),
(206, "PURE ORGANICS", "9876102006", "pureorganics@gmail.com", "Chennai"),
(207, "NATURE MART", "9876102007", "naturemart@gmail.com", "Madurai"),
(208, "FARM FRESH", "9876102008", "farmfresh@gmail.com", "Coimbatore"),
(209, "GREEN GROCER", "9876102009", "greengrocer@gmail.com", "Salem"),
(210, "ORGANIC HUB", "9876102010", "organichub@gmail.com", "Trichy"),
(211, "FRESH MART", "9876102011", "freshmart@gmail.com", "Chennai"),
(212, "GREEN WORLD", "9876102012", "greenworld@gmail.com", "Madurai"),
(213, "PURE HARVEST", "9876102013", "pureharvest@gmail.com", "Coimbatore"),
(214, "ORGANIC MART", "9876102014", "organicmart@gmail.com", "Salem"),
(215, "NATURE HUB", "9876102015", "naturehub@gmail.com", "Trichy"),
(216, "FARM HOUSE", "9876102016", "farmhouse@gmail.com", "Chennai"),
(217, "GREEN HOUSE", "9876102017", "greenhouse@gmail.com", "Madurai"),
(218, "HEALTHY HARVEST", "9876102018", "healthyharvest@gmail.com", "Coimbatore"),
(219, "FRESH ORGANICS", "9876102019", "freshorganics@gmail.com", "Salem"),
(220, "GREEN CARE", "9876102020", "greencare@gmail.com", "Trichy"),
(221, "ORGANIC STORE", "9876102021", "organicstore@gmail.com", "Chennai"),
(222, "NATURE FRESH PLUS", "9876102022", "naturefreshplus@gmail.com", "Madurai"),
(223, "GREEN FARM PLUS", "9876102023", "greenfarmplus@gmail.com", "Coimbatore"),
(224, "PURE FOOD MART", "9876102024", "purefoodmart@gmail.com", "Salem"),
(225, "GREENGROOVE STORE", "9876102025", "greengroove@gmail.com", "Trichy"),
(226, "FRESH FARM HUB", "9876102026", "freshfarmhub@gmail.com", "Chennai"),
(227, "ORGANIC FOOD WORLD", "9876102027", "organicfoodworld@gmail.com", "Madurai"),
(228, "NATURE ORGANICS", "9876102028", "natureorganics@gmail.com", "Coimbatore"),
(229, "PURE GREEN STORE", "9876102029", "puregreenstore@gmail.com", "Salem"),
(230, "FRESH FOOD MART", "9876102030", "freshfoodmart@gmail.com", "Trichy");

SELECT * FROM Seller;


CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 35),
(302, 102, 202, "AVAILABLE", 40),
(303, 103, 203, "AVAILABLE", 25),
(304, 104, 204, "AVAILABLE", 35),
(305, 105, 205, "AVAILABLE", 20),
(306, 106, 206, "AVAILABLE", 40),
(307, 107, 207, "AVAILABLE", 45),
(308, 109, 209, "AVAILABLE", 35),
(309, 110, 210, "AVAILABLE", 25),
(310, 111, 211, "AVAILABLE", 40),
(311, 112, 212, "AVAILABLE", 45),
(312, 113, 213, "AVAILABLE", 30),
(313, 114, 214, "AVAILABLE", 35),
(314, 115, 215, "AVAILABLE", 20),
(315, 116, 216, "AVAILABLE", 40),
(316, 117, 217, "AVAILABLE", 35),
(317, 118, 218, "AVAILABLE", 40),
(318, 119, 219, "AVAILABLE", 30),
(319, 120, 220, "AVAILABLE", 35),
(320, 126, 226, "AVAILABLE", 20),
(321, 127, 227, "AVAILABLE", 25),
(322, 128, 228, "AVAILABLE", 35),
(323, 129, 229, "AVAILABLE", 20),
(324, 130, 230, "AVAILABLE", 30);

SELECT * FROM Inventory;
SELECT * FROM Seller;
SELECT * FROM Product;


UPDATE Inventory
SET Stock = 25,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 305;

SELECT * FROM Inventory
WHERE InventoryID = 305;


UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 313;

SELECT * FROM Inventory
WHERE InventoryID = 313;


UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 302;

SELECT * FROM Inventory
WHERE InventoryID = 302;


UPDATE Seller
SET ContactNo = "9876543210"
WHERE SellerID = 208;

SELECT * FROM Seller
WHERE SellerID = 208;


DELETE FROM Inventory
WHERE InventoryID = 323;

SELECT * FROM Inventory;


SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";


SELECT * FROM Inventory
ORDER BY Stock DESC;


SELECT * FROM Inventory;
SELECT * FROM Seller;


DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Seller;