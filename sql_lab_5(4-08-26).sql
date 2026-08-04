#Display customers whose first name starts with R
select * from Customers
where FirstName like 'R%';

#Find customers whose email contains yahoo

select* from Customers
where Email like '%yahoo%';

#Display customers whose last name starts with P
select * from Customers
where LastName like 'p%';

#Search customers whose phone number ends with 99
select * from customers 
where phone like '%99';

#Display accounts belonging to Salary and Savings account types
select * from accounts
where acc_type = 'Savings';

#Retrieve transactions for Payment and Deposit categories
select * from transcations
where trans_type='Deposit'; 

#Display customer records for CustomerID 103 and 104

select * from Customers
where CustomerID in(3,4);

#Display customers sorted by FirstName

select * from Customers
order by FirstName; 

#3Display accounts sorted by AccountType
select * from accounts
order by acc_type; 

#Display transactions sorted by Amount in descending order
select * from transcations
order by amount desc;

#Display customers sorted by DateOfBirth
select * from Customers
order by date_of_birth;

#Display top 3 transactions with highest amount
select * from transcations
order by amount desc limit 3;

#Retrieve only 4 customer records
select * from transcations
limit 4;

#Skip first 2 account records and display next 3 record
select * from accounts 
limit 3 offset 2;

#Display top 5 latest transactions
select * from transcations
order by trans_date desc limit 5;