 CREATE TABLE IF NOT EXISTS "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "email" VARCHAR(100) UNIQUE NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL,
  "date_of_birth" DATE NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "movie" (
  "movie_id" SERIAL PRIMARY KEY,
  "movie_title" VARCHAR(100) NOT NULL,
  "release_date" DATE NOT NULL,
  "genre" VARCHAR(50) NOT NULL,
  "director" VARCHAR(50) NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "staff" (
  "staff_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "email" VARCHAR(100) UNIQUE NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL,
  "date_of_birth" DATE NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "show_time" (
  "show_time_id" SERIAL PRIMARY KEY,
  "movie_id" INT NOT NULL,
  "start_time" timestamp NOT NULL,
  "end_time" timestamp NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "movie_theater_ticket"(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    movie_id INT NOT NULL,
    show_time_id INT NOT NULL,
    seat_number VARCHAR(10) NOT NULL,
    ticket_price DECIMAL(10, 2) NOT NULL,
    purchase_date timestamp DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS "concessions" (
  "concession_id" SERIAL PRIMARY KEY,
  "concession_name" VARCHAR(50) NOT NULL,
  "concession_price" DECIMAL(10, 2) NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "customer_concession_purchase" (
  "purchase_id" SERIAL PRIMARY KEY,
  "customer_id" INT NOT NULL,
  "concession_id" INT NOT NULL,
  "purchase_date" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "reviews" (
  "review_id" SERIAL PRIMARY KEY,
  "movie_id" INT NOT NULL,
  "customer_id" INT NOT NULL,
  "rating" DECIMAL(2, 1) NOT NULL,
  "review_text" TEXT,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "payment" (
  "payment_id" SERIAL PRIMARY KEY,
  "customer_id" INT NOT NULL,
  "amount" DECIMAL(10, 2) NOT NULL,
  "payment_date" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "maintenance_log" (
  "log_id" SERIAL PRIMARY KEY,
  "movie_id" INT NOT NULL,
  "staff_id" INT NOT NULL,
  "maintenance_date" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "employee_shift" (
  "shift_id" SERIAL PRIMARY KEY,
  "staff_id" INT NOT NULL,
  "start_time" timestamp NOT NULL,
  "end_time" timestamp NOT NULL,
  "created_at" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

CREATE TABLE IF NOT EXISTS "employee_shift_assignment" (
  "assignment_id" SERIAL PRIMARY KEY,
  "staff_id" INT NOT NULL,
  "shift_id" INT NOT NULL,
  "assignment_date" timestamp DEFAULT (CURRENT_TIMESTAMP)
);

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
