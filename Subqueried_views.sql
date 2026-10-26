use banking;
select * from customers;
alter table customers
add column AGE int;
UPDATE CUSTOMERS 
SET AGE =timestampdiff(year,dob,current_date());
SET sql_safe_updates =0; 		-- to off safe update
SET sql_safe_updates =1;        -- to on safe update

SELECT * FROM CUSTOMERS;
select * FROM CUSTOMERS
WHERE AGE > (SELECT avg(AGE)FROM CUSTOMERS);


select * FROM CUSTOMERS
WHERE AGE 
ORDER BY AGE DESC
limit 1 offset 1;  -- offset 1 to skip 1st

select MAX(AGE) FROM CUSTOMERS
WHERE AGE<(SELECT max(AGE)FROM CUSTOMERS);


SELECT CUSTID, FIRSTNAME FROM CUSTOMERS
WHERE CUSTID IN(SELECT CUSTID FROM ACCOUNTS WHERE BranchID =101);

-- Practice 
SELECT *FROM transactions;
select TransactionType, count(*) from transactions
group by TransactionType;

SELECT *FROM branches;
SELECT *FROM accounts;
select BranchId, sum(balance) from accounts
group by BranchId;

/*select b BranchName , a Balance,sum(a.balance) as blc
from  branches b join  accounts a
on b.BranchId = a.BranchID;*/     --   solve later

