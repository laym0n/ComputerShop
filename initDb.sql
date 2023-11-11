USE shop;

DELETE FROM Manufacturers;

INSERT INTO Manufacturers
VALUES 
('NVIDIA'),
('GIGABYTE'),
('INTEL'),
('RYZEN'),
('AMD'),
('DELL');

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
('MONITOR', 1),
('LAPTOP', 1),
('SMARTPHONE', 1),
('CAM', 1),
('CHAR', 1),
('ASUS', 1),
('HP', 1),
('IKEA', 1),
('LOGITECH', 1),
('ALIENWARE', 1),
('CORSAIR', 1),
('SONY', 1),
('GALAXY', 1);

DELETE FROM OrderStatus;

INSERT INTO OrderStatus
VALUES 
('��������'),
('����������');

DELETE FROM Sellers;

INSERT INTO Sellers 
VALUES
('asd', 'asd', 'asd', 'asd', '01/01/2001', 3, 3, 3),
('seller', 'pass', '������', '��������', '01/01/2001', 3, 3, 3);

DELETE FROM Customers;

INSERT INTO Customers 
VALUES
('as', 'as', 'as', 'as'),
('customer', 'pass', '����', '������');

DELETE FROM Products;

INSERT INTO Products
VALUES 
(1000.00, '������ Dell XPS 15', 0, '������ ������� ��� ������ � �����������', 10, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'DELL')),
(500.50, '������� ������� ASUS ROG Swift', 0, '������� � ������� ����������� ��� ���', 5, (select c.id from Categories c where c.name = 'MONITOR'), (select m.id from Manufacturers m where m.name = 'ASUS')),
(1200.00, '����������� ���������� NVIDIA GeForce RTX 3080', 0, '���������� ��� ���������������� ����������� ����������', 3, (select c.id from Categories c where c.name = 'GPU'), (select m.id from Manufacturers m where m.name = 'NVIDIA')),
(800.00, '������� HP Pavilion', 0, '������ � ���������� ������� ��� ������������� �������������', 8, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'HP')),
(350.99, '������� ������ IKEA Markus', 0, '������� ������ ��� ���������� ������ �� �����������', 15, (select c.id from Categories c where c.name = 'CHAR'), (select m.id from Manufacturers m where m.name = 'IKEA')),
(150.00, '������������ ���� Logitech MX Master 3', 0, '������������ ���� � ���������� �������', 20, (select c.id from Categories c where c.name = 'MOUSE'), (select m.id from Manufacturers m where m.name = 'LOGITECH')),
(1200.00, '���������� ������� Alienware m15', 0, '������ ������� ��� ��� � ������� �����', 5, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'ALIENWARE')),
(200.00, '������������ ���������� Corsair K70', 0, '������� ���������� � ������������� ���������������', 10, (select c.id from Categories c where c.name = 'KEYBOARD'), (select m.id from Manufacturers m where m.name = 'CORSAIR')),
(600.00, '����������� Sony Alpha a6400', 0, '���������� ������ ��� ���������������� ������', 7, (select c.id from Categories c where c.name = 'CAM'), (select m.id from Manufacturers m where m.name = 'SONY')),
(450.50, '�������� Samsung Galaxy S21', 0, '������ �������� � ������������������ �������', 12, (select c.id from Categories c where c.name = 'SMARTPHONE'), (select m.id from Manufacturers m where m.name = 'GALAXY'));
