-- Create Member Table
CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Member_Location VARCHAR(20),
    Member_Age INT
);

-- Create Vehicle Table
CREATE TABLE Vehicle (
    Vehicle_Registration VARCHAR(10) PRIMARY KEY,
    Vehicle_Make VARCHAR(10),
    Vehicle_Model VARCHAR(10),
    Member_ID INT,
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID)
);

-- Create Engineer Table
CREATE TABLE Engineer (
    Engineer_ID INT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20)
);

-- Create Breakdown Table
CREATE TABLE Breakdown (
    Breakdown_ID INT PRIMARY KEY,
    Vehicle_Registration VARCHAR(10),
    Engineer_ID INT,
    Breakdown_Date DATE,
    Breakdown_Time TIME,
    Breakdown_Location VARCHAR(20),
    FOREIGN KEY (Vehicle_Registration) REFERENCES Vehicle(Vehicle_Registration),
    FOREIGN KEY (Engineer_ID) REFERENCES Engineer(Engineer_ID)
);


-- Create Member Table
CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Member_Location VARCHAR(20),
    Member_Age INT
);

-- Insert Data into Member Table
INSERT INTO Member VALUES
(1, 'John', 'Doe', 'New York', 32),
(2, 'Jane', 'Smith', 'Los Angeles', 27),
(3, 'Mark', 'Jones', 'Chicago', 45),
(4, 'Emily', 'Davis', 'Houston', 30),
(5, 'Luke', 'Brown', 'Phoenix', 38),
(6, 'Sophia', 'White', 'Dallas', 29),
(7, 'Liam', 'Taylor', 'Miami', 41),
(8, 'Olivia', 'Green', 'San Diego', 36),
(9, 'James', 'Harris', 'Denver', 44),
(10, 'Mia', 'Robinson', 'Atlanta', 25);

-- Create Vehicle Table
CREATE TABLE Vehicle (
    Vehicle_Registration VARCHAR(10) PRIMARY KEY,
    Vehicle_Make VARCHAR(10),
    Vehicle_Model VARCHAR(10),
    Member_ID INT,
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID)
);

-- Insert Data into Vehicle Table
INSERT INTO Vehicle VALUES
('ABC1234', 'Toyota', 'Corolla', 1),
('XYZ5678', 'Ford', 'Mustang', 2),
('DEF1111', 'Honda', 'Civic', 3),
('GHJ2222', 'Chevy', 'Cruze', 4),
('MNO4444', 'BMW', 'X5', 5),
('PQR5555', 'Mercedes', 'C300', 6),
('STU6666', 'Audi', 'A4', 7),
('VWX7777', 'Hyundai', 'Elantra', 8),
('YZA8888', 'Tesla', 'Model S', 9),
('BCD9999', 'Kia', 'Sportage', 6),
('EFG1112', 'Subaru', 'Forester', 10),
('HIJ1214', 'Jeep', 'Wrangler', 10),
('KLM1514', 'Mazda', 'CX-5', 1),
('NOP1617', 'Honda', 'Accord', 6),
('QRS1618', 'Chevy', 'Malibu', 7),
('TUV1717', 'Ford', 'Explorer', 9),
('WXY1818', 'Toyota', 'Camry', 8),
('ZAB1919', 'Volvo', 'XC90', 10),
('CDE2020', 'Lexus', 'RX350', 10);

-- Create Engineer Table
CREATE TABLE Engineer (
    Engineer_ID INT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20)
);

-- Insert Data into Engineer Table
INSERT INTO Engineer VALUES
(1, 'Ethan', 'Williams'),
(2, 'Olivia', 'Miller'),
(3, 'Sophia', 'Clark'),
(4, 'Noah', 'Walker');


-- Insert Data into Breakdown Table
INSERT INTO Breakdown VALUES
(1, 'ABC1234', 1, '2024-09-10', '10:30:00', 'New York'),
(2, 'XYZ5678', 2, '2024-09-10', '12:00:00', 'Los Angeles'),
(3, 'DEF1111', 3, '2024-09-15', '09:00:00', 'Chicago'),
(4, 'GHJ2222', 4, '2024-09-18', '14:00:00', 'Houston'),
(5, 'MNO4444', 2, '2024-09-20', '11:00:00', 'Phoenix'),
(6, 'PQR5555', 3, '2024-09-28', '15:15:00', 'Los Angeles'),
(7, 'STU6666', 2, '2024-10-05', '08:30:00', 'Chicago'),
(8, 'XYZ5678', 1, '2024-10-10', '09:30:00', 'New York'),
(9, 'ABC1234', 4, '2024-10-14', '16:45:00', 'New York'),
(10, 'DEF1111', 3, '2024-10-20', '14:00:00', 'Chicago'),
(11, 'MNO4444', 1, '2024-10-22', '13:30:00', 'Houston'),
(12, 'KLM1514', 2, '2024-10-25', '12:45:00', 'Denver'),
(13, 'VWX7777', 4, '2024-10-28', '09:00:00', 'Dallas'),
(14, 'BCD9999', 1, '2024-11-01', '17:15:00', 'San Diego'),
(15, 'YZA8888', 3, '2024-11-05', '19:30:00', 'Atlanta'),
(16, 'CDE2020', 4, '2024-11-28', '16:30:00', 'Phoenix');

-- .................. TASK 1...............................

-- 1. Retrieve the first 5 members from the Member table.
SELECT * FROM Member LIMIT 5;

-- 2. Retrieve 5 members starting from the 6th row.
SELECT * FROM Member LIMIT 5 OFFSET 5;

-- 3. List members who are older than 30 years.
SELECT * FROM Member WHERE Member_Age > 30;

-- 4. Find members who live in either New York or Los Angeles.
SELECT * FROM Member WHERE Member_Location IN ('New York', 'Los Angeles');

-- 5. Retrieve all vehicles where the make is either 'Toyota' or 'Honda'.
SELECT * FROM Vehicle WHERE Vehicle_Make IN ('Toyota', 'Honda');

-- 6. Find members whose age is between 25 and 40 years.  --
SELECT * FROM Member WHERE Member_Age BETWEEN 25 AND 40;

-- 7. List vehicles whose registration number starts with the letter 'A'.
SELECT * FROM Vehicle WHERE Vehicle_Registration LIKE 'A%';

-- 8. Find vehicles where the model ends with the number '5'.
SELECT * FROM Vehicle WHERE Vehicle_Model LIKE '%5';

-- 9. List all engineers and order them alphabetically by their last name.
SELECT * FROM Engineer ORDER BY Last_Name;

-- 10. Retrieve all members and order them by age in descending order.
SELECT * FROM Member ORDER BY Member_Age DESC;

-- 11. Count the total number of members in the Member table.
SELECT COUNT(*) AS Total_Members FROM Member;

-- 12. Retrieve all breakdowns that occurred in the year 2024.
SELECT * FROM Breakdown WHERE YEAR(Breakdown_Date) = 2024;

-- 13. Find breakdowns for vehicles with the registration 'ABC1234' or 'XYZ5678'.
SELECT * FROM Breakdown WHERE Vehicle_Registration IN ('ABC1234', 'XYZ5678');

-- 14. List all vehicles with the make 'Ford'.
SELECT * FROM Vehicle WHERE Vehicle_Make = 'Ford';

-- 15. Find members whose first name starts with the letter 'J'.
SELECT * FROM Member WHERE First_Name LIKE 'J%';

-- 16. Retrieve breakdowns that occurred before September 1, 2024.
SELECT * FROM Breakdown WHERE Breakdown_Date < '2024-09-01';

-- 17. List members whose last name contains 'son'.
SELECT * FROM Member WHERE Last_Name LIKE '%son%';

-- 18. Find breakdowns that occurred in locations containing 'New'.
SELECT * FROM Breakdown WHERE Breakdown_Location LIKE '%New%';

-- 19. Retrieve the youngest member in the Member table.
SELECT * FROM Member ORDER BY Member_Age ASC LIMIT 1;

-- 20. Retrieve the oldest member in the Member table.
SELECT * FROM Member ORDER BY Member_Age DESC LIMIT 1;

-- 21. Find vehicles owned by members who live in Los Angeles.
SELECT * FROM Vehicle 
WHERE Member_ID IN (SELECT Member_ID FROM Member WHERE Member_Location = 'Los Angeles');

-- 22. Retrieve all breakdowns handled by engineer with ID 1.
SELECT * FROM Breakdown WHERE Engineer_ID = 1;

-- 23. List all members who are younger than 35 years.
SELECT * FROM Member WHERE Member_Age < 35;

-- 24. Find members who live in either Phoenix or Houston.
SELECT * FROM Member WHERE Member_Location IN ('Phoenix', 'Houston');

-- 25. Retrieve vehicles where the model is either 'Civic' or 'Mustang'.
SELECT * FROM Vehicle WHERE Vehicle_Model IN ('Civic', 'Mustang');

-- 26. List members whose first name contains the letter 'a'.
SELECT * FROM Member WHERE First_Name LIKE '%a%';

-- 27. Retrieve breakdowns that occurred between August 1, 2024, and August 31, 2024.
SELECT * FROM Breakdown 
WHERE Breakdown_Date BETWEEN '2024-08-01' AND '2024-08-31';

-- 28. Find members whose age is not between 20 and 40 years.
SELECT * FROM Member WHERE Member_Age NOT BETWEEN 20 AND 40;

-- 29. List breakdowns that occurred after October 1, 2024.
SELECT * FROM Breakdown WHERE Breakdown_Date > '2024-10-01';

-- 30. Retrieve the top 3 oldest members from the Member table.
SELECT * FROM Member ORDER BY Member_Age DESC LIMIT 3;


-- ........................ MEDIUM TASK .......................

-- 1. Count the number of breakdowns for each vehicle.
SELECT Vehicle_Registration, COUNT(*) AS Breakdown_Count FROM Breakdown GROUP BY Vehicle_Registration;

-- 2. Find members who own more than one vehicle.
SELECT Member_ID, COUNT(*) AS Vehicle_Count FROM Vehicle GROUP BY Member_ID HAVING Vehicle_Count > 1;

-- .......................... Dificult TASK .......................
-- 1. Retrieve a list of members along with their vehicles using a join.
SELECT m.Member_ID, m.First_Name, m.Last_Name, v.Vehicle_Registration, v.Vehicle_Make, v.Vehicle_Model
FROM Member m JOIN Vehicle v ON m.Member_ID = v.Member_ID;

-- 2. Retrieve breakdown details along with the respective member details using a join.
SELECT b.Breakdown_ID, b.Breakdown_Date, b.Breakdown_Time, b.Breakdown_Location, m.First_Name, m.Last_Name
FROM Breakdown b JOIN Vehicle v ON b.Vehicle_Registration = v.Vehicle_Registration JOIN Member m ON v.Member_ID = m.Member_ID;

-- 3. Find members who own a vehicle but have never experienced a breakdown.
SELECT m.Member_ID, m.First_Name, m.Last_Name FROM Member m
JOIN Vehicle v ON m.Member_ID = v.Member_ID WHERE v.Vehicle_Registration NOT IN (SELECT Vehicle_Registration FROM Breakdown);

-- 4. Retrieve vehicles along with the count of their breakdowns using a join and group by.
SELECT v.Vehicle_Registration, v.Vehicle_Make, v.Vehicle_Model, COUNT(b.Breakdown_ID) AS Breakdown_Count FROM Vehicle v
LEFT JOIN Breakdown b ON v.Vehicle_Registration = b.Vehicle_Registration GROUP BY v.Vehicle_Registration;

-- 5. Find members whose vehicles have broken down more than twice.
SELECT m.Member_ID, m.First_Name, m.Last_Name FROM Member m JOIN Vehicle v ON m.Member_ID = v.Member_ID
JOIN Breakdown b ON v.Vehicle_Registration = b.Vehicle_Registration GROUP BY m.Member_ID HAVING COUNT(b.Breakdown_ID) > 2;

-- 6. Retrieve breakdowns where multiple vehicles broke down on the same day.
SELECT Breakdown_Date, COUNT(*) AS Vehicles_Broken_Down FROM Breakdown
GROUP BY Breakdown_Date HAVING Vehicles_Broken_Down > 1;

-- 7. Count the total breakdowns handled by each engineer.
SELECT e.Engineer_ID, e.First_Name, e.Last_Name, COUNT(b.Breakdown_ID) AS Total_Breakdowns FROM Engineer e
LEFT JOIN Breakdown b ON e.Engineer_ID = b.Engineer_ID GROUP BY e.Engineer_ID;

-- 8. List all vehicles that have never had a breakdown using a subquery.
SELECT * FROM Vehicle WHERE Vehicle_Registration NOT IN (SELECT Vehicle_Registration FROM Breakdown);

-- 9. Find the average age of members whose vehicles have experienced at least one breakdown.
SELECT AVG(m.Member_Age) AS Average_Age FROM Member m
JOIN Vehicle v ON m.Member_ID = v.Member_ID WHERE v.Vehicle_Registration IN (SELECT Vehicle_Registration FROM Breakdown);

-- 10. Retrieve the top 3 vehicles with the highest number of breakdowns, ordered by breakdown count.
SELECT v.Vehicle_Registration, COUNT(b.Breakdown_ID) AS Breakdown_Count FROM Vehicle v
JOIN Breakdown b ON v.Vehicle_Registration = b.Vehicle_Registration GROUP BY v.Vehicle_Registration
ORDER BY Breakdown_Count DESC LIMIT 3;

-- ............................ TASK5 ................................... 

-- SQL Aggregate Functions: AVG, MAX, MIN, SUM**

-- These functions are used to perform calculations on a set of values within a database table.

-- AVG --
-- Calculates the average value of a numeric column. --
-- Syntax: AVG(column_name) --
-- Example: --
  
  SELECT AVG(MEMBER_AGE) AS average_age
  FROM MEMBER;
  
  -- This will return the average AGE of all Members.

-- MAX --
-- Returns the maximum value of a column. --
-- Syntax: MAX(column_name) --
-- Example: --
  
  SELECT MAX(sales) AS highest_sale FROM orders; 
  
--  This will return the highest sales amount from the orders table. --

-- MIN --
-- Returns the minimum value of a column. --
-- Syntax: MIN(column_name) --
-- Example: --
  
  SELECT MIN(age) AS youngest_employee
  FROM employees;

--  This will return the age of the youngest employee. --

-- SUM --
-- Calculates the sum of all values in a numeric column. --
-- Syntax: SUM(column_name) --
-- Example: --
  
  SELECT SUM(price) AS total_price
  FROM products;
 
 -- This will return the total price of all products.

-- Additional Notes:
-- These functions are often used with the 'GROUP BY' clause to calculate values for specific groups of data.
-- You can combine multiple aggregate functions in a single query.
-- To exclude NULL values from calculations, use the 'COALESCE' or 'IFNULL' functions to replace them with a specific value.


-- ........................... TASK6..................................... 

-- ........................... UPDATE ...................................
-- Update the last name of Engineer ID 1
UPDATE Engineer SET Last_Name = 'Johnson' WHERE Engineer_ID = 1;

-- Update the first name of Engineer ID 2
UPDATE Engineer SET First_Name = 'Emily' WHERE Engineer_ID = 2;

-- Update both the first and last name of Engineer ID 3
UPDATE Engineer SET First_Name = 'Sophia', Last_Name = 'Anderson' WHERE Engineer_ID = 3;

-- ...........................DELETETASK.................................... 

-- Delete the breakdown with Breakdown_ID = 1
DELETE FROM Breakdown WHERE Breakdown_ID = 1;

-- Delete the breakdown with Breakdown_ID = 5
DELETE FROM Breakdown WHERE Breakdown_ID = 5;

