-- join query of book title , the customer who bought it and the date of sale
SELECT B.title AS BookTitle, C.name AS CustomerName, S.date_of_sale AS DateOfSale
FROM books B
JOIN sales S ON B.book_id = S.book_id
JOIN customers C ON S.customer_id = C.customer_id;

-- aggregation query to find the total revenue generated for each genre
SELECT genre, SUM(total_price) AS TotalRevenue
FROM books
JOIN sales ON books.book_id = sales.book_id
GROUP BY genre;