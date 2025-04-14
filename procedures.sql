
USE littlelemon;

DELIMITER //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(Quantity) AS MaxQuantity FROM Orders;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AddBooking(IN booking_date DATE, IN table_no INT, IN customer_id INT)
BEGIN
    INSERT INTO Bookings (BookingDate, TableNo, CustomerID)
    VALUES (booking_date, table_no, customer_id);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN new_date DATE)
BEGIN
    UPDATE Bookings SET BookingDate = new_date WHERE BookingID = booking_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEGIN
    DELETE FROM Bookings WHERE BookingID = booking_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE ManageBooking()
BEGIN
    SELECT * FROM Bookings ORDER BY BookingDate;
END //
DELIMITER ;
