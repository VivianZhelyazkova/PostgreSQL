CREATE TABLE item_types(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    item_type_name VARCHAR(55) NOT NULL
);

CREATE TABLE items(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    item_name VARCHAR(255) NOT NULL,
    item_type_id INT REFERENCES item_types(id)
);

CREATE TABLE cities(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    city_name VARCHAR(255) NOT NULL
);

CREATE TABLE customers(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    customer_name VARCHAR(255) NOT NULL,
    birthday DATE NOT NULL,
    city_id INT REFERENCES cities(id)
);

CREATE TABLE orders(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    customer_id INT REFERENCES customers(id)
);

CREATE TABLE order_items(
    order_id INT REFERENCES orders(id),
    item_id INT REFERENCES items(id)
);