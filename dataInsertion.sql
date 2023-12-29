INSERT INTO Books (title, author, genre, price, quantity_in_stock)
VALUES
     ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 15.99, 25),
     ('1984', 'George Orwell', 'Science Fiction', 12.49, 20),
     ('Pride and Prejudice', 'Jane Austen', 'Romance', 10.99, 30),
     ('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 11.99, 18),
     ('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 18.75, 22),
     ('The Catcher in the Rye', 'J.D. Salinger', 'Coming-of-Age', 9.99, 15),
     ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 14.25, 28),
     ('To the Lighthouse', 'Virginia Woolf', 'Modernist', 13.45, 12),
     ('The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 24.99, 20),
     ('Moby Dick', 'Herman Melville', 'Adventure', 16.99, 17);


INSERT INTO customers(name, email, phone)
VALUES
    ('Rocket','rocketnotracoon@galaxy.org','111111111111'),
    ('Peter Quill','starlord@galaxy.org','+999-475-3691-280'),
    ('Thanos','saviour@galaxy.org','+999-123-4567-890'),
    ('Iron Man','mrbest@stark.com','+1-000-0000-000'),
    ('Groot','groot@galaxy.org','');


INSERT INTO sales (book_id, customer_id, date_of_sale, quantity_sold)
VALUES
     (1, 1, '2023-01-05', 2),
     (3, 2, '2023-02-10', 1),
     (5, 3, '2023-03-15', 3),
     (7, 4, '2023-04-20', 1),
     (9, 5, '2023-05-25', 2),
     (2, 1, '2023-06-05', 1),
     (4, 2, '2023-07-10', 2),
     (6, 3, '2023-08-15', 1),
     (8, 4, '2023-09-20', 3),
     (10, 5, '2023-10-25', 2);