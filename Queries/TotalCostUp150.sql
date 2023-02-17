SELECT
	C.CustomerID, C.FullName, O.OrderID, O.TotalCost, M.Courses, M.Starters
FROM
	Customers AS C
	JOIN
		Orders AS O 
	JOIN
		Menus AS M 
	ON
		C.CustomerID = O.CustomerID
		AND O.MenuItemsID = M.MenuItemsID
WHERE TotalCost > 150;



