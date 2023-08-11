--DDL file has: create, alter, drop, truncate, comment and rename
-- examples of this should be:

    -- Truncate example: Remove all records from the 'customer' table
    -- TRUNCATE TABLE "customer";

    -- Rename example: Change table name from 'movie' to 'film'
    -- ALTER TABLE "movie" RENAME TO "film";

-- this is a comment

-- every single table should have a comment to let others know what you thinking
-- im gonna skip comments for now...

-- Create table to store customer information
CREATE TABLE if not exists "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "email" VARCHAR(100) UNIQUE NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL,
  "date_of_birth" DATE NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "movie" (
  "movie_id" SERIAL PRIMARY KEY,
  "movie_title" VARCHAR(100) NOT NULL,
  "release_date" DATE NOT NULL,
  "genre" VARCHAR(50) NOT NULL,
  "director" VARCHAR(50) NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "staff" (
  "staff_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "email" VARCHAR(100) UNIQUE NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL,
  "date_of_birth" DATE NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "show_time" (
  "show_time_id" SERIAL PRIMARY KEY,
  "movie_id" INT NOT NULL,
  "start_time" timestamp NOT NULL,
  "end_time" timestamp NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "movie_theater_ticket" (
  "ticket_id" SERIAL PRIMARY KEY,
  "customer_id" INT NOT NULL,
  "movie_id" INT NOT NULL,
  "show_time_id" INT UNIQUE NOT NULL,
  "seat_number" VARCHAR(10) UNIQUE NOT NULL,
  "ticket_price" DECIMAL(10, 2) NOT NULL,
  "purchase_date" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "concessions" (
  "concession_id" SERIAL PRIMARY KEY,
  "concession_name" VARCHAR(50) NOT NULL,
  "concession_price" DECIMAL(10, 2) NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "customer_concession_purchase" (
  "purchase_id" SERIAL PRIMARY KEY,
  "customer_id" INT UNIQUE NOT NULL,
  "concession_id" INT UNIQUE NOT NULL,
  "purchase_date" timestamp UNIQUE DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "reviews" (
  "review_id" SERIAL PRIMARY KEY,
  "movie_id" INT NOT NULL,
  "customer_id" INT NOT NULL,
  "rating" DECIMAL(3, 1) NOT NULL,
  "review_text" TEXT,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "payment" (
  "payment_id" SERIAL PRIMARY KEY,
  "customer_id" INT NOT NULL,
  "amount" DECIMAL(10, 2) NOT NULL,
  "payment_date" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "maintenance_log" (
  "log_id" SERIAL PRIMARY KEY,
  "movie_id" INT NOT NULL,
  "staff_id" INT NOT NULL,
  "maintenance_date" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "employee_shift" (
  "shift_id" SERIAL PRIMARY KEY,
  "staff_id" INT NOT NULL,
  "start_time" timestamp NOT NULL,
  "end_time" timestamp NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE if not exists "employee_shift_assignment" (
  "assignment_id" SERIAL PRIMARY KEY,
  "staff_id" INT UNIQUE NOT NULL,
  "shift_id" INT UNIQUE NOT NULL,
  "assignment_date" timestamp UNIQUE DEFAULT (CURRENT_TIMESTAMP)
);

-- alter section
ALTER TABLE "show_time" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_theater_ticket" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "movie_theater_ticket" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_theater_ticket" ADD FOREIGN KEY ("show_time_id") REFERENCES "show_time" ("show_time_id");

ALTER TABLE "customer_concession_purchase" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "customer_concession_purchase" ADD FOREIGN KEY ("concession_id") REFERENCES "concessions" ("concession_id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("movie_id");

ALTER TABLE "reviews" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "payment" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "maintenance_log" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("movie_id");

ALTER TABLE "maintenance_log" ADD FOREIGN KEY ("staff_id") REFERENCES "staff" ("staff_id");

ALTER TABLE "employee_shift" ADD FOREIGN KEY ("staff_id") REFERENCES "staff" ("staff_id");

ALTER TABLE "employee_shift_assignment" ADD FOREIGN KEY ("staff_id") REFERENCES "staff" ("staff_id");

ALTER TABLE "employee_shift_assignment" ADD FOREIGN KEY ("shift_id") REFERENCES "employee_shift" ("shift_id");

