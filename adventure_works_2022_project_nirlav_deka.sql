USE AdventureWorks2022

--Perform the following with help of the above database:
--a. Get all the details from the person table including email ID, phone
--number and phone number type
SELECT PP.FirstName, PP.MiddleName, PP.LastName, 
	   CASE WHEN PA.AddressLine2 IS NULL THEN PA.AddressLine1
            WHEN PA.AddressLine2 IS NOT NULL THEN PA.AddressLine1+','+PA.AddressLine2
       END AS Adress,
       PA.City, PA.PostalCode,PSP.NAME AS StateProvince,
	   PEA.EmailAddress, 
	   PPP.PhoneNumber, 
	   PPN.Name AS PhoneNumberType
FROM Person.Person PP

LEFT JOIN Person.EmailAddress PEA ON PP.BusinessEntityID = PEA.BusinessEntityID
LEFT JOIN Person.PersonPhone PPP ON PPP.BusinessEntityID = PEA.BusinessEntityID
LEFT JOIN Person.PhoneNumberType PPN ON PPN.PhoneNumberTypeID = PPP.PhoneNumberTypeID
LEFT JOIN Person.BusinessEntityAddress PBEA ON PBEA.BusinessEntityID = PP.BusinessEntityID
LEFT JOIN Person.Address PA ON PBEA.AddressID = PA.AddressID
LEFT JOIN Person.StateProvince PSP ON PSP.StateProvinceID = PA.StateProvinceID

ORDER BY PP.FirstName

--b. Get the details of the sales header order made in May 2011
SELECT * FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011 AND MONTH(OrderDate) = 5


--c. Get the details of the sales details order made in the month of May
--2011
SELECT SSOD.SalesOrderID, SSOD.SalesOrderDetailID, SSOD.CarrierTrackingNumber,
	   SSOD.OrderQty, SSOD.ProductID, SSOD.SpecialOfferID, 
	   SSOD.UnitPrice, SSOD.LineTotal
FROM Sales.SalesOrderDetail SSOD
JOIN Sales.SalesOrderHeader SSOH ON SSOD.SalesOrderID = SSOH.SalesOrderID 
WHERE YEAR(SSOH.OrderDate) = 2011 AND MONTH(SSOH.OrderDate) = 5 



--d. Get the total sales made in May 2011
SELECT SUM(TotalDue) FROM Sales.SalesOrderHeader SSOH
WHERE YEAR(SSOH.OrderDate) = 2011 AND MONTH(SSOH.OrderDate) = 5


--e. Get the total sales made in the year 2011 by month order by
--   increasing sales
SELECT SUM(TotalDue) AS TOTAL_SALES, MONTH(OrderDate) AS MONTH 
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011
GROUP BY MONTH(OrderDate)
ORDER BY SUM(TotalDue)


--f. Get the total sales made to the customer with FirstName='Gustavo'
--and LastName = 'Achong'
SELECT PP.FirstName, PP.LastName, SUM(SSOH.TotalDue) AS Total_sales
FROM Sales.SalesOrderHeader SSOH
INNER JOIN Sales.Customer SC ON SSOH.CustomerID = SC.CustomerID
INNER JOIN Person.Person PP ON SC.PersonID = PP.BusinessEntityID

GROUP BY  PP.FirstName, PP.LastName
HAVING FirstName='Gustavo' and LastName = 'Achong'



















































































































































































































































