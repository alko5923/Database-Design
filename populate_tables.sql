INSERT INTO DEPARTMENT
VALUES ('Home','Welcome to our store!','',null, 0);

INSERT INTO DEPARTMENT
VALUES ('Electronics','Circuits, transistors and stuff', '/Electronics', 'Home', 0);

INSERT INTO DEPARTMENT
VALUES ('Desktops','All our desktops','/Electronics/Desktops','Electronics', 1);

INSERT INTO DEPARTMENT
VALUES ('Laptops', 'All our laptops','/Electronics/Laptops','Electronics', 1);

INSERT INTO DEPARTMENT
VALUES ('Tablets', 'All our tablets','/Electronics/Tablets','Electronics', 1);

INSERT INTO DEPARTMENT
VALUES ('Groceries','Apples, bananas and stuff','/Groceries','Home', 0);

INSERT INTO DEPARTMENT
VALUES ('Fruits','Fruits from all over the world','/Groceries/Fruits','Groceries', 1);

INSERT INTO DEPARTMENT
VALUES ('Veggies','Veggies from Iceland','/Groceries/Veggies','Groceries', 1);

INSERT INTO DEPARTMENT
VALUES ('Gaming-essentials','For all your gaming
needs','/Groceries/Gaming-essentials','Groceries', 1);

INSERT INTO PRODUCT
VALUES ('HP Compaq Elite 8300', 'A real workhorse',
'/Electronics/Desktops/HP-Compaq-Elite-8300', 25, 00.00, 7, 17599, 'Desktops', 0);

INSERT INTO PRODUCT
VALUES ('LENOVO IdeaCentre 310S', 'A perfect computer for your kids',
'/Electronics/Desktops/Lenovo-IdeaCentre-310S', 25, 00.00, 12, 3999, 'Desktops', 1);

INSERT INTO PRODUCT
VALUES ('HP ProBook 820', 'Same model used by Jakob Nordgren
himself!','/Electronics/Laptops', 25, 06.00, 92, 12679, 'Laptops', 0);

INSERT INTO PRODUCT
VALUES ('MacBook Air 13 M1', 'This laptop will follow you everywhere.
Literally.','/Electronics/Laptops', 25, 02.20, 18, 14989, 'Laptops', 1);

INSERT INTO PRODUCT
VALUES ('iPad 2021', '8th generation of the iPad', '/Electronics/Tablets/iPad-2021', 25,
10.00, 41, 3990, 'Tablets', 0);

INSERT INTO PRODUCT
VALUES ('Samsung Tab 5', 'Samsungs newest tablet', '/Electronics/Tablets/Samsung-tab-5',
25, 25.00, 32, 2490, 'Tablets', 0);

INSERT INTO PRODUCT
VALUES ('Tomato', 'A real classic', '/Groceries/Veggies', 12, 04.00, 30, 3, 'Veggies', 1);

INSERT INTO PRODUCT
VALUES("Carrot", 'The orange super vegetable that gives you great eyesight',
'/Groceries/Veggies', 18, 20, 500, 3, 'Veggies', 1);

INSERT INTO PRODUCT
VALUES("Apple", 'One of them a day keeps the doctor away', '/Groceries/Fruits', 6, 0, 2100,
5, 'Fruits', 0);

INSERT INTO PRODUCT
VALUES("Dragon Fruit", 'The exotic choice of fruit', '/Groceries/Fruits', 12, 50, 200, 99,
'Fruits', 0);

INSERT INTO PRODUCT
VALUES("Doritos", 'The iconic super snack', '/Groceries/Gaming-essentials', 25, 0.0, 1337,
20, 'Gaming-essentials', 1);

INSERT INTO PRODUCT
VALUES("G-Fuel", 'Your energy source for the night', '/Groceries/Gaming-essentials', 25,
13.37, 100, 10, 'Gaming-essentials', 0);

INSERT INTO USER_REG
VALUES (9811145865,'Alexander Sabelström','Doritos123','Databasvägen 12',
468123654,'alexander.sabelstrom@gmail.com',1);

INSERT INTO USER_REG
VALUES (9512243214,'Måns Rönnberg','Pepsi123','Semantikgatan 54',
468326598,'mans.123@gmail.com',0);

INSERT INTO REVIEW
VALUES (0,5, 'Best doritos I have ever eaten, so crispy', 'Doritos', 9811145865);

INSERT INTO REVIEW
VALUES (1,2, 'Worst doritos I have ever eaten, very soggy and almost no taste', 'Doritos',
9512243214);

INSERT INTO ORDER_PLACED
VALUES (1,current_timestamp,current_timestamp(),1,123,'New', 17599, 9512243214);

/* INSERTING KEYWORDS */

INSERT INTO KEYWORD
VALUES ('tasty', 'Tomato');

INSERT INTO KEYWORD
VALUES ('tasty', 'Doritos');

INSERT INTO KEYWORD
VALUES ('tasty', 'Dragon Fruit');

INSERT INTO KEYWORD
VALUES ('ripe', 'Tomato');

INSERT INTO KEYWORD
VALUES ('ripe', 'Carrot');
