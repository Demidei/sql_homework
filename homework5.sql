CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;

CREATE VIEW VIEW1 as 
SELECT *
FROM cars
WHERE cost<25000;

SELECT * FROM VIEW1;



ALTER VIEW VIEW1 as
SELECT *
FROM cars
WHERE cost<30000;

SELECT * FROM VIEW1;

CREATE VIEW VIEW2 as 
SELECT *
FROM cars
WHERE name in ("Skoda","Audi");

SELECT * FROM VIEW2;