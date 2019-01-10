SELECT TOP(50) CompanyName,ContactName,ContactTitle,Address,City,Phone FROM Customers;

SELECT COUNT (CustomerID ) as NoFaxOrRegion FROM Customers WHERE Fax IS NULL AND Region IS NULL;

SELECT TOP(2) Employees.FirstName,Employees.LastName,Employees.Title,Employees.BirthDate FROM Employees ORDER BY Employees.BirthDate ASC;

SELECT * FROM Customers WHERE Customers.Address LIKE '[0-9]%' AND Customers.CompanyName LIKE '__a%' ORDER BY Customers.Country ASC;

SELECT TOP(1) * FROM Orders,[Order Details] WHERE Orders.OrderID = [Order Details].OrderID ORDER BY [Order Details].Quantity DESC;

SELECT COUNT (Customers.CustomerID) as 'Made no orders count' FROM Customers WHERE NOT EXISTS(SELECT * FROM Orders WHERE Orders.CustomerID = Customers.CustomerID);