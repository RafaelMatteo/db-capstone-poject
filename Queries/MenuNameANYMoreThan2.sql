SELECT MenuName
FROM Menu
WHERE MenuName = ANY (
    SELECT MenuName
	FROM Orders AS O
	INNER JOIN Menus AS M
	ON O.MenuID = M.MenuID
	WHERE Quantity > 2
);