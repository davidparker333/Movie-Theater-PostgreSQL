CREATE TABLE customer (
customer_id SERIAL PRIMARY KEY,
first_name VARCHAR(30),
last_name varchar(50),
email VARCHAR(50),
username VARCHAR(50)
);

CREATE TABLE transaction_ (
transaction_id SERIAL PRIMARY KEY,
customer_id INTEGER NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
amount NUMERIC(5,2),
transaction_date TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('UTC', NOW())
);

CREATE TABLE movie (
movie_id SERIAL PRIMARY KEY,
showtime TIME,
movie_name VARCHAR(50)
);


CREATE TABLE ticket (
ticket_id SERIAL PRIMARY KEY,
movie_id INTEGER NOT NULL, 
FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
transaction_id INTEGER NOT NULL,
FOREIGN KEY (transaction_id) REFERENCES transaction_(transaction_id),
price NUMERIC(5,2)
);

CREATE TABLE concession (
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(30),
price NUMERIC(5,2),
transaction_id INTEGER NOT NULL,
FOREIGN KEY (transaction_id) REFERENCES transaction_(transaction_id)
);

