
INSERT INTO
    customer (first_name, last_name, email, phone_number, date_of_birth)
VALUES
    ('Alice', 'Johnson', 'alice@example.com', '555-555-5555', '1995-03-15');


INSERT INTO
    movie (movie_title, release_date, genre, director)
VALUES
    ('Inception', '2010-07-16', 'Science Fiction', 'Christopher Nolan');


INSERT INTO
    staff (first_name, last_name, email, phone_number, date_of_birth)
VALUES
    ('Michael', 'Brown', 'michaelbrown@example.com', '123-456-7890', '1992-11-30');


INSERT INTO
    show_time (movie_id, start_time, end_time)
VALUES
    (2, '2023-08-10 20:00:00', '2023-08-10 23:00:00');


INSERT INTO
    theater_hall (hall_number, capacity, seating_layout)
VALUES
    (2, 150, 'A1,A2,A3,B1,B2,B3,C1,C2,C3');


INSERT INTO
    movie_theater_ticket (customer_id, movie_id, show_time_id, seat_number, ticket_price)
VALUES
    (2, 2, 2, 'B2', 12.50);


INSERT INTO
    concessions (concession_name, concession_price)
VALUES
    ('Soda', 3.50);


INSERT INTO
    customer_concession_purchase (customer_id, concession_id)
VALUES
    (2, 1);


INSERT INTO
    reviews (movie_id, customer_id, rating, review_text)
VALUES
    (2, 2, 5.0, 'Absolutely mind-bending!');


INSERT INTO
    payment (customer_id, amount)
VALUES
    (2, 15.50);


INSERT INTO
    reservation (customer_id, movie_id, show_time_id, seat_number)
VALUES
    (2, 2, 2, 'C2');


INSERT INTO
    maintenance_log (movie_id, staff_id)
VALUES
    (2, 2);


INSERT INTO
    employee_shift (staff_id, start_time, end_time)
VALUES
    (2, '2023-08-10 10:00:00', '2023-08-10 18:00:00');


INSERT INTO
    suppliers (supplier_name, contact_name, email, phone_number)
VALUES
    ('XYZ Supplies', 'Jane Doe', 'xyz@example.com', '555-987-6543');


INSERT INTO
    reports (report_name, report_date, report_text)
VALUES
    ('Inventory Report', '2023-08-10', 'Current soda inventory: 200 units');


table customer;