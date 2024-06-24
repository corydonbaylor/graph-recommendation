drop table purchases cascade;
drop table products cascade;
drop table users cascade;


-- Create the Users table
CREATE TABLE Users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

-- Create the Products table  
CREATE TABLE Products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

-- Create the Purchases table
CREATE TABLE Purchases (
  id SERIAL PRIMARY KEY,
  user_name VARCHAR(255),
  product_name VARCHAR(255)
);



-- Insert data into the Users table
INSERT INTO Users (name) VALUES
  ('Alice'),
  ('Bob'),
  ('Charlie'),
  ('David'),
  ('Eve')
  ('Frank'),
  ('George'),
  ('Hannah'),
  ('Ivan'),
  ('Jessica'),
  ('Kevin'),
  ('Lily'),
  ('Michael'),
  ('Natalie'),
  ('Oliver');

-- Insert data into the Products table
INSERT INTO Products (name) VALUES
  ('Book A'),
  ('Book B'),
  ('Book C'),
  ('Book D'),
  ('Book E'),
  ('Book F'),
  ('Book G'),
  ('Book H'),
  ('Book I'),
  ('Book J'),
  ('Book K'),
  ('Book L'),
  ('Book M'),
  ('Book N'),
  ('Book O'),
  ('Book P'),
  ('Book Q'),
  ('Book R'),
  ('Book S'),
  ('Book T'),
  ('Book U');

-- Insert data into the Purchases table
INSERT INTO Purchases (user_name, product_name)
SELECT u.name, p.name
FROM Users u
CROSS JOIN Products p
WHERE u.name = 'Alice' AND p.name IN ('Book A', 'Book B', 'Book C', 'Book D');

INSERT INTO Purchases (user_name, product_name)  
SELECT u.name, p.name
FROM Users u
CROSS JOIN Products p
WHERE u.name = 'Bob' AND p.name IN ('Book B', 'Book C', 'Book D', 'Book E');

INSERT INTO Purchases (user_name, product_name)
SELECT u.name, p.name
FROM Users u
CROSS JOIN Products p  
WHERE u.name = 'Charlie' AND p.name IN ('Book C', 'Book D', 'Book E', 'Book F');

INSERT INTO Purchases (user_name, product_name)
SELECT u.name, p.name
FROM Users u
CROSS JOIN Products p
WHERE u.name = 'David' AND p.name IN ('Book D', 'Book E', 'Book F', 'Book G');

INSERT INTO Purchases (user_name, product_name)
SELECT u.name, p.name
FROM Users u
CROSS JOIN Products p
WHERE u.name = 'Eve' AND p.name IN ('Book E', 'Book F', 'Book G', 'Book H');

-- Additional Purchase relationships
INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'Frank' AND p.name IN ('Book A', 'Book B', 'Book C', 'Book I');

INSERT INTO purchases (user_name, product_name)  
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'George' AND p.name IN ('Book B', 'Book C', 'Book D', 'Book J');

INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p  
WHERE u.name = 'Hannah' AND p.name IN ('Book C', 'Book D', 'Book E', 'Book K');

INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'Ivan' AND p.name IN ('Book D', 'Book E', 'Book F', 'Book L');

INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'Jessica' AND p.name IN ('Book E', 'Book F', 'Book G', 'Book M');

INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'Kevin' AND p.name IN ('Book F', 'Book G', 'Book H', 'Book N');

INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'Lily' AND p.name IN ('Book G', 'Book H', 'Book I', 'Book O');

INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'Michael' AND p.name IN ('Book H', 'Book I', 'Book J', 'Book P');

INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'Natalie' AND p.name IN ('Book I', 'Book J', 'Book K', 'Book Q');

INSERT INTO purchases (user_name, product_name)
SELECT u.name, p.name
FROM users u, products p
WHERE u.name = 'Oliver' AND p.name IN ('Book J', 'Book K', 'Book L', 'Book R');

