--
-- Fetching Data 
--

-- Fetch customer by their id
SELECT * FROM customers
WHERE idcustomers = 1;

-- Fetch pet by their id
SELECT * FROM pets
WHERE idpets = 1;

-- Fetch pets owned by a certain customer
SELECT * FROM pets
WHERE customer_id = 1;

-- Fetch scheduled services for a certain pet
-- Join in pet and service info
SELECT pets.name as pet_name, services.name as service_name, date
FROM schedule
JOIN services ON services.idservices = schedule.service_id
JOIN pets ON pets.idpets = schedule.pet_id
WHERE pet_id = 1;

-- List all services
SELECT * FROM services

--
-- Creating Records -- Refer to Sample Data for Examples
--

--
-- Updating Records
--
UPDATE customers
SET first_name = 'John', last_name = 'Doe'
WHERE idcustomers = 1;

--
-- Other queries
--

-- Validate signup email exists already in DB
-- 1 if exists, else 0
SELECT COUNT(1)
FROM customers
WHERE email = 'jane.doe@gmail.com';

-- Fetch customer profile given email and password
SELECT * FROM customers
WHERE email = 'jane.doe@gmail.com'
AND password = 'password123';