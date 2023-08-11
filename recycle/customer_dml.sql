INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('John', 'Doe', 'johndoe@example.com', '1234567890', '1990-01-01', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('Jane', 'Smith', 'janesmith@example.com', '0987654321', '1995-05-05', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('Michael', 'Johnson', 'michael@example.com', '9876543210', '1988-10-15', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('Emily', 'Williams', 'emily@example.com', '5678901234', '1992-03-20', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('David', 'Brown', 'david@example.com', '6789012345', '1985-07-12', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('Sarah', 'Miller', 'sarah@example.com', '7890123456', '1998-12-30', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('Robert', 'Garcia', 'robert@example.com', '8901234567', '1983-09-08', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('Jessica', 'Martinez', 'jessica@example.com', '9012345678', '1994-06-25', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('William', 'Lee', 'william@example.com', '3456789012', '1991-11-03', CURRENT_TIMESTAMP);

INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth, created_at)
VALUES
    ('Olivia', 'Jackson', 'olivia@example.com', '4567890123', '1997-04-18', CURRENT_TIMESTAMP);

-- Updates for "customer" table
UPDATE customer
SET
    first_name = 'Johnny'
WHERE
    customer_id = 1;

UPDATE customer
SET
    last_name = 'Smithson'
WHERE
    customer_id = 2;

UPDATE customer
SET
    email = 'michaeljohn@example.com'
WHERE
    customer_id = 3;

UPDATE customer
SET
    phone_number = '7777777777'
WHERE
    customer_id = 4;

UPDATE customer
SET
    date_of_birth = '1985-03-20'
WHERE
    customer_id = 5;

UPDATE customer
SET
    first_name = 'Samantha'
WHERE
    customer_id = 6;

UPDATE customer
SET
    last_name = 'Garcia'
WHERE
    customer_id = 7;

UPDATE customer
SET
    email = 'jessica.m@example.com'
WHERE
    customer_id = 8;

UPDATE customer
SET
    phone_number = '5555555555'
WHERE
    customer_id = 9;

UPDATE customer
SET
    date_of_birth = '1990-01-15'
WHERE
    customer_id = 10;
