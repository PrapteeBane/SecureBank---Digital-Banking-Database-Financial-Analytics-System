select * from loans;
select day(StartDate) from loans;
select abs(datediff(StartDate,Enddate)) from loans;
select timestampdiff(month,StartDate,Enddate) from loans;

select * from customers;
select FIRSTNAME,DOB,
if(year(DOB)<=1995,
"ADULT","YOUNG") AS CAT
FROM CUSTOMERS; 
