
INSERT INTO codeDB.Products(Name,Price)
VALUES ('KeyBoard k6','45.87');
INSERT INTO codeDB.Products(Name,Price)
VALUES ('Iphone','200.00');
INSERT INTO codeDB.Products(Name,Price)
VALUES ('Headphone Scream','25.87');

INSERT INTO codeDB.Customers(FirstName,LastName,CardNumber)
VALUES ('Sam','Smith','4674504067543425');
INSERT INTO codeDB.Customers(FirstName,LastName,CardNumber)
VALUES ('Charles','Rodriguez','647850406754323');
INSERT INTO codeDB.Customers(FirstName,LastName,CardNumber)
VALUES ('Pedro','Liukan','4874502363443425');

INSERT INTO codeDB.Customers(FirstName,LastName,CardNumber)
VALUES ('Tina','Smith','6050008967456767');


SELECT Products.Name 
FROM codeDB.Products
WHERE Name = 'Iphone'
 
SELECT * FROM codeDB.Orders AS o, codeDB.Customers AS c
WHERE o.CustomerID = c.ID
AND c.ID = 
(SELECT ID 
FROM codeDB.Customer
WHERE FirstName ='Tina' AND LastName = 'Smith');

SELECT SUM(Products.Price) 
FROM Products 
INNER JOIN Ordes 
ON Products.ID = Order.ProductID
WHERE Products.Name = 'Iphone';

UPDATE codeDB.Products
SET Price = '250'
WHERE Name = 'Iphone';