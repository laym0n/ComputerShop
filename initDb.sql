USE shop;

DELETE FROM Manufacturers;

INSERT INTO Manufacturers
VALUES 
('NVIDIA'),
('GIGABYTE'),
('INTEL'),
('RYZEN'),
('AMD'),
('DELL'),
('ASUS'),
('HP'),
('IKEA'),
('LOGITECH'),
('ALIENWARE'),
('CORSAIR'),
('SONY'),
('GALAXY');

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
('CHAR', 1);

DELETE FROM OrderStatus;

INSERT INTO OrderStatus
VALUES 
('��������'),
('����������'),
('��������');

DELETE FROM Sellers;

INSERT INTO Sellers 
VALUES
('asd', 'asd', 'asd', 'asd'),
('seller', 'pass', '������', '��������');

DELETE FROM Customers;

INSERT INTO Customers 
VALUES
('as', 'as', 'as', 'as'),
('customer', 'pass', '����', '������');

DELETE FROM Products;

INSERT INTO Products
VALUES 
((select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'DELL'), 1000.00, '������ Dell XPS 15', '������ ������� ��� ������ � �����������', 10, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'DELL')),
((select c.id from Categories c where c.name = 'MONITOR'), (select m.id from Manufacturers m where m.name = 'ASUS'), 500.50, '������� ������� ASUS ROG Swift', '������� � ������� ����������� ��� ���', 5, (select c.id from Categories c where c.name = 'MONITOR'), (select m.id from Manufacturers m where m.name = 'ASUS')),
((select c.id from Categories c where c.name = 'GPU'), (select m.id from Manufacturers m where m.name = 'NVIDIA'), 1200.00, '����������� ���������� NVIDIA GeForce RTX 3080', '���������� ��� ���������������� ����������� ����������', 3, (select c.id from Categories c where c.name = 'GPU'), (select m.id from Manufacturers m where m.name = 'NVIDIA')),
((select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'HP'), 800.00, '������� HP Pavilion', '������ � ���������� ������� ��� ������������� �������������', 8, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'HP')),
((select c.id from Categories c where c.name = 'CHAR'), (select m.id from Manufacturers m where m.name = 'IKEA'), 350.99, '������� ������ IKEA Markus', '������� ������ ��� ���������� ������ �� �����������', 15, (select c.id from Categories c where c.name = 'CHAR'), (select m.id from Manufacturers m where m.name = 'IKEA')),
((select c.id from Categories c where c.name = 'MOUSE'), (select m.id from Manufacturers m where m.name = 'LOGITECH'), 150.00, '������������ ���� Logitech MX Master 3', '������������ ���� � ���������� �������', 20, (select c.id from Categories c where c.name = 'MOUSE'), (select m.id from Manufacturers m where m.name = 'LOGITECH')),
((select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'ALIENWARE'), 1200.00, '���������� ������� Alienware m15', '������ ������� ��� ��� � ������� �����', 5, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'ALIENWARE')),
((select c.id from Categories c where c.name = 'KEYBOARD'), (select m.id from Manufacturers m where m.name = 'CORSAIR'), 200.00, '������������ ���������� Corsair K70', '������� ���������� � ������������� ���������������', 10, (select c.id from Categories c where c.name = 'KEYBOARD'), (select m.id from Manufacturers m where m.name = 'CORSAIR')),
((select c.id from Categories c where c.name = 'CAM'), (select m.id from Manufacturers m where m.name = 'SONY'), 600.00, '����������� Sony Alpha a6400', '���������� ������ ��� ���������������� ������', 7, (select c.id from Categories c where c.name = 'CAM'), (select m.id from Manufacturers m where m.name = 'SONY')),
((select c.id from Categories c where c.name = 'SMARTPHONE'), (select m.id from Manufacturers m where m.name = 'GALAXY'), 450.50, '�������� Samsung Galaxy S21', '������ �������� � ������������������ �������', 12, (select c.id from Categories c where c.name = 'SMARTPHONE'), (select m.id from Manufacturers m where m.name = 'GALAXY'));
