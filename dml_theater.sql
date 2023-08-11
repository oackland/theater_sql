INSERT INTO
    "customer" ("first_name", "last_name", "email", "phone_number", "date_of_birth")
VALUES
    ('Jane', 'Smith', 'jane@example.com', '987-654-3210', '1985-05-23'),
    ('Michael', 'Johnson', 'michael@example.com', '555-123-4567', '1993-09-10'),
    ('Emily', 'Williams', 'emily@example.com', '444-555-6666', '1988-12-03'),
    ('David', 'Brown', 'david@example.com', '222-333-4444', '1995-06-20'),
    ('Jennifer', 'Taylor', 'jennifer@example.com', '777-888-9999', '1992-03-08'),
    ('Daniel', 'Anderson', 'daniel@example.com', '111-222-3333', '1994-11-17'),
    ('Jessica', 'Martinez', 'jessica@example.com', '888-999-0000', '1987-07-12'),
    ('Christopher', 'Harris', 'chris@example.com', '555-777-8888', '1991-04-29'),
    ('Elizabeth', 'Jackson', 'elizabeth@example.com', '444-666-7777', '1989-08-25'),
    ('Alex', 'Lee', 'alex@example.com', '111-444-7777', '1996-02-19'),
    ('Amanda', 'Garcia', 'amanda@example.com', '333-666-9999', '1997-07-21'),
    ('Matthew', 'Walker', 'matthew@example.com', '555-888-1111', '1998-10-05'),
    ('Sarah', 'White', 'sarah@example.com', '777-000-2222', '1999-12-15'),
    ('Ryan', 'Miller', 'ryan@example.com', '999-222-4444', '2000-03-27'),
    ('Laura', 'Thompson', 'laura@example.com', '111-333-5555', '2001-06-10'),
    ('Kevin', 'Martin', 'kevin@example.com', '222-444-6666', '2002-09-18'),
    ('Megan', 'Scott', 'megan@example.com', '333-555-7777', '2003-12-01'),
    ('William', 'Clark', 'william@example.com', '444-666-8888', '2004-02-14'),
    ('Olivia', 'Adams', 'olivia@example.com', '555-777-9999', '2005-05-30');

INSERT INTO
    "movie" ("movie_title", "release_date", "genre", "director")
VALUES
    ('The Matrix', '1999-03-31', 'Science Fiction', 'Lana Wachowski, Lilly Wachowski'),
    ('Inception', '2010-07-16', 'Science Fiction', 'Christopher Nolan'),
    ('The Shawshank Redemption', '1994-09-23', 'Drama', 'Frank Darabont'),
    ('Pulp Fiction', '1994-10-14', 'Crime', 'Quentin Tarantino'),
    ('The Godfather', '1972-03-24', 'Crime', 'Francis Ford Coppola'),
    ('The Dark Knight', '2008-07-18', 'Action', 'Christopher Nolan'),
    ('Forrest Gump', '1994-07-06', 'Drama', 'Robert Zemeckis'),
    ('Fight Club', '1999-09-10', 'Drama', 'David Fincher'),
    ('Star Wars: Episode IV - A New Hope', '1977-05-25', 'Science Fiction', 'George Lucas'),
    ('The Lord of the Rings: The Return of the King', '2003-12-17', 'Fantasy', 'Peter Jackson'),
    ('Avatar', '2009-12-18', 'Action', 'James Cameron'),
    ('Interstellar', '2014-11-07', 'Science Fiction', 'Christopher Nolan'),
    ('The Avengers', '2012-05-04', 'Action', 'Joss Whedon'),
    ('The Lion King', '1994-06-24', 'Animation', 'Roger Allers, Rob Minkoff'),
    ('Jurassic Park', '1993-06-11', 'Science Fiction', 'Steven Spielberg'),
    ('Titanic', '1997-12-19', 'Drama', 'James Cameron'),
    ('The Social Network', '2010-10-01', 'Drama', 'David Fincher'),
    ('Frozen', '2013-11-27', 'Animation', 'Chris Buck, Jennifer Lee'),
    ('The Revenant', '2015-12-25', 'Drama', 'Alejandro González Iñárritu'),
    ('Gladiator', '2000-05-05', 'Action', 'Ridley Scott');
--
INSERT INTO
    "staff" ("first_name", "last_name", "email", "phone_number", "date_of_birth")
VALUES
    ('John', 'Smith', 'john@example.com', '123-456-7890', '1985-01-15'),
    ('Emily', 'Johnson', 'emily@example.com', '987-654-3210', '1990-05-23'),
    ('Michael', 'Williams', 'michael@example.com', '555-123-4567', '1988-09-10'),
    ('Jessica', 'Brown', 'jessica@example.com', '444-555-6666', '1993-12-03'),
    ('David', 'Martinez', 'david@example.com', '222-333-4444', '1986-06-20'),
    ('Jennifer', 'Anderson', 'jennifer@example.com', '777-888-9999', '1991-03-08'),
    ('Daniel', 'Taylor', 'daniel@example.com', '111-222-3333', '1994-11-17'),
    ('Sarah', 'Garcia', 'sarah@example.com', '888-999-0000', '1987-07-12'),
    ('Christopher', 'Harris', 'chris@example.com', '555-777-8888', '1992-04-29'),
    ('Elizabeth', 'Jackson', 'elizabeth@example.com', '444-666-7777', '1989-08-25'),
    ('Alex', 'Lee', 'alex@example.com', '111-444-7777', '1995-02-19'),
    ('Amanda', 'Miller', 'amanda@example.com', '333-666-9999', '1997-07-21'),
    ('Matthew', 'Thompson', 'matthew@example.com', '555-888-1111', '1998-10-05'),
    ('Olivia', 'Adams', 'olivia@example.com', '777-000-2222', '1999-12-15'),
    ('Ryan', 'Scott', 'ryan@example.com', '999-222-4444', '2000-03-27'),
    ('Laura', 'Martin', 'laura@example.com', '111-333-5555', '2001-06-10'),
    ('Kevin', 'White', 'kevin@example.com', '222-444-6666', '2002-09-18'),
    ('Megan', 'Clark', 'megan@example.com', '333-555-7777', '2003-12-01'),
    ('William', 'Walker', 'william@example.com', '444-666-8888', '2004-02-14'),
    ('Sophia', 'Hall', 'sophia@example.com', '555-777-9999', '2005-05-30');

INSERT INTO
    "show_time" ("movie_id", "start_time", "end_time")
VALUES
    (1, '2023-08-10 14:00:00', '2023-08-10 16:00:00'),
    (2, '2023-08-10 16:30:00', '2023-08-10 18:30:00'),
    (3, '2023-08-10 19:00:00', '2023-08-10 21:00:00'),
    (4, '2023-08-10 11:00:00', '2023-08-10 13:00:00'),
    (5, '2023-08-10 15:30:00', '2023-08-10 17:30:00'),
    (1, '2023-08-11 14:00:00', '2023-08-11 16:00:00'),
    (2, '2023-08-11 16:30:00', '2023-08-11 18:30:00'),
    (3, '2023-08-11 19:00:00', '2023-08-11 21:00:00'),
    (4, '2023-08-11 11:00:00', '2023-08-11 13:00:00'),
    (5, '2023-08-11 15:30:00', '2023-08-11 17:30:00'),
    (1, '2023-08-12 14:00:00', '2023-08-12 16:00:00'),
    (2, '2023-08-12 16:30:00', '2023-08-12 18:30:00'),
    (3, '2023-08-12 19:00:00', '2023-08-12 21:00:00'),
    (4, '2023-08-12 11:00:00', '2023-08-12 13:00:00'),
    (5, '2023-08-12 15:30:00', '2023-08-12 17:30:00'),
    (1, '2023-08-13 14:00:00', '2023-08-13 16:00:00'),
    (2, '2023-08-13 16:30:00', '2023-08-13 18:30:00'),
    (3, '2023-08-13 19:00:00', '2023-08-13 21:00:00'),
    (4, '2023-08-13 11:00:00', '2023-08-13 13:00:00'),
    (5, '2023-08-13 15:30:00', '2023-08-13 17:30:00');
--
INSERT INTO
    "movie_theater_ticket" ("customer_id", "movie_id", "show_time_id", "seat_number", "ticket_price")
VALUES
    (1, 1, 1, 'A1', 12.99),
    (2, 2, 2, 'B3', 9.99),
    (3, 3, 3, 'C5', 14.99),
    (4, 4, 4, 'D2', 11.99),
    (5, 5, 5, 'E7', 8.99),
    (6, 6, 6, 'F4', 13.99),
    (7, 7, 7, 'G6', 10.99),
    (8, 8, 8, 'H1', 15.99),
    (9, 9, 9, 'I3', 12.49),
    (10, 10, 10, 'J5', 9.49),
    (11, 11, 11, 'K2', 14.49),
    (12, 12, 12, 'L4', 11.49),
    (13, 13, 13, 'M6', 16.49),
    (14, 14, 14, 'N1', 13.99),
    (15, 15, 15, 'O3', 10.99),
    (16, 16, 16, 'P5', 15.99),
    (17, 17, 17, 'Q2', 12.99),
    (18, 18, 18, 'R4', 9.99),
    (19, 19, 19, 'S6', 14.99),
    (20, 20, 20, 'T1', 11.99);


INSERT INTO
    "staff" ("first_name", "last_name", "email", "phone_number", "date_of_birth")
VALUES
    ('John', 'Smith', 'john@example.com', '123-456-7890', '1985-01-15'),
    ('Emily', 'Johnson', 'emily@example.com', '987-654-3210', '1990-05-23'),
    ('Michael', 'Williams', 'michael@example.com', '555-123-4567', '1988-09-10'),
    ('Jessica', 'Brown', 'jessica@example.com', '444-555-6666', '1993-12-03'),
    ('David', 'Martinez', 'david@example.com', '222-333-4444', '1986-06-20'),
    ('Jennifer', 'Anderson', 'jennifer@example.com', '777-888-9999', '1991-03-08'),
    ('Daniel', 'Taylor', 'daniel@example.com', '111-222-3333', '1994-11-17'),
    ('Sarah', 'Garcia', 'sarah@example.com', '888-999-0000', '1987-07-12'),
    ('Christopher', 'Harris', 'chris@example.com', '555-777-8888', '1992-04-29'),
    ('Elizabeth', 'Jackson', 'elizabeth@example.com', '444-666-7777', '1989-08-25'),
    ('Alex', 'Lee', 'alex@example.com', '111-444-7777', '1995-02-19'),
    ('Amanda', 'Miller', 'amanda@example.com', '333-666-9999', '1997-07-21'),
    ('Matthew', 'Thompson', 'matthew@example.com', '555-888-1111', '1998-10-05'),
    ('Olivia', 'Adams', 'olivia@example.com', '777-000-2222', '1999-12-15'),
    ('Ryan', 'Scott', 'ryan@example.com', '999-222-4444', '2000-03-27'),
    ('Laura', 'Martin', 'laura@example.com', '111-333-5555', '2001-06-10'),
    ('Kevin', 'White', 'kevin@example.com', '222-444-6666', '2002-09-18'),
    ('Megan', 'Clark', 'megan@example.com', '333-555-7777', '2003-12-01'),
    ('William', 'Walker', 'william@example.com', '444-666-8888', '2004-02-14'),
    ('Sophia', 'Hall', 'sophia@example.com', '555-777-9999', '2005-05-30');

INSERT INTO
    "concessions" ("concession_name", "concession_price")
VALUES
    ('Popcorn', 5.99),
    ('Soda', 2.49),
    ('Candy', 1.99),
    ('Nachos', 4.99),
    ('Pretzel', 3.49),
    ('Ice Cream', 3.99),
    ('Hot Dog', 3.99),
    ('Cotton Candy', 2.99),
    ('Chips', 1.49),
    ('Cookie', 1.99),
    ('Brownie', 2.49),
    ('Caramel Apple', 3.99),
    ('Fruit Cup', 2.99),
    ('Soft Pretzel Bites', 3.49),
    ('Churros', 3.49),
    ('Muffin', 2.49),
    ('Gummy Bears', 1.99),
    ('Trail Mix', 2.49),
    ('Cheese Dip', 1.99),
    ('Slushie', 3.49);


-- Insert data into "customer_concession_purchase" table
INSERT INTO
    "customer_concession_purchase" ("customer_id", "concession_id", "purchase_date")
VALUES
    (1, 1, '2023-08-10 10:00:00'),
    (2, 2, '2023-08-10 11:30:00'),
    (3, 3, '2023-08-10 13:15:00'),
    (4, 4, '2023-08-10 14:45:00'),
    (5, 5, '2023-08-10 16:30:00'),
    (6, 6, '2023-08-10 18:00:00'),
    (7, 7, '2023-08-10 19:30:00'),
    (8, 8, '2023-08-10 21:00:00'),
    (9, 9, '2023-08-11 10:30:00'),
    (10, 10, '2023-08-11 12:00:00'),
    (11, 11, '2023-08-11 13:30:00'),
    (12, 12, '2023-08-11 15:00:00'),
    (13, 13, '2023-08-11 16:30:00'),
    (14, 14, '2023-08-11 18:00:00'),
    (15, 15, '2023-08-11 19:30:00'),
    (16, 16, '2023-08-11 21:00:00'),
    (17, 17, '2023-08-12 10:30:00'),
    (18, 18, '2023-08-12 12:00:00'),
    (19, 19, '2023-08-12 13:30:00'),
    (20, 20, '2023-08-12 15:00:00');

INSERT INTO
    "reviews" ("movie_id", "customer_id", "rating", "review_text")
VALUES
    (1, 1, 4.5, 'Great movie! Really enjoyed it.'),
    (2, 2, 3.8, 'Interesting concept, good acting.'),
    (3, 3, 5.0, 'A classic! Highly recommended.'),
    (4, 4, 4.2, 'Entertaining, loved the plot twists.'),
    (5, 5, 2.5, 'Not my favorite, but it had its moments.'),
    (1, 6, 4.0, 'Action-packed and visually stunning.'),
    (2, 7, 3.5, 'Decent movie, could have been better.'),
    (3, 8, 4.8, 'Masterpiece, timeless.'),
    (4, 9, 3.0, 'Expected more, but it was okay.'),
    (5, 10, 2.0, 'Disappointed, didn''t meet expectations.'),
    (1, 11, 4.7, 'Impressive special effects.'),
    (2, 12, 3.2, 'Unique storyline, a bit confusing.'),
    (3, 13, 4.6, 'Emotionally touching and well-directed.'),
    (4, 14, 3.7, 'Good performances, some slow parts.'),
    (5, 15, 2.8, 'Not my taste, but others might enjoy.'),
    (1, 16, 4.4, 'Thrilling ride from start to finish.'),
    (2, 17, 3.9, 'Kept me engaged, but not memorable.'),
    (3, 18, 4.9, 'A must-see for everyone.'),
    (4, 19, 3.3, 'Average, didn''t leave a strong impact.'),
    (5, 20, 2.1, 'Couldn''t connect with the story.');


INSERT INTO
    "payment" ("customer_id", "amount", "payment_date")
VALUES
    (1, 15.99, '2023-08-10 10:00:00'),
    (2, 8.49, '2023-08-10 11:30:00'),
    (3, 12.99, '2023-08-10 13:15:00'),
    (4, 7.99, '2023-08-10 14:45:00'),
    (5, 6.99, '2023-08-10 16:30:00'),
    (6, 18.99, '2023-08-10 18:00:00'),
    (7, 5.99, '2023-08-10 19:30:00'),
    (8, 9.49, '2023-08-10 21:00:00'),
    (9, 11.99, '2023-08-11 10:30:00'),
    (10, 14.99, '2023-08-11 12:00:00'),
    (11, 16.99, '2023-08-11 13:30:00'),
    (12, 20.49, '2023-08-11 15:00:00'),
    (13, 9.99, '2023-08-11 16:30:00'),
    (14, 3.99, '2023-08-11 18:00:00'),
    (15, 17.99, '2023-08-11 19:30:00'),
    (16, 13.49, '2023-08-11 21:00:00'),
    (17, 6.99, '2023-08-12 10:30:00'),
    (18, 4.49, '2023-08-12 12:00:00'),
    (19, 8.99, '2023-08-12 13:30:00'),
    (20, 10.99, '2023-08-12 15:00:00');

INSERT INTO
    "maintenance_log" ("movie_id", "staff_id", "maintenance_date")
VALUES
    (1, 1, '2023-08-10 10:00:00'),
    (2, 2, '2023-08-10 11:30:00'),
    (3, 3, '2023-08-10 13:15:00'),
    (4, 4, '2023-08-10 14:45:00'),
    (5, 5, '2023-08-10 16:30:00'),
    (1, 6, '2023-08-10 18:00:00'),
    (2, 7, '2023-08-10 19:30:00'),
    (3, 8, '2023-08-10 21:00:00'),
    (4, 9, '2023-08-11 10:30:00'),
    (5, 10, '2023-08-11 12:00:00'),
    (1, 11, '2023-08-11 13:30:00'),
    (2, 12, '2023-08-11 15:00:00'),
    (3, 13, '2023-08-11 16:30:00'),
    (4, 14, '2023-08-11 18:00:00'),
    (5, 15, '2023-08-11 19:30:00'),
    (1, 16, '2023-08-11 21:00:00'),
    (2, 17, '2023-08-12 10:30:00'),
    (3, 18, '2023-08-12 12:00:00'),
    (4, 19, '2023-08-12 13:30:00'),
    (5, 20, '2023-08-12 15:00:00');

-- Insert data into "employee_shift" table
INSERT INTO
    "employee_shift" ("staff_id", "start_time", "end_time")
VALUES
    (1, '2023-08-10 08:00:00', '2023-08-10 16:00:00'),
    (2, '2023-08-10 09:00:00', '2023-08-10 17:00:00'),
    (3, '2023-08-10 10:00:00', '2023-08-10 18:00:00'),
    (4, '2023-08-10 11:00:00', '2023-08-10 19:00:00'),
    (5, '2023-08-10 12:00:00', '2023-08-10 20:00:00'),
    (6, '2023-08-10 13:00:00', '2023-08-10 21:00:00'),
    (7, '2023-08-10 14:00:00', '2023-08-10 22:00:00'),
    (8, '2023-08-10 15:00:00', '2023-08-10 23:00:00'),
    (9, '2023-08-11 08:00:00', '2023-08-11 16:00:00'),
    (10, '2023-08-11 09:00:00', '2023-08-11 17:00:00'),
    (11, '2023-08-11 10:00:00', '2023-08-11 18:00:00'),
    (12, '2023-08-11 11:00:00', '2023-08-11 19:00:00'),
    (13, '2023-08-11 12:00:00', '2023-08-11 20:00:00'),
    (14, '2023-08-11 13:00:00', '2023-08-11 21:00:00'),
    (15, '2023-08-11 14:00:00', '2023-08-11 22:00:00'),
    (16, '2023-08-11 15:00:00', '2023-08-11 23:00:00'),
    (17, '2023-08-12 08:00:00', '2023-08-12 16:00:00'),
    (18, '2023-08-12 09:00:00', '2023-08-12 17:00:00'),
    (19, '2023-08-12 10:00:00', '2023-08-12 18:00:00'),
    (20, '2023-08-12 11:00:00', '2023-08-12 19:00:00');

INSERT INTO
    "employee_shift_assignment" ("staff_id", "shift_id", "assignment_date")
VALUES
    (1, 1, '2023-08-10 10:00:00'),
    (2, 2, '2023-08-10 11:30:00'),
    (3, 3, '2023-08-10 13:15:00'),
    (4, 4, '2023-08-10 14:45:00'),
    (5, 5, '2023-08-10 16:30:00'),
    (6, 6, '2023-08-10 18:00:00'),
    (7, 7, '2023-08-10 19:30:00'),
    (8, 8, '2023-08-10 21:00:00'),
    (9, 9, '2023-08-11 10:30:00'),
    (10, 10, '2023-08-11 12:00:00'),
    (11, 11, '2023-08-11 13:30:00'),
    (12, 12, '2023-08-11 15:00:00'),
    (13, 13, '2023-08-11 16:30:00'),
    (14, 14, '2023-08-11 18:00:00'),
    (15, 15, '2023-08-11 19:30:00'),
    (16, 16, '2023-08-11 21:00:00'),
    (17, 17, '2023-08-12 10:30:00'),
    (18, 18, '2023-08-12 12:00:00'),
    (19, 19, '2023-08-12 13:30:00'),
    (20, 20, '2023-08-12 15:00:00');
