-- Task 3

DELIMITER //
CREATE PROCEDURE CancelOrder(IN ID INT)
	BEGIN
		DELETE FROM LittleLemonDB.Orders 
        WHERE OrderID = ID;
		SELECT CONCAT('Order ', ID,' cancelled') as Confirmation;
	END //
DELIMITER ;