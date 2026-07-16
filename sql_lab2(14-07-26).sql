#creating the database
    
create database labs;
use labs;

#ceating the tables in the database 
    
CREATE TABLE Customers
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

create table accounts(
acc_id int,
acc_type varchar(100),
acc_balance decimal(10,2));

create table transcations(
trans_id int,
trans_date date,
amount decimal(10,2),
trans_type varchar(100));

create table branches(
branch_id int,
branch_name varchar(100),
branch_address varchar(200),
branch_phone varchar(20));

create table accountbranch(
assignment_date date);

create table loans(
loan_id int,
loan_amount decimal(10,2),
intrest_rate decimal(5,2),
start_date date,
end_date date);

##adding onr more column to customers table by using the alter and add command
    
alter table customers 
add date_of_birth date;

##changing the datatype size 

alter table customers 
modify  phone varchar(20);

#checking the condtion by using the constarint keyword

alter table accounts
add constraint chk_min_balance
check (acc_balance>=1000);

#droping the table acccountbranch using the drop command
    
drop table accountbranch;

#inserting the values into customer table 
    
insert into Customers(CustomerID,FirstName,LastName,Email,Phone) values
(1,"siddarth",'sherikar','siddarthsherikar@gmail.com','9123467890'),
(2,"Aarav","sharma","aarav.sharma@gmail.com",9876543210),
(3,"diya","patel","diya.patel@gmail.com",9123456789);

#adding the primary key
alter table Customers
add primary key(CustomerID);

alter table accounts
add CustomerID int ;

# making the foreign key relation customers to accounts(one to many)
    
alter table accounts
add constraint fk_accounts_customer
foreign key(CustomerID) references Customers(CustomerID);

alter table Customers
modify FirstName varchar(100) not null;

alter table Customers
add constraint uq_email unique (Email);

alter table branches
add primary key(branch_id);

alter table accounts 
add branch_id int;

# adding the foreign key relation branch to accounts(one to many)

alter table accounts
add constraint fk_accounts_branch
foreign key(branch_id) references branches(branch_id);

alter table accounts 
add primary key(acc_id);

alter table transcations
add acc_id int;

# adding the foreign key relation accounts to tarnscations (one to many)
    
alter table transcations
add constraint fk_transction_account
foreign key(acc_id) references accounts(acc_id);

alter table loans
add CustomerID int;

#  adding the foreign key relation customers to loan (one to many)
alter table loans
add constraint fk_loans_customers
foreign key(CustomerID) references Customers(CustomerID);

