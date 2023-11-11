USE shop;

DELETE FROM Manufacturers;

INSERT INTO Manufacturers
VALUES 
('NVIDIA'),
('GIGABYTE'),
('INTEL'),
('RYZEN'),
('AMD');

DELETE FROM Categories;

INSERT INTO Categories
VALUES 
('CPU', 1),
('GPU', 1),
('HDD', 1),
('SSD', 1),
('MBD', 1),
('RAM', 1),
('FAN', 1),
('POW', 1),
('MOUSE', 1),
('KEYBOARD', 1),
('Елисей', 1);

DELETE FROM OrderStatus;

INSERT INTO OrderStatus
VALUES 
('Заказана'),
('Доставлено');

DELETE FROM Sellers;

INSERT INTO Sellers 
VALUES
('asd', 'asd', 'asd', 'asd', '01/01/2001', 3, 3, 3),
('seller', 'pass', 'Елисей', 'Михайлов', '01/01/2001', 3, 3, 3);

DELETE FROM Customers;

INSERT INTO Customers 
VALUES
('as', 'as', 'as', 'as'),
('customer', 'pass', 'Иван', 'Иванов');