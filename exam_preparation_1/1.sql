CREATE DATABASE taxi_db;

CREATE TABLE addresses
(
    id   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE categories
(
    id   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(10) NOT NULL
);

CREATE TABLE clients
(
    id           INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name    VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE drivers
(
    id         INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name  VARCHAR(30) NOT NULL,
    age        INTEGER     NOT NULL CHECK (age > 0),
    rating     NUMERIC(2) DEFAULT 5.5
);

CREATE TABLE cars
(
    id          INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    make        VARCHAR(20)       NOT NULL,
    model       VARCHAR(20),
    year        INTEGER DEFAULT 0 NOT NULL CHECK (year > 0),
    mileage     INT     DEFAULT 0 CHECK (mileage > 0),
    condition   CHAR(1)           NOT NULL,
    category_id INTEGER           NOT NULL REFERENCES categories (id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS courses (
	id SERIAL PRIMARY KEY,
	from_address_id INT NOT NULL,
	start TIMESTAMP NOT NULL,
	bill NUMERIC(10, 2) DEFAULT 10,
	car_id INT NOT NULL,
	client_id INT NOT NULL,

	CONSTRAINT ck_courses_bill_is_positive
		CHECK (bill > 0),

	CONSTRAINT fk_courses_addresses
		FOREIGN KEY (from_address_id)
		REFERENCES addresses(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	CONSTRAINT fk_courses_cars
		FOREIGN KEY (car_id)
		REFERENCES cars(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	CONSTRAINT fk_courses_clients
		FOREIGN KEY (client_id)
		REFERENCES clients(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE cars_drivers
(
    car_id    INT NOT NULL REFERENCES cars (id)
        ON UPDATE CASCADE ON DELETE CASCADE,
    driver_id INT NOT NULL REFERENCES drivers (id)
        ON UPDATE CASCADE ON DELETE CASCADE
);