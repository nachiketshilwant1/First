CREATE DEFINER=`root`@`localhost` PROCEDURE `update_product_price`(IN product_id INT, IN new_price DECIMAL(10, 2))
    COMMENT 'Updates product prices'
BEGIN
    UPDATE products
    SET price = new_price
    WHERE product_id = product_id;
END;

