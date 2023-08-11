-- CREATE DATABASE coding_temple;

create table if not exists customer
(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists movie
(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    genre VARCHAR(50) NOT NULL,
    director VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists staff
(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists show_time
(
    show_time_id SERIAL PRIMARY KEY,
    movie_id INT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (movie_id, start_time),
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id)
);

create table if not exists theater_hall
(
    hall_id SERIAL PRIMARY KEY,
    hall_number INT NOT NULL,
    capacity INT NOT NULL,
    seating_layout TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists movie_theater_ticket
(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    movie_id INT NOT NULL,
    show_time_id INT NOT NULL,
    seat_number VARCHAR(10) NOT NULL,
    ticket_price DECIMAL(10, 2) NOT NULL,
    purchase_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (customer_id, movie_id, show_time_id, seat_number),
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id),
    FOREIGN KEY (show_time_id) REFERENCES show_time (show_time_id)
);



create table if not exists suppliers
(
    supplier_id SERIAL PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists inventory
(
    inventory_id SERIAL PRIMARY KEY,
    supplier_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id)
);

create table if not exists reports
(
    report_id SERIAL PRIMARY KEY,
    report_name VARCHAR(100) NOT NULL,
    report_date DATE NOT NULL,
    report_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists employee_shift_assignment
(
    assignment_id SERIAL PRIMARY KEY,
    staff_id INT NOT NULL,
    shift_id INT NOT NULL,
    assignment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (staff_id) REFERENCES staff (staff_id),
    FOREIGN KEY (shift_id) REFERENCES employee_shift (shift_id)
);
