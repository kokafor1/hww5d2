CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    phone VARCHAR(30)
);

select *
from customers;

CREATE TABLE Tickets (
	ticket_id SERIAL PRIMARY KEY,
	customer_id int,
	FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
	ticket_price int NOT NULL,
	purchase_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table Movies (
	movie_id SERIAL primary key,
	title VARCHAR(30) not null,
	genre VARCHAR(30),
	release_year int
);