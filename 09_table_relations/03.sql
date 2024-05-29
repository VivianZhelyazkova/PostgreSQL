
CREATE TABLE passports
(
    id          INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 100 INCREMENT BY 1),
    nationality VARCHAR(50) NOT NULL
);

CREATE TABLE people
(
    id          SERIAL PRIMARY KEY,
    first_name  VARCHAR(50),
    salary      NUMERIC(10, 2),
    passport_id INT ,
    FOREIGN KEY (passport_id) REFERENCES passports(id)
);

INSERT INTO passports(nationality)
VALUES ('N34FG21B'),
       ('K65LO4R7'),
       ('ZE657QP2');

INSERT INTO people(FIRST_NAME, SALARY, PASSPORT_ID)
VALUES ('Roberto', 43300.0000, 101),
       ('Tom', 56100.0000, 102),
       ('Yana', 60200.0000, 100);