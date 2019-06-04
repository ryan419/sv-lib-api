INSERT INTO public.book (title, author, publish_date)
    VALUES ('Refactoring', 'Martin Fowler', '2019-01-01');

INSERT INTO public. "member" (first_name, last_name, gender)
    VALUES ('Ryan', 'Xiao', 'male');
INSERT INTO public. "member" (first_name, last_name, gender)
    VALUES ('Leo', 'Messi', 'male');

INSERT INTO public.borrow (member_id, book_id, borrow_date)
    VALUES (1, 1, '2019-06-01');
INSERT INTO public.borrow (member_id, book_id, borrow_date)
    VALUES (2, 1, '2019-07-01');
