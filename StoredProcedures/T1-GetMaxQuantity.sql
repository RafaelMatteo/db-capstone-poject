-- Task 1

CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity)
FROM Orders;



CALL GetMaxQuantity();
