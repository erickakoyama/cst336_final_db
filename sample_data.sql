-- -- -----------------------------------------------------
-- -- Table customers
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS customers (
--   idcustomers INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   first_name VARCHAR(45) NOT NULL,
--   last_name VARCHAR(45) NOT NULL,
--   email VARCHAR(45) NOT NULL,
--   phone VARCHAR(25) NOT NULL,
--   address_1 VARCHAR(45) NULL,
--   address_2 VARCHAR(45) NULL,
--   city VARCHAR(45) NULL,
--   state VARCHAR(45) NULL,
--   zip INT NULL,
--   password VARCHAR(45) NOT NULL,
--   UNIQUE INDEX email_UNIQUE (email ASC)
-- );

INSERT INTO customers (first_name, last_name, email, phone, address_1, city, state, zip, password)
VALUES ('John', 'Doe', 'john.doe@gmail.com', '909-979-0756', '123 First Street', 'Pasadena', 'CA', 91104, 'password123');

INSERT INTO customers (first_name, last_name, email, phone, address_1, city, state, zip, password)
VALUES ('Jane', 'Doe', 'jane.doe@gmail.com', '310-222-7777', '123 First Street', 'Pasadena', 'CA', 91104, 'password123');

-- -- -----------------------------------------------------
-- -- Table pets
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS pets (
--   idpets INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   name VARCHAR(45) NOT NULL,
--   age_months INT NULL DEFAULT 0,
--   breed VARCHAR(45) NULL,
--   customer_id INT NOT NULL,
--   checked_in TINYINT NULL DEFAULT 0,
--   INDEX customerId_idx (customer_id ASC),
--   CONSTRAINT customerId
--     FOREIGN KEY (customer_id)
--     REFERENCES customers (idcustomers)
--     ON DELETE RESTRICT
--     ON UPDATE NO ACTION
-- );

INSERT INTO pets (name, age_months, breed, customer_id)
VALUES ('spot', 12, 'jack russell terrier', 0);

INSERT INTO pets (name, age_months, breed, customer_id)
VALUES ('max', 18, 'pitbull terrier', 1);

-- -- -----------------------------------------------------
-- -- Table services
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS services (
--   idservices INT NOT NULL AUTO_INCREMENT,
--   name VARCHAR(45) NOT NULL,
--   description VARCHAR(45) NOT NULL,
--   cost INT NOT NULL,
--   PRIMARY KEY (idservices),
--   UNIQUE INDEX name_UNIQUE (name ASC)
-- );

INSERT INTO services (name, description, cost)
VALUES ('Nail Trim', 'Service includes trimming pets nails.', 20);

INSERT INTO services (name, description, cost)
VALUES ('Bath', 'Service includes bathing pet.', 35);

-- -- -----------------------------------------------------
-- -- Table schedule
-- -- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS schedule (
--   idschedule INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   date DATETIME NOT NULL,
--   service_id INT NOT NULL,
--   pet_id INT NOT NULL,
--   INDEX service_id_idx (service_id ASC),
--   INDEX pet_id_idx (pet_id ASC),
--   CONSTRAINT schedule_service_id
--     FOREIGN KEY (service_id)
--     REFERENCES services (idservices)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT schedule_pet_id
--     FOREIGN KEY (pet_id)
--     REFERENCES pets (idpets)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION
-- );

INSERT INTO schedule (date, service_id, pet_id)
VALUES ('2020-12-25', 1, 1); -- Schedule 1st pet with 1st service

INSERT INTO schedule (date, service_id, pet_id)
VALUES ('2020-12-15', 2, 2); -- Schedule 2nd pet with 2nd service