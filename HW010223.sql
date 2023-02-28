SELECT t2.OrderID, t1.CustomerName, t3.ShipperName FROM customers t1 
left join orders t2 on t1.CustomerID=t2.customerID
left join shippers t3 on t3.shipperID = t2.shipperID
where t1.Country = "USA"