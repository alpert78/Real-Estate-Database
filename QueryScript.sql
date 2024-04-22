USE realestatedb;

-- Find an employee’s office address:
SELECT concat(first_name, ' ', last_name) AS Full_Name, office_address AS Office_Address
FROM Employees;


-- List properties with their state, city, type, and price
SELECT p.property_address, p.state, p.city, p.type, l.price
FROM Properties p
LEFT JOIN Listings l ON p.property_address = l.property_address;


-- List owners with their property address
SELECT DISTINCT concat(o.first_name, ' ', o.last_name) AS Full_Name, p.property_address
FROM Owners o
LEFT JOIN owners_properties p ON o.owner_id = p.owner_id;


-- List employees with assigned customers
SELECT concat(e.first_name, ' ', e.last_name) AS Employee_Name, concat(c.first_name, ' ' , c.last_name) AS Customer_Name
FROM Employees e
JOIN employees_customers ec ON e.employee_id = ec.employee_id
JOIN customers c ON ec.customer_id = c.customer_id;


-- Display the average offer amount based on status ****
SELECT o.status, AVG(o.amount) AS Average_Offer_Amount
FROM Offers o
GROUP BY o.status;


-- Show the top 5 employee names and ids based on number of consultations
SELECT e.employee_id, concat(e.first_name, ' ', e.last_name) AS Employee_Name, COUNT(c.consultation_id) AS num_consultations
FROM Employees e
LEFT JOIN Consultations c ON e.employee_id = c.employee_id
GROUP BY e.employee_id
ORDER BY num_consultations Desc
LIMIT 5;


-- Display the average offer amount based on office address
SELECT e.office_address, AVG(o.amount) AS avg_offer_amount
FROM Employees e
LEFT JOIN Consultations c ON e.employee_id = c.employee_id
LEFT JOIN Offers o ON c.customer_id = o.customer_id
GROUP BY e.office_address;


-- Return the total offer amount based on property type
SELECT p.type, SUM(o.amount) AS total_offer_amount
FROM Properties p
LEFT JOIN Listings l ON p.property_address = l.property_address
LEFT JOIN Offers o ON l.listing_id = o.listing_id
GROUP BY p.type;


-- Show the number of listings per property type
SELECT p.type, COUNT(*) AS num_listings
FROM Properties p
LEFT JOIN Listings l ON p.property_address = l.property_address
GROUP BY p.type;


-- Stored Procedure to return the most profitable properties (Listings of $700000 and above)
DELIMITER //
DROP PROCEDURE IF EXISTS most_profitable;
CREATE PROCEDURE most_profitable (IN threshold INT)
BEGIN
	SELECT x.property_address, y.price
	FROM properties x
	INNER JOIN listings y ON x.property_address = y.property_address
	WHERE y.price >= threshold;
END //
DELIMITER ;
CALL most_profitable(700000);

-- Return the owner with the most expensive property on a listing 
SELECT * 
FROM owners x
INNER JOIN offers y ON x.owner_id = y.owner_id
ORDER BY y.amount DESC
LIMIT 1;


-- Stored Procedure to return all residential properties located in NY
DELIMITER //
DROP PROCEDURE IF EXISTS properties_by_state;
CREATE PROCEDURE properties_by_state (IN state_input VARCHAR(45))
BEGIN
	SELECT *
	FROM properties  x
	WHERE x.state = state_input;
END //
DELIMITER ;
CALL properties_by_state('NY');


-- Show all owners and their properties’ address
SELECT x.first_name, x.last_name, y.property_address
FROM owners x
INNER JOIN owners_properties y ON x.owner_id = y.owner_id;


-- CRUD Operations for Listings
INSERT INTO listings (listing_id, property_address, price)
VALUES (21, '123 This Address St', 213000);


DELETE FROM listings
WHERE listing_id = 5;


UPDATE listings
SET price = 150000
WHERE listing_id = 1;

SELECT * FROM Listings;


-- CRUD Operations for Employees
INSERT INTO employees (employee_id, first_name, last_name, email, office_address)
VALUES (21, 'Nick', 'Alpert', 'nick.alpert@example.com', '123 This St, Anytown, USA');


DELETE FROM employees
WHERE employee_id = 3;


UPDATE employees
SET last_name = 'smith'
WHERE employee_id = 2;

SELECT * FROM Employees;


-- CRUD Operations for Customers
INSERT INTO Customers (customer_id, email, first_name, last_name)
VALUES (21, 'customer1@example.com', 'Sally', 'May');


DELETE FROM customers
WHERE customer_id = 3;


UPDATE customers
SET email = 'newemail@example.com'
WHERE customer_id = 2;

SELECT * FROM Customers;


-- CRUD Operations for Owners
INSERT INTO owners (owner_id, email, first_name, last_name)
VALUES (21, 'owner1@example.com', 'Luke', 'Smith');


DELETE FROM owners
WHERE owner_id = 10;


UPDATE owners
SET email = 'newemail2@example.com'
WHERE owner_id = 1;

SELECT * FROM Owners;


-- CRUD Operations for Consultations
INSERT INTO consultations(consultation_id, property_address, employee_id, customer_id, date, time)
VALUES (21, '101 Pine St, Otherville, USA', 18, 7, '2024-05-01', '12:00:00');


DELETE FROM consultations
WHERE consultation_id = 10;


UPDATE consultations
SET time = '12:30:00'
WHERE consultation_id = 21;

SELECT * FROM Consultations;


-- CRUD Operations for Properties
INSERT INTO properties(property_address, state, city, type, employee_amount)
VALUES ('732 Notreal Rd.', 'NJ', 'Glassboro', 'Office', 23);


DELETE FROM properties
WHERE property_address = '101 Maple St, Othertown, USA';


UPDATE properties
SET employee_amount = 22
WHERE property_address = '732 Notreal Rd.';

SELECT * FROM Properties;


-- CRUD Operations for Offers
INSERT INTO offers(offer_number, amount, customer_id, owner_id, listing_id, status)
VALUES(21, 3000000, 7, 12, 5, 'Accepted');


DELETE FROM offers
WHERE offer_number = 10;


UPDATE offers
SET status = 'Denied'
WHERE offer_number = 19;

SELECT * FROM Offers;


-- Insert/delete/read an employees_customers relationship
INSERT INTO employees_customers(employee_id, customer_id)
VALUES(21, 21);


DELETE FROM employees_customers
WHERE employee_id = 1 AND customer_id = 1;

SELECT * FROM employees_customers;


-- Insert/delete/read an owner_property relationship
INSERT INTO owners_properties(owner_id, property_address)
VALUES(21, '732 Notreal Rd.');


DELETE FROM owners_properties
WHERE owner_id = 1 AND property_address = '123 Main St, Anytown, USA';

SELECT * FROM owners_properties;