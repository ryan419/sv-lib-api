CREATE TABLE book (
   id serial PRIMARY KEY,
   title varchar(255),
   author varchar(255),
   publish_date DATE
);

CREATE TABLE member (
   id serial PRIMARY KEY,
   first_name varchar(255),
   last_name varchar(255),
   gender varchar(255)
);

CREATE TABLE borrow (
   member_id int references member(id),
   book_id int references book(id),
   PRIMARY KEY(member_id, book_id),
   borrow_date Date
);
