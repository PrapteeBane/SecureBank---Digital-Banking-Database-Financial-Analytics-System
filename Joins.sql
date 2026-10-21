use banking;
show tables;  
desc customers; 
desc accounts;
DESC branches;
DESC loans;
select *from customers;
SELECT c.FIRSTNAME , a.balance          -- JOINS
from customers c inner join accounts a   -- INNER JOINS GIVES COMMON 
ON c.CUSTID= a.CUSTID;

-- NAME , ADD ,BALANCE
select b.BranchName ,b.BranchAddress, a.Balance
from  branches b right join accounts a
on  b.BranchID =a.BranchId;

select b.BranchName ,b.BranchAddress, a.Balance
from  branches b left join accounts a
on  b.BranchID =a.BranchId
;
-- c name ,br name, balance
select c.FIRSTNAME, a.Balance, b.BranchName
from  customers c left join accounts a 
on c.CUSTID= a.CUSTID  
left join branches b
on  b.BranchId= a.BranchID
;
-- c name ,loan
select c.FIRSTNAME, l.LoanAmount ,timestampdiff(year,l.StartDate,l.Enddate) as tm
from  customers c left join loans l
on c.CUSTID=l.CUSTID;

select timestampdiff(month,StartDate,Enddate) from loans;