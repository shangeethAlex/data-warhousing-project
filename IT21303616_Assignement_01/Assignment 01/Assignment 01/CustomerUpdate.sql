

update dbo.Customer 
set Address = '35 King George', city = 'Deeside',  PostalCode = 'CH5 1DY'
where CustomerID = 52

update dbo.Customer 
set Address = '90 Wadhurst Rd', city = 'London', Country = 'United Kingdom', PostalCode = 'SW8 4JS', Phone = '+44 020 5645 5755'
where CustomerID = 41
