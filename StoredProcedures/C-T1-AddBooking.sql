-- Excercise Task 1:

DELIMITER //
CREATE PROCEDURE AddBooking (
	IN Book INT, 
    IN BDate Date, 
    IN TableNum INT,
    IN Customer INT
    )
	BEGIN
		INSERT INTO Bookings
			(BookingID, Date, TableNumber, CustomerID)
		VALUES 
			(Book, BDate, TableNum, Customer);
			SELECT 'New booking added' AS Confirmation;
	END //
DELIMITER ;

