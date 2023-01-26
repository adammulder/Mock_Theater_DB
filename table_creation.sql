create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150) 
	);

create table movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	rating VARCHAR(20),
	run_time VARCHAR(100)
	);

create table ticket (
	ticket_id SERIAL primary key,
	customer_id INTEGER not null,
	movie_id INTEGER not null,
	theater_num VARCHAR(10),
	seat_num VARCHAR(10),
	show_time TIMESTAMP,
	foreign key(customer_id) references customer(customer_id),
	foreign key(movie_id) references movies(movie_id)
	);

create table movie_info (
	movie_id INTEGER not null,
	main_actor VARCHAR(100),
	main_actress VARCHAR(100),
	description VARCHAR(200),
	foreign key(movie_id) references movies(movie_id)
	);

create table concessions(
	food VARCHAR(100),
	drinks VARCHAR(100),
	candy VARCHAR(100)
	);
	