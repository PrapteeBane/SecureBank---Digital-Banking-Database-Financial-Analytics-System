USE banking;
 select * from accounts;
 select * from branches;
 select sum(balance) from accounts
 WHERE AccountType = 'Savings';
 select AccountType ,sum(Balance), count(AccID)
 from accounts
 group by AccountType;
 
 select AccID, AccountType, Balance,
 round(AVG(Balance) over(partition by AccountType)) as AVERAGE
 from ACCOUNTS;
 
 select AccID, AccountType, Balance,rank()
 over(partition by AccountType order by Balance desc) as RNK
 from ACCOUNTS;
 -- over is the windows function,partition create partition
 SELECT * FROM transactions;
 select TransactionID, TransactionDate,TransactionType,Amount,sum(Amount)
 over(order by TransactionDate) as running_total
 from transactions; -- runnig total means add previous value
 
  select TransactionID, TransactionType,round(Amount),row_number()
  over(partition by TransactionType) as row_no
  from transactions;
 
 
 
  
  