use labs;
select * from Customers

delete from Customers

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, phone, date_of_birth)
VALUES
(101,'Rahul','Sharma','rahul@gmail.com','9876543210','1998-04-15');

insert into accounts(acc_id,acc_type,acc_balance,CustomerID,branch_id) values
(201,'Savings',25000,101,null);

insert into Customers(CustomerID,FirstName,LastName,Email,Phone) values
(1,"siddarth",'sherikar','siddarthsherikar@gmail.com','9123467890'),
(2,"Aarav","sharma","aarav.sharma@gmail.com",9876543210),
(3,"diya","patel","diya.patel@gmail.com",9123456789),
(4,"mahesh","yadav","mahesh.yadav@gmail.com",8745693210);

INSERT INTO accounts (acc_id, acc_type, acc_balance, CustomerID, branch_id)
VALUES
(1001, 'Savings', 50000.00, 1, 101),
(1002, 'Current', 75000.00, 2, 102),
(1003, 'Savings', 30000.00, 3, 103),
(1004, 'Current', 90000.00, 4, 104);

INSERT INTO branches (branch_id, branch_name, branch_address, branch_phone)
VALUES
(101, 'Hyderabad Main Branch', 'Ameerpet, Hyderabad', '9876543210'),
(102, 'Secunderabad Branch', 'MG Road, Secunderabad', '9876543211'),
(103, 'Bangalore Branch', 'MG Road, Bangalore', '9876543212'),
(104, 'Chennai Branch', 'T. Nagar, Chennai', '9876543213'),
(105, 'Mumbai Branch', 'Andheri East, Mumbai', '9876543214');

INSERT INTO loans (loan_id, loan_amount, intrest_rate, start_date, end_date)
VALUES
(201, 250000.00, 8.50, '2025-01-10', '2030-01-10'),
(202, 150000.00, 9.25, '2025-02-15', '2028-02-15'),
(203, 500000.00, 7.75, '2025-03-20', '2035-03-20'),
(204, 100000.00, 10.00, '2025-04-05', '2027-04-05'),
(205, 350000.00, 8.90, '2025-05-12', '2032-05-12');

INSERT INTO transcations (trans_id, trans_date, amount, trans_type)
VALUES
(1, '2025-01-15', 5000.00, 'Deposit'),
(2, '2025-01-18', 2000.00, 'Withdrawal'),
(3, '2025-02-10', 10000.00, 'Deposit'),
(4, '2025-02-20', 3500.00, 'Withdrawal'),
(5, '2025-03-05', 7000.00, 'Deposit');

update Customers 
set Phone="9999999999"
where CustomerID=101;

select * from Customers;

UPDATE Customers
SET Email='rahul.sharma@gmail.com'
WHERE CustomerID=101;

select*from Customers where CustomerID=101;

update accounts 
set acc_balance=30000
where acc_id=201;

select * from accounts 
where acc_id=201;

delete from transcations
where trans_id = 2;

select * from transcations;

delete from accounts
where acc_id=1002;

select * from accounts;




