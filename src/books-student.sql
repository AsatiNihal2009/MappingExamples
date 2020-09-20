use onlineEcommerce;
create table student(
	student_id int(11) NOT NULL AUTO_INCREMENT,
	student_name varchar(100) NOT NULL,
	PRIMARY KEY(student_id)
);
create table books(
	books_id int(11) NOT NULL AUTO_INCREMENT,
	book_name varchar(40) NOT NULL,
	book_author varchar(40) NOT NULL,	
	book_price decimal(10,2) NOT NULL,
	PRIMARY KEY(books_id),
);

create table student_book(
	student_id int (11) NOT NULL,
	books_id int(11) NOT NULL,
	PRIMARY KEY (student_id, books_id),
	CONSTRAINT books_fk FOREIGN Key (books_id) REFERENCES books (books_id),
	CONSTRAINT student_fk FOREIGN Key (student_id) REFERENCES student (student_id)
);
