CREATE DEFINER=`root`@`localhost` FUNCTION `get_category_revenue`(category_id INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(order_amount) INTO total
    FROM orders
    WHERE product_category = category_id;
    RETURN total;
END;

