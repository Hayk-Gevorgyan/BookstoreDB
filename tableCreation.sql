CREATE TABLE customers
(
    customer_id BIGSERIAL PRIMARY KEY ,
    name VARCHAR(50) NOT NULL ,
    email VARCHAR(50) CONSTRAINT unique_email UNIQUE ,
    phone VARCHAR(20) NOT NULL CONSTRAINT unique_phone UNIQUE
);

CREATE TABLE books
(
    book_id BIGSERIAL PRIMARY KEY ,
    title VARCHAR(50) NOT NULL CONSTRAINT unique_title UNIQUE ,
    author VARCHAR(50) NOT NULL ,
    genre VARCHAR(50) NOT NULL ,
    price NUMERIC(10, 2) NOT NULL ,
    quantity_in_stock INTEGER NOT NULL
);

CREATE TABLE sales
(
    sale_id BIGSERIAL PRIMARY KEY ,
    book_id BIGINT NOT NULL REFERENCES books,
    customer_id BIGINT NOT NULL REFERENCES customers,
    date_of_sale DATE NOT NULL ,
    quantity_sold INTEGER NOT NULL ,
    total_price NUMERIC(10, 2) DEFAULT 0,
    CONSTRAINT check_total_price
        CHECK (total_price = calculate_total_price(book_id, quantity_sold))
);

