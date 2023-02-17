-- Excercise - Task 2:

DELIMITER //
	CREATE PROCEDURE UpdateBooking(IN BID INT, IN BDate Date)
		BEGIN
			UPDATE Bookings SET Date = BDate WHERE BookingID = BID;
			SELECT CONCAT('Booking ', BID ,' updated') AS Confirmation;
		END //
DELIMITER ;

CALL UpdateBooking(9,'2022-10-30');
