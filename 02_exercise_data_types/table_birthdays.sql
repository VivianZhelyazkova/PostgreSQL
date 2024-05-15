CREATE TABLE minions_birthdays
(
    id            SERIAL UNIQUE PRIMARY KEY,
    name          VARCHAR(50),
    date_of_birth DATE,
    age           INTEGER CHECK (age > 0),
    present       VARCHAR(100),
    party         timestamptz

);
