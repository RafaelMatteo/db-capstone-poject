-- Table Booking System - Task 3

DELIMITER //
	CREATE PROCEDURE AddValidBooking(IN BDate Date, IN ID INT)
		BEGIN
			DECLARE BookRecord INT;
			START TRANSACTION;
				SELECT BookingID INTO BookRecord FROM Bookings 
				WHERE BookingDate = BDate and TableNumber = ID LIMIT 1;
				INSERT INTO Bookings
					(BookingID, Date, TableNumber, CustomerID)
				VALUES 
					(6, BDate, ID, 9);
					IF record > 0 THEN
						ROLLBACK;
						SELECT CONCAT('Table ', ID,' is already booked - booking cancelled') AS 'Booking Status';
					ELSEif BookRecord IS NULL THEN
						COMMIT;
						SELECT CONCAT('Table ',ID,' booked successfully') AS 'Booking Status';
					END IF;
		END //
DELIMITER ;