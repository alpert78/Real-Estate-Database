use realestatedb;

-- Clear all entries from Employees table
DELETE FROM Employees;

-- Clear all entries from Customers tableemployees
DELETE FROM Customers;

-- Clear all entries from Owners table
DELETE FROM Owners;

-- Clear all entries from Properties table
DELETE FROM Properties;

-- Clear all entries from Consultations table
DELETE FROM Consultations;

-- Clear all entries from Offers table
DELETE FROM Offers;

-- Clear all entries from Listings table
DELETE FROM Listings;


-- Inserting data into Employees table
INSERT INTO Employees (employee_id, first_name, last_name, email, office_address)
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '123 Main St, Anytown, USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Oak St, Othertown, USA'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '789 Pine St, Smalltown, USA'),
(4, 'Emily', 'Williams', 'emily.williams@example.com', '101 Elm St, Anycity, USA'),
(5, 'David', 'Brown', 'david.brown@example.com', '111 Maple St, Otherville, USA'),
(6, 'Jessica', 'Miller', 'jessica.miller@example.com', '222 Cedar St, Anycity, USA'),
(7, 'Matthew', 'Wilson', 'matthew.wilson@example.com', '333 Oak St, Anytown, USA'),
(8, 'Sarah', 'Taylor', 'sarah.taylor@example.com', '444 Walnut St, Othertown, USA'),
(9, 'Andrew', 'Anderson', 'andrew.anderson@example.com', '555 Elm St, Smalltown, USA'),
(10, 'Olivia', 'Thomas', 'olivia.thomas@example.com', '666 Pine St, Anycity, USA'),
(11, 'James', 'Martinez', 'james.martinez@example.com', '777 Cedar St, Otherville, USA'),
(12, 'Emma', 'Robinson', 'emma.robinson@example.com', '888 Oak St, Anytown, USA'),
(13, 'Christopher', 'Clark', 'christopher.clark@example.com', '999 Walnut St, Smalltown, USA'),
(14, 'Ava', 'Hernandez', 'ava.hernandez@example.com', '123 Maple St, Othertown, USA'),
(15, 'Mia', 'Gonzalez', 'mia.gonzalez@example.com', '456 Cedar St, Anycity, USA'),
(16, 'Alexander', 'Lopez', 'alexander.lopez@example.com', '789 Pine St, Anytown, USA'),
(17, 'William', 'Perez', 'william.perez@example.com', '101 Elm St, Othertown, USA'),
(18, 'Victoria', 'Sanchez', 'victoria.sanchez@example.com', '111 Walnut St, Smalltown, USA'),
(19, 'Sophia', 'Ramirez', 'sophia.ramirez@example.com', '222 Cedar St, Anycity, USA'),
(20, 'Ethan', 'Rivera', 'ethan.rivera@example.com', '333 Oak St, Othertown, USA');

-- Inserting data into Owners table
INSERT INTO Owners (owner_id, email, first_name, last_name)
VALUES 
(1, 'owner1@example.com', 'Emily', 'Brown'),
(2, 'owner2@example.com', 'David', 'Jones'),
(3, 'owner3@example.com', 'Fiona', 'Smith'),
(4, 'owner4@example.com', 'George', 'Wilson'),
(5, 'owner5@example.com', 'Hannah', 'Taylor'),
(6, 'owner6@example.com', 'Isaac', 'Martinez'),
(7, 'owner7@example.com', 'Julia', 'Sanchez'),
(8, 'owner8@example.com', 'Kevin', 'Ramirez'),
(9, 'owner9@example.com', 'Lily', 'Gonzalez'),
(10, 'owner10@example.com', 'Mason', 'Rivera'),
(11, 'owner11@example.com', 'Nora', 'Clark'),
(12, 'owner12@example.com', 'Oscar', 'Hernandez'),
(13, 'owner13@example.com', 'Paige', 'Anderson'),
(14, 'owner14@example.com', 'Quinn', 'Johnson'),
(15, 'owner15@example.com', 'Ryan', 'Williams'),
(16, 'owner16@example.com', 'Samantha', 'Brown'),
(17, 'owner17@example.com', 'Thomas', 'Jones'),
(18, 'owner18@example.com', 'Victoria', 'Smith'),
(19, 'owner19@example.com', 'William', 'Wilson'),
(20, 'owner20@example.com', 'Xavier', 'Taylor');


-- Inserting data into Customers table
INSERT INTO Customers (customer_id, email, first_name, last_name)
VALUES 
(1, 'customer1@example.com', 'Alice', 'Johnson'),
(2, 'customer2@example.com', 'Bob', 'Williams'),
(3, 'customer3@example.com', 'Charlie', 'Brown'),
(4, 'customer4@example.com', 'Diana', 'Smith'),
(5, 'customer5@example.com', 'Eric', 'Miller'),
(6, 'customer6@example.com', 'Fiona', 'Gonzalez'),
(7, 'customer7@example.com', 'George', 'Martinez'),
(8, 'customer8@example.com', 'Hannah', 'Clark'),
(9, 'customer9@example.com', 'Isaac', 'Lopez'),
(10, 'customer10@example.com', 'Julia', 'Perez'),
(11, 'customer11@example.com', 'Kevin', 'Sanchez'),
(12, 'customer12@example.com', 'Lily', 'Ramirez'),
(13, 'customer13@example.com', 'Mason', 'Rivera'),
(14, 'customer14@example.com', 'Nora', 'Taylor'),
(15, 'customer15@example.com', 'Oscar', 'Hernandez'),
(16, 'customer16@example.com', 'Paige', 'Anderson'),
(17, 'customer17@example.com', 'Quinn', 'Wilson'),
(18, 'customer18@example.com', 'Ryan', 'Thomas'),
(19, 'customer19@example.com', 'Samantha', 'Gonzalez'),
(20, 'customer20@example.com', 'Thomas', 'Miller');

-- Inserting data into Properties table
INSERT INTO Properties (property_address, state, city, type, employee_amount)
VALUES 
('123 Main St, Anytown, USA', 'CA', 'Anytown', 'Office', 10),
('456 Oak St, Othertown, USA', 'NY', 'Othertown', 'Residence', 0),
('789 Elm St, Anycity, USA', 'CA', 'Anycity', 'Residence', 5),
('101 Pine St, Otherville, USA', 'NY', 'Otherville', 'Office', 15),
('222 Maple St, Anytown, USA', 'CA', 'Anytown', 'Residence', 0),
('333 Oak St, Othertown, USA', 'NY', 'Othertown', 'Office', 20),
('444 Cedar St, Anycity, USA', 'CA', 'Anycity', 'Residence', 0),
('555 Elm St, Smalltown, USA', 'NY', 'Smalltown', 'Office', 8),
('666 Pine St, Anytown, USA', 'CA', 'Anytown', 'Residence', 0),
('777 Walnut St, Othertown, USA', 'NY', 'Othertown', 'Office', 12),
('888 Elm St, Smalltown, USA', 'NY', 'Smalltown', 'Residence', 0),
('999 Maple St, Anytown, USA', 'CA', 'Anytown', 'Office', 18),
('111 Oak St, Othertown, USA', 'NY', 'Othertown', 'Residence', 0),
('123 Cedar St, Anycity, USA', 'CA', 'Anycity', 'Office', 14),
('456 Pine St, Anytown, USA', 'CA', 'Anytown', 'Residence', 0),
('789 Elm St, Smalltown, USA', 'NY', 'Smalltown', 'Office', 16),
('101 Maple St, Othertown, USA', 'NY', 'Othertown', 'Residence', 0),
('222 Oak St, Anytown, USA', 'CA', 'Anytown', 'Office', 10),
('333 Cedar St, Othertown, USA', 'NY', 'Othertown', 'Residence', 0),
('444 Pine St, Smalltown, USA', 'NY', 'Smalltown', 'Office', 9);

-- Inserting data into Consultations table
INSERT INTO Consultations (consultation_id, property_address, employee_id, customer_id, date, time)
VALUES 
(1, '123 Main St, Anytown, USA', 1, 1, '2024-04-01', '10:00:00'),
(2, '456 Oak St, Othertown, USA', 2, 2, '2024-04-02', '11:00:00'),
(3, '789 Elm St, Anycity, USA', 3, 3, '2024-04-03', '12:00:00'),
(4, '101 Pine St, Otherville, USA', 4, 4, '2024-04-04', '13:00:00'),
(5, '222 Maple St, Anytown, USA', 5, 5, '2024-04-05', '14:00:00'),
(6, '333 Oak St, Othertown, USA', 6, 6, '2024-04-06', '15:00:00'),
(7, '444 Cedar St, Anycity, USA', 7, 7, '2024-04-07', '16:00:00'),
(8, '555 Elm St, Smalltown, USA', 8, 8, '2024-04-08', '17:00:00'),
(9, '666 Pine St, Anytown, USA', 9, 9, '2024-04-09', '18:00:00'),
(10, '777 Walnut St, Othertown, USA', 10, 10, '2024-04-10', '19:00:00'),
(11, '888 Elm St, Smalltown, USA', 11, 11, '2024-04-11', '20:00:00'),
(12, '999 Maple St, Anytown, USA', 12, 12, '2024-04-12', '09:00:00'),
(13, '111 Oak St, Othertown, USA', 13, 13, '2024-04-13', '10:30:00'),
(14, '123 Cedar St, Anycity, USA', 14, 14, '2024-04-14', '12:30:00'),
(15, '456 Pine St, Anytown, USA', 15, 15, '2024-04-15', '14:30:00'),
(16, '789 Elm St, Smalltown, USA', 16, 16, '2024-04-16', '16:30:00'),
(17, '101 Maple St, Othertown, USA', 17, 17, '2024-04-17', '18:30:00'),
(18, '222 Oak St, Anytown, USA', 18, 18, '2024-04-18', '20:30:00'),
(19, '333 Cedar St, Othertown, USA', 19, 19, '2024-04-19', '09:30:00'),
(20, '444 Pine St, Smalltown, USA', 20, 20, '2024-04-20', '11:30:00');


-- Inserting data into Offers table
INSERT INTO Offers (offer_number, amount, customer_id, owner_id, listing_id, status)
VALUES 
(1, 100000, 1, 1, 1, 'Accepted'),
(2, 150000, 2, 2, 2, 'In progress'),
(3, 120000, 3, 3, 3, 'Denied'),
(4, 180000, 4, 4, 4, 'In progress'),
(5, 200000, 5, 5, 5, 'Accepted'),
(6, 250000, 6, 6, 6, 'In progress'),
(7, 220000, 7, 7, 7, 'Denied'),
(8, 170000, 8, 8, 8, 'In progress'),
(9, 190000, 9, 9, 9, 'Accepted'),
(10, 230000, 10, 10, 10, 'In progress'),
(11, 240000, 11, 11, 11, 'Denied'),
(12, 260000, 12, 12, 12, 'In progress'),
(13, 270000, 13, 13, 13, 'Accepted'),
(14, 280000, 14, 14, 14, 'In progress'),
(15, 290000, 15, 15, 15, 'Denied'),
(16, 300000, 16, 16, 16, 'In progress'),
(17, 310000, 17, 17, 17, 'Accepted'),
(18, 320000, 18, 18, 18, 'In progress'),
(19, 330000, 19, 19, 19, 'Denied'),
(20, 340000, 20, 20, 20, 'In progress');

-- Inserting data into Listings table
INSERT INTO Listings (listing_id, property_address, price)
VALUES 
(1, '123 Main St, Anytown, USA', 200000),
(2, '456 Oak St, Othertown, USA', 300000),
(3, '789 Elm St, Anycity, USA', 400000),
(4, '101 Pine St, Otherville, USA', 500000),
(5, '222 Maple St, Anytown, USA', 600000),
(6, '333 Oak St, Othertown, USA', 700000),
(7, '444 Cedar St, Anycity, USA', 800000),
(8, '555 Elm St, Smalltown, USA', 900000),
(9, '666 Pine St, Anytown, USA', 1000000),
(10, '777 Walnut St, Othertown, USA', 1100000),
(11, '888 Elm St, Smalltown, USA', 1200000),
(12, '999 Maple St, Anytown, USA', 1300000),
(13, '111 Oak St, Othertown, USA', 1400000),
(14, '123 Cedar St, Anycity, USA', 1500000),
(15, '456 Pine St, Anytown, USA', 1600000),
(16, '789 Elm St, Smalltown, USA', 1700000),
(17, '101 Maple St, Othertown, USA', 1800000),
(18, '222 Oak St, Anytown, USA', 1900000),
(19, '333 Cedar St, Othertown, USA', 2000000),
(20, '444 Pine St, Smalltown, USA', 2100000);

-- Inserting data into employees_customers table
INSERT INTO employees_customers (employee_id, customer_id)
VALUES 
(1, 1), (2, 2), (2, 3), (3, 4),
(3, 5), (3, 6), (4, 7), (5, 8),
(5, 9), (5, 10), (5, 11), (6, 12),
(6, 13), (7, 14), (7, 15), (8, 16),
(8, 17), (8, 18), (9, 19), (10, 20);

-- Inserting data into owners_properties table
INSERT INTO owners_properties (owner_id, property_address)
VALUES 
(1, '123 Main St, Anytown, USA'), (1, '456 Oak St, Othertown, USA'),
(2, '789 Elm St, Anycity, USA'), (2, '101 Pine St, Otherville, USA'),
(3, '222 Maple St, Anytown, USA'), (3, '333 Oak St, Othertown, USA'),
(4, '444 Cedar St, Anycity, USA'), (4, '555 Elm St, Smalltown, USA'),
(5, '666 Pine St, Anytown, USA'), (5, '777 Walnut St, Othertown, USA'),
(6, '888 Elm St, Smalltown, USA'), (6, '999 Maple St, Anytown, USA'),
(7, '111 Oak St, Othertown, USA'), (7, '123 Cedar St, Anycity, USA'),
(8, '456 Pine St, Anytown, USA'), (8, '789 Elm St, Smalltown, USA'),
(9, '101 Maple St, Othertown, USA'), (9, '222 Oak St, Anytown, USA'),
(10, '333 Cedar St, Othertown, USA'), (10, '444 Pine St, Smalltown, USA'),
(11, '555 Main St, Anytown, USA'), (11, '666 Oak St, Othertown, USA'),
(12, '777 Elm St, Anycity, USA'), (12, '888 Pine St, Otherville, USA'),
(13, '999 Maple St, Anytown, USA'), (13, '111 Oak St, Othertown, USA'),
(14, '123 Cedar St, Anycity, USA'), (14, '456 Pine St, Othertown, USA'),
(15, '789 Elm St, Smalltown, USA'), (15, '101 Maple St, Anytown, USA'),
(16, '222 Cedar St, Othertown, USA'), (16, '333 Walnut St, Anytown, USA'),
(17, '444 Pine St, Otherville, USA'), (17, '555 Maple St, Anytown, USA'),
(18, '666 Cedar St, Othertown, USA'), (18, '777 Elm St, Anytown, USA'),
(19, '888 Pine St, Otherville, USA'), (19, '999 Cedar St, Anytown, USA'),
(20, '111 Maple St, Othertown, USA'), (20, '123 Walnut St, Anytown, USA');