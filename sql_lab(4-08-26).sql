use labs;


select * FROM accounts 
where acc_balance >25000;

select * from transcations
where amount between 5000 and 20000;

SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103);

SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

select * from accounts 
where acc_balance < 15000;

select * from transcations
where amount between 1000 and 1500;

SELECT *
FROM Customers
WHERE CustomerID IN (4,5);

select * from customers
order by LastName;

select* from transcations 
order by amount desc limit 5;


select * from transcations
limit 4  offset 3; 

select * from Customers
where Email is null;

select * from accounts
where branch_id is null;

select * from accounts
where acc_balance is not null;

select trans_id,amount,
case
when amount >7000 then "High Transaction"
when amount >=5000 then 'Medium Transaction'
else 'Low Transaction'
end as catagory
from transcations;

select CustomerID,acc_balance, rank() over (order by acc_balance desc) as acc_rank
from accounts;

select acc_id, acc_balance,sum(acc_balance) over(order by acc_id) as running_total
from accounts;

select *,max(amount) over () as maximun
from transcations;