CREATE TRIGGER update_quantity_in_stock_trigger
    AFTER INSERT ON sales
    FOR EACH ROW
    EXECUTE FUNCTION update_quantity_in_stock();

CREATE TRIGGER set_total_price_trigger
    BEFORE INSERT ON sales
    FOR EACH ROW
    EXECUTE FUNCTION set_total_price();