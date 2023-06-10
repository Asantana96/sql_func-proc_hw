CREATE OR REPLACE FUNCTION calculate_total_price(quantity INT, price DECIMAL)
RETURNS DECIMAL AS $$
BEGIN
    RETURN quantity * price;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE update_customer_status(customer_id INT)
AS $$
BEGIN
    UPDATE customers
    SET status = 'Active'
    WHERE id = customer_id;
END;
$$ LANGUAGE plpgsql;