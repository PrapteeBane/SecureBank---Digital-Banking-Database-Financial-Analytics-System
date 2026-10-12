select * from customers;
USE banking;
select FIRSTNAME,LASTNAME,CUSTID FROM CUSTOMERS;
select * from customers where DOB
between "1998-04-12" AND "2005-01-01";

select * from customers
where FIRSTNAME like "%a";



select count(*) from accounts;
select * from loans;
select count(*) from loans
where InterestRate>8;
select max(loanAmount)from loans;
select * from customers 
where CUSTID  IS NULL; 

select * from accounts;
SELECT * FROM accounts
WHERE AccountType = 'Savings';

SELECT max(Balance) from accounts;

select * from accounts
where Balance between 50000 and 100000;

select distinct AccountType from accounts;
select * from accounts
order by Balance desc
limit 4 offset 2;

select *from accounts;
-- "as" is used to give name
select AccountType,count(AccID) as count
from accounts 
group by AccountType
order by count desc
limit 1 offset 1;

select * from customers
order by FIRSTNAME
limit 5;

select AccID,AccountType,Balance,
case 
when Balance< 25000 then "Low Balance" 
when Balance< 50000 then "Med Balance"
else "High Balance"
end as cat
from accounts; 
