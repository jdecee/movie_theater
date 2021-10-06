CREATE TABLE Movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	genre_id INTEGER,
	rating_id INTEGER,
	description VARCHAR(255)
);

CREATE TABLE Genre(
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(100)
);

ALTER TABLE Movies
ADD FOREIGN KEY(genre_id) REFERENCES GENRE(genre_id);

CREATE TABLE Ratings(
	rating_id SERIAL PRIMARY KEY,
	rating_type VARCHAR(100)
);

ALTER TABLE Movies
ADD FOREIGN KEY(rating_id) REFERENCES Ratings(rating_id);

CREATE TABLE Tickets(
	ticket_id SERIAL PRIMARY KEY,
	movie_id INTEGER,
	price NUMERIC (4,2),
	customer_id INTEGER,
	date_ DATE DEFAULT CURRENT_DATE
);

ALTER TABLE Tickets
ADD FOREIGN KEY(movie_id) REFERENCES Movies(movie_id);

CREATE TABLE CUSTOMER(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(100),
	email_address VARCHAR(100)
);

ALTER TABLE Tickets
ADD FOREIGN KEY(customer_id) REFERENCES Customer(customer_id);

CREATE TABLE Product(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	price NUMERIC(4,2)
);

CREATE TABLE Concession(
	order_id SERIAL PRIMARY KEY,
	product_id INTEGER,
	total NUMERIC(8,2)
);
