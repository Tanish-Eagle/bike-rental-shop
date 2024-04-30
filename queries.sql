CREATE TABLE bikes(
    bike_id SERIAL PRIMARY KEY,
    type VARCHAHR(50) NOT NULL,
    size INT NOT NULL,
    available BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    phone VARCHAR(15) NOT NULL UNIQUE,
    name VARCHAR(40) NOT NULL
);

CREATE TABLE rentals(
    rental_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    bike_id INT NOT NULL,
    FOREIGN KEY(bike_id) REFERENCES bikes(bike_id),
    date_rented DATE NOT NULL DEFAULT NOW(),
    date_returned DATE
);

INSERT INTO
    bikes(type, size)
VALUES
    ('Mountain', 27);

INSERT INTO
    bikes(type, size)
VALUES
    ('Mountain', 28);

INSERT INTO
    bikes(type, size)
VALUES
    ('Mountain', 29);

INSERT INTO
    bikes(type, size)
VALUES
    ('Road', 27);

INSERT INTO
    bikes(type, size)
VALUES
    ('Road', 28),
    ('Road', 29);

INSERT INTO
    bikes(type, size)
VALUES
    ('BMX', 19),
    ('BMX', 20),
    ('BMX', 21);