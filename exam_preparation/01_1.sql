CREATE TABLE owners
(
    id           INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name         VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    address      VARCHAR(50)
);

CREATE TABLE animal_types
(
    id          INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    animal_type VARCHAR(30) NOT NULL
);

CREATE TABLE animals
(
    id             INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name           VARCHAR(30) NOT NULL,
    birthdate      DATE        NOT NULL,
    owner_id       INTEGER REFERENCES owners (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    animal_type_id INTEGER     NOT NULL REFERENCES animal_types (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE cages
(
    id             INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    animal_type_id INTEGER NOT NULL REFERENCES animal_types (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE animals_cages
(
    cage_id   INTEGER NOT NULL REFERENCES cages (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    animal_id INTEGER NOT NULL REFERENCES animals (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE volunteers_departments
(
    id              INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);

CREATE TABLE volunteers
(
    id            INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name          VARCHAR(50) NOT NULL,
    phone_number  VARCHAR(15) NOT NULL,
    address       VARCHAR(50),
    animal_id     INTEGER REFERENCES animals (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    department_id INTEGER     NOT NULL REFERENCES volunteers_departments (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
