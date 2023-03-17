-- List of all undelivered Orders
SELECT * FROM Orders WHERE OrderStatus != 'Delivered';

-- List of 5 most recent orders
SELECT * FROM Orders ORDER BY OrderDate DESC LIMIT 5;

-- Top 5 active users (Users having most number of orders)
SELECT U.UserID, CONCAT(U.FirstName, ' ', U.LastName) AS UserName, COUNT(O.UserID) AS OrderCount FROM Orders O INNER JOIN Users U ON O.UserID = U.UserID GROUP BY O.UserID ORDER BY OrderCount DESC LIMIT 5;

-- Inactive users (Users who hasn’t done any order)
SELECT U.UserID, CONCAT(U.FirstName, ' ', U.LastName) AS UserName, "User doesn't order anything" AS Orders FROM Users U LEFT JOIN Orders O ON U.UserID = O.UserID WHERE O.UserID IS NULL;

-- Top 5 Most purchased products
SELECT P.ProductID, P.ProductName, P.ProductDescription, SUM(O.ProductQuantity) AS ProductOrdered FROM Order_details O INNER JOIN Products P ON O.ProductID=P.ProductID GROUP BY O.ProductID ORDER BY ProductOrdered DESC LIMIT 5;

-- Most expensive and most chepest orders.
SELECT O.OrderID, O.UserID, O.OrderStatus, O.OrderexpectedDeliveryDate, Total FROM Orders O INNER JOIN 
((SELECT OD.OrderID, SUM(OD.ProductQuantity*P.ProductPrice) as Total FROM Order_details OD  INNER JOIN Products P on OD.ProductID=P.ProductID GROUP BY OD.OrderID ORDER BY Total DESC LIMIT 1)
UNION
(SELECT OD.OrderID, SUM(OD.ProductQuantity*P.ProductPrice) as Total FROM Order_details OD  INNER JOIN Products P on OD.ProductID=P.ProductID GROUP BY OD.OrderID ORDER BY Total ASC LIMIT 1)) 
AS TEMP ON O.OrderID=TEMP.OrderID;

(SELECT O.OrderID, O.UserID, O.OrderStatus, O.OrderexpectedDeliveryDate, SUM(OD.ProductQuantity*P.ProductPrice) AS Total FROM Orders O INNER JOIN Order_details OD ON O.OrderID=OD.OrderID INNER JOIN Products P ON OD.ProductID = P.ProductID GROUP BY OD.OrderID ORDER BY Total DESC LIMIT 1)
UNION
(SELECT O.OrderID, O.UserID, O.OrderStatus, O.OrderexpectedDeliveryDate, SUM(OD.ProductQuantity*P.ProductPrice) AS Total FROM Orders O INNER JOIN Order_details OD ON O.OrderID=OD.OrderID INNER JOIN Products P ON OD.ProductID = P.ProductID GROUP BY OD.OrderID ORDER BY Total ASC LIMIT 1);
