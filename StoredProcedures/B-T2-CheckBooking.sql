-- Table Booking System - Task 2:

DELIMITER //
CREATE PROCEDURE CheckBooking(IN BDate Date, IN ID INT)
	BEGIN
		SELECT
			CASE
				WHEN EXISTS (
					SELECT Date, TableNumber FROM LittleLemonDB.Bookings
					WHERE Date = BDate and TableNumber = ID)
					THEN CONCAT('Table ',ID,' is already booked')
					ELSE CONCAT('Table ',ID,' is available')
			END AS 'Booking status';
	END //
DELIMITER ;

