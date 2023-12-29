CREATE FUNCTION calculate_total_price(bookid BIGINT, quantity_sold INTEGER)
RETURNS NUMERIC AS $$
DECLARE
book_price NUMERIC;
total_price NUMERIC;
BEGIN
SELECT price INTO book_price FROM books WHERE book_id = bookid;
total_price := book_price * quantity_sold;
RETURN total_price;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION update_quantity_in_stock()
RETURNS TRIGGER AS $$
BEGIN
UPDATE books
SET quantity_in_stock = quantity_in_stock - NEW.quantity_sold
WHERE book_id = NEW.book_id;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION set_total_price()
RETURNS TRIGGER AS $$
BEGIN
    NEW.total_price := calculate_total_price(NEW.book_id, NEW.quantity_sold);
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

