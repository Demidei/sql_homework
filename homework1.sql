SELECT ProductName, Manufacturer, Price 
 FROM homework1.phones
 WHERE ProductCount >2;
 
SELECT ProductName, ProductCount, Price 
FROM homework1.phones
WHERE Manufacturer like "Samsung";

SELECT ProductName 
FROM homework1.phones
WHERE ProductName  like "iPhone%";

SELECT ProductName 
FROM homework1.phones
WHERE ProductName  like "%8%";