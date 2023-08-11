CREATE TABLE "customer"
(
    "customer_id" SERIAL PRIMARY KEY,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) UNIQUE NOT NULL,
    "phone_number" VARCHAR(20) NOT NULL,
    "date_of_birth" DATE NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "movie"
(
    "movie_id" SERIAL PRIMARY KEY,
    "movie_title" VARCHAR(100) NOT NULL,
    "release_date" DATE NOT NULL,
    "genre" VARCHAR(50) NOT NULL,
    "director" VARCHAR(50) NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "staff"
(
    "staff_id" SERIAL PRIMARY KEY,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) UNIQUE NOT NULL,
    "phone_number" VARCHAR(20) NOT NULL,
    "date_of_birth" DATE NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "show_time"
(
    "show_time_id" SERIAL PRIMARY KEY,
    "movie_id" INT NOT NULL REFERENCES "movie" ("movie_id"),
    "start_time" TIMESTAMP NOT NULL,
    "end_time" TIMESTAMP NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "movie_theater_ticket"
(
    "ticket_id" SERIAL PRIMARY KEY,
    "customer_id" INT NOT NULL REFERENCES "customer" ("customer_id"),
    "movie_id" INT NOT NULL REFERENCES "movie" ("movie_id"),
    "show_time_id" INT NOT NULL REFERENCES "show_time" ("show_time_id"),
    "seat_number" VARCHAR(10) NOT NULL,
    "ticket_price" DECIMAL(10, 2) NOT NULL,
    "purchase_date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE ("show_time_id", "seat_number")
);

CREATE TABLE "concessions"
(
    "concession_id" SERIAL PRIMARY KEY,
    "concession_name" VARCHAR(50) NOT NULL,
    "concession_price" DECIMAL(10, 2) NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "customer_concession_purchase"
(
    "purchase_id" SERIAL PRIMARY KEY,
    "customer_id" INT NOT NULL REFERENCES "customer" ("customer_id"),
    "concession_id" INT NOT NULL REFERENCES "concessions" ("concession_id"),
    "purchase_date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE ("customer_id", "concession_id", "purchase_date")
);

CREATE TABLE "reviews"
(
    "review_id" SERIAL PRIMARY KEY,
    "movie_id" INT NOT NULL REFERENCES "movie" ("movie_id"),
    "customer_id" INT NOT NULL REFERENCES "customer" ("customer_id"),
    "rating" DECIMAL(3, 1) NOT NULL,
    "review_text" TEXT,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "payment"
(
    "payment_id" SERIAL PRIMARY KEY,
    "customer_id" INT NOT NULL REFERENCES "customer" ("customer_id"),
    "amount" DECIMAL(10, 2) NOT NULL,
    "payment_date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "maintenance_log"
(
    "log_id" SERIAL PRIMARY KEY,
    "movie_id" INT NOT NULL REFERENCES "movie" ("movie_id"),
    "staff_id" INT NOT NULL REFERENCES "staff" ("staff_id"),
    "maintenance_date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "employee_shift"
(
    "shift_id" SERIAL PRIMARY KEY,
    "staff_id" INT NOT NULL REFERENCES "staff" ("staff_id"),
    "start_time" TIMESTAMP NOT NULL,
    "end_time" TIMESTAMP NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "employee_shift_assignment"
(
    "assignment_id" SERIAL PRIMARY KEY,
    "staff_id" INT NOT NULL REFERENCES "staff" ("staff_id"),
    "shift_id" INT NOT NULL REFERENCES "employee_shift" ("shift_id"),
    "assignment_date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE ("staff_id", "shift_id", "assignment_date")
);
