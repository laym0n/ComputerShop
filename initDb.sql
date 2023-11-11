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

DELETE FROM Products;

INSERT INTO Products
VALUES 
(1000.00, 'Лэптоп Dell XPS 15', 0, 'Мощный ноутбук для работы и развлечений', 10, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'DELL')),
(500.50, 'Гейминг монитор ASUS ROG Swift', 0, 'Монитор с высоким разрешением для игр', 5, (select c.id from Categories c where c.name = 'MONITOR'), (select m.id from Manufacturers m where m.name = 'ASUS')),
(1200.00, 'Графическая видеокарта NVIDIA GeForce RTX 3080', 0, 'Видеокарта для профессиональных графических приложений', 3, (select c.id from Categories c where c.name = 'GPU'), (select m.id from Manufacturers m where m.name = 'NVIDIA')),
(800.00, 'Ноутбук HP Pavilion', 0, 'Легкий и компактный ноутбук для повседневного использования', 8, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'HP')),
(350.99, 'Офисное кресло IKEA Markus', 0, 'Удобное кресло для длительной работы за компьютером', 15, (select c.id from Categories c where c.name = 'CHAR'), (select m.id from Manufacturers m where m.name = 'IKEA')),
(150.00, 'Беспроводная мышь Logitech MX Master 3', 0, 'Эргономичная мышь с множеством функций', 20, (select c.id from Categories c where c.name = 'MOUSE'), (select m.id from Manufacturers m where m.name = 'LOGITECH')),
(1200.00, 'Геймерский ноутбук Alienware m15', 0, 'Мощный ноутбук для игр и тяжелых задач', 5, (select c.id from Categories c where c.name = 'LAPTOP'), (select m.id from Manufacturers m where m.name = 'ALIENWARE')),
(200.00, 'Механическая клавиатура Corsair K70', 0, 'Игровая клавиатура с механическими переключателями', 10, (select c.id from Categories c where c.name = 'KEYBOARD'), (select m.id from Manufacturers m where m.name = 'CORSAIR')),
(600.00, 'Видеокамера Sony Alpha a6400', 0, 'Зеркальная камера для профессиональной съемки', 7, (select c.id from Categories c where c.name = 'CAM'), (select m.id from Manufacturers m where m.name = 'SONY')),
(450.50, 'Смартфон Samsung Galaxy S21', 0, 'Мощный смартфон с высококачественной камерой', 12, (select c.id from Categories c where c.name = 'SMARTPHONE'), (select m.id from Manufacturers m where m.name = 'GALAXY'));
