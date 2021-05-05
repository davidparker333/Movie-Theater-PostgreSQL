INSERT INTO customer (
	first_name,
	last_name,
	email,
	username
)VALUES (
	'David',
	'Parker',
	'davidparker333@gmail.com',
	'davidparker333'
), (
	'Bruce',
	'Lee',
	'Brucelee@gmail.com',
	'thebrucelee'
);

INSERT INTO transaction_ (
	customer_id,
	amount
)VALUES (
	1,
	'10.99'
), (
	2,
	'13.99'
);

INSERT INTO movie (
	showtime,
	movie_name
)VALUES (
	'16:30',
	'The Room'
), (
	'20:00',
	'Birdemic'
);

INSERT INTO ticket (
	movie_id,
	transaction_id,
	price
)VALUES (
	1,
	2,
	'7.99'
), (
	2,
	3,
	'8.99'
);

INSERT INTO concession (
	product_name,
	price,
	transaction_id
)VALUES (
	'Popcorn',
	'3.00',
	2
), (
	'M&Ms',
	'5.00',
	3
);
