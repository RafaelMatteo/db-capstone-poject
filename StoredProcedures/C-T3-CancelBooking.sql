-- Excercise - Task 3

DELIMITER //
	CREATE PROCEDURE CancelBooking(IN BID INT)
		BEGIN
			DELETE FROM Bookings 
            WHERE BookingID = BID;
			SELECT CONCAT('Booking ', BID ,' canceled');
		END //
DELIMITER ;


CALL CancelBooking(9);