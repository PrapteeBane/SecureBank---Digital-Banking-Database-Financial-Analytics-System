use banking;
show tables;
alter table customers 
add constraint unique key(phone);
desc accounts;
insert into customers(CUSTID,FIRSTNAME,LASTNAME,EMAIL,PHONE,DOB)
values(103,"DEMO","DEMO","DEMO@gmail.com","000000000000","2000-06-03");
select * from customers;
update customers 
set FIRSTNAME= "Vishwadeep"
where CUSTID=101;
delete from customers
where CUSTID=103;
delete from customers
where CUSTID in (101,102);

DELETE FROM customers
WHERE CUSTID BETWEEN 1 AND 30;

INSERT INTO customers 
(CUSTID, FIRSTNAME, LASTNAME, EMAIL, PHONE, DOB) 
VALUES 
(1001, 'Aarav', 'Sharma', 'aarav.sharma@gmail.com', '9876543210', '1998-04-12'), 
(1002, 'Priya', 'Patil', 'priya.patil@gmail.com', '9823456712', '2000-07-25'), 
(1003, 'Rohan', 'Deshmukh', 'rohan.deshmukh@gmail.com', '9765432189', '1997-11-08'), 
(1004, 'Sneha', 'Joshi', 'sneha.joshi@gmail.com', '9898765432', '1999-02-17'), 
(1005, 'Aditya', 'Kulkarni', 'aditya.kulkarni@gmail.com', '9812345678', '1996-09-30'), 
(1006, 'Neha', 'Patil', 'neha.patil@gmail.com', '9988776655', '2001-05-14'), 
(1007, 'Rahul', 'Mehta', 'rahul.mehta@gmail.com', '9871234560', '1995-12-22'), 
(1008, 'Pooja', 'Shinde', 'pooja.shinde@gmail.com', '9822113344', '1998-06-19'), 
(1009, 'Kunal', 'Pawar', 'kunal.pawar@gmail.com', '9766123456', '1997-03-11'), 
(1010, 'Ananya', 'Iyer', 'ananya.iyer@gmail.com', '9898123456', '2002-10-05'), 
(1011, 'Vivek', 'Rao', 'vivek.rao@gmail.com', '9819987654', '1994-08-27'), 
(1012, 'Snehal', 'Bhosale', 'snehal.bhosale@gmail.com', '9977554433', '1999-01-16'), 
(1013, 'Akash', 'Jadhav', 'akash.jadhav@gmail.com', '9867543210', '1996-05-29'), 
(1014, 'Riya', 'Gupta', 'riya.gupta@gmail.com', '9845123678', '2000-11-13'), 
(1015, 'Siddharth', 'Nair', 'siddharth.nair@gmail.com', '9789012345', '1995-07-07'), 
(1016, 'Kavya', 'Reddy', 'kavya.reddy@gmail.com', '9900123456', '2001-09-21'), 
(1017, 'Manish', 'Verma', 'manish.verma@gmail.com', '9834567120', '1993-04-18'), 
(1018, 'Ishita', 'Singh', 'ishita.singh@gmail.com', '9876501234', '2002-12-03'), 
(1019, 'Nikhil', 'More', 'nikhil.more@gmail.com', '9823451098', '1998-01-28'), 
(1020, 'Tanvi', 'Chavan', 'tanvi.chavan@gmail.com', '9765431098', '2000-06-15'), 
(1021, 'Saurabh', 'Kadam', 'saurabh.kadam@gmail.com', '9898981234', '1996-10-24'), 
(1022, 'Meera', 'Desai', 'meera.desai@gmail.com', '9811223344', '1999-03-09'), 
(1023, 'Varun', 'Malhotra', 'varun.malhotra@gmail.com', '9977886655', '1994-12-17'), 
(1024, 'Simran', 'Kaur', 'simran.kaur@gmail.com', '9856123478', '2001-08-02'), 
(1025, 'Omkar', 'Sawant', 'omkar.sawant@gmail.com', '9734567890', '1997-02-26'), 
(1026, 'Ayesha', 'Khan', 'ayesha.khan@gmail.com', '9887654321', '1998-09-14'), 
(1027, 'Harsh', 'Mishra', 'harsh.mishra@gmail.com', '9801234567', '1995-05-06'), 
(1028, 'Nandini', 'Gawande', 'nandini.gawande@gmail.com', '9922334455', '2000-01-19'), 
(1029, 'Yash', 'Thakur', 'yash.thakur@gmail.com', '9866123457', '1999-11-27'), 
(1030, 'Komal', 'Agrawal', 'komal.agrawal@gmail.com', '9798765432', '2002-07-12');

desc branches;
INSERT INTO branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(101, 'Kalyan West Branch', 'Murbad Road, Kalyan West, Maharashtra', '0251-2314501'),
(102, 'Dombivli East Branch', 'Manpada Road, Dombivli East, Maharashtra', '0251-2456702'),
(103, 'Thane West Branch', 'Gokhale Road, Thane West, Maharashtra', '022-25384503'),
(104, 'Mulund Branch', 'LBS Marg, Mulund West, Mumbai, Maharashtra', '022-25678904'),
(105, 'Ghatkopar Branch', 'MG Road, Ghatkopar East, Mumbai, Maharashtra', '022-25123405'),
(106, 'Vashi Branch', 'Sector 17, Vashi, Navi Mumbai, Maharashtra', '022-27894506'),
(107, 'Nerul Branch', 'Palm Beach Road, Nerul, Navi Mumbai, Maharashtra', '022-27785607'),
(108, 'Panvel Branch', 'Old Panvel Road, Panvel, Maharashtra', '022-27456808'),
(109, 'Andheri Branch', 'SV Road, Andheri West, Mumbai, Maharashtra', '022-26789009'),
(110, 'Borivali Branch', 'Link Road, Borivali West, Mumbai, Maharashtra', '022-28945610');
SELECT * FROM branches; 

desc accounts;
select * FROM ACCOUNTS;
INSERT INTO accounts
(AccID, Accounttype, Balance, CUSTID, BranchId)
VALUES
(5001, 'Savings', 45000, 1001, 101),
(5002, 'Current', 125000, 1002, 102),
(5003, 'Savings', 78000, 1003, 103),
(5004, 'Salary', 62000, 1004, 104),
(5005, 'Savings', 35000, 1005, 105),
(5006, 'Current', 210000, 1006, 106),
(5007, 'Savings', 56000, 1007, 107),
(5008, 'Salary', 85000, 1008, 108),
(5009, 'Savings', 42000, 1009, 109),
(5010, 'Current', 175000, 1010, 110),
(5011, 'Savings', 68000, 1011, 101),
(5012, 'Salary', 92000, 1012, 102),
(5013, 'Savings', 51000, 1013, 103),
(5014, 'Current', 145000, 1014, 104),
(5015, 'Savings', 73000, 1015, 105),
(5016, 'Salary', 58000, 1016, 106),
(5017, 'Savings', 39000, 1017, 107),
(5018, 'Current', 185000, 1018, 108),
(5019, 'Savings', 47000, 1019, 109),
(5020, 'Salary', 99000, 1020, 110),
(5021, 'Savings', 63000, 1021, 101),
(5022, 'Current', 230000, 1022, 102),
(5023, 'Savings', 54000, 1023, 103),
(5024, 'Salary', 76000, 1024, 104),
(5025, 'Savings', 31000, 1025, 105),
(5026, 'Current', 160000, 1026, 106),
(5027, 'Savings', 88000, 1027, 107),
(5028, 'Salary', 67000, 1028, 108),
(5029, 'Savings', 49000, 1029, 109),
(5030, 'Current', 195000, 1030, 110);

INSERT INTO loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate, CUSTID)
VALUES
(7001, 250000.00, 8.50, '2024-01-15', '2029-01-15', 1001),
(7002, 500000.00, 9.25, '2023-06-20', '2028-06-20', 1002),
(7003, 150000.00, 8.75, '2024-03-10', '2027-03-10', 1003),
(7004, 750000.00, 9.50, '2022-11-05', '2030-11-05', 1004),
(7005, 300000.00, 8.25, '2024-05-18', '2029-05-18', 1005),
(7006, 1000000.00, 9.75, '2023-02-12', '2033-02-12', 1006),
(7007, 200000.00, 8.60, '2024-07-25', '2028-07-25', 1007),
(7008, 450000.00, 9.10, '2023-09-15', '2028-09-15', 1008),
(7009, 175000.00, 8.40, '2024-02-28', '2027-02-28', 1009),
(7010, 600000.00, 9.35, '2022-12-10', '2030-12-10', 1010),
(7011, 350000.00, 8.90, '2024-04-05', '2029-04-05', 1011),
(7012, 800000.00, 9.60, '2023-08-22', '2030-08-22', 1012),
(7013, 225000.00, 8.55, '2024-06-14', '2028-06-14', 1013),
(7014, 550000.00, 9.20, '2023-04-18', '2029-04-18', 1014),
(7015, 275000.00, 8.30, '2024-08-01', '2029-08-01', 1015),
(7016, 900000.00, 9.80, '2022-10-25', '2032-10-25', 1016),
(7017, 180000.00, 8.45, '2024-09-12', '2027-09-12', 1017),
(7018, 400000.00, 9.00, '2023-11-30', '2028-11-30', 1018),
(7019, 325000.00, 8.65, '2024-01-22', '2029-01-22', 1019),
(7020, 700000.00, 9.40, '2023-05-15', '2030-05-15', 1020),
(7021, 240000.00, 8.35, '2024-10-05', '2028-10-05', 1021),
(7022, 850000.00, 9.70, '2022-09-18', '2032-09-18', 1022),
(7023, 190000.00, 8.55, '2024-03-25', '2027-03-25', 1023),
(7024, 475000.00, 9.15, '2023-07-10', '2028-07-10', 1024),
(7025, 280000.00, 8.40, '2024-11-08', '2029-11-08', 1025),
(7026, 650000.00, 9.45, '2023-01-20', '2030-01-20', 1026),
(7027, 210000.00, 8.70, '2024-05-30', '2028-05-30', 1027),
(7028, 520000.00, 9.05, '2023-10-12', '2029-10-12', 1028),
(7029, 375000.00, 8.80, '2024-02-15', '2029-02-15', 1029),
(7030, 950000.00, 9.65, '2022-08-05', '2032-08-05', 1030);
select * FROM LOANS;

desc TRANSACTIONS;
INSERT INTO transactions
(TransactionID, TransactionDate, Amount, TransactionType, AccID)
VALUES
(9001, '2025-01-05', 15000.00, 'Deposit', 5001),
(9002, '2025-01-08', 5000.00, 'Withdrawal', 5002),
(9003, '2025-01-12', 25000.00, 'Deposit', 5003),
(9004, '2025-01-15', 7500.00, 'Transfer', 5004),
(9005, '2025-01-20', 12000.00, 'Deposit', 5005),
(9006, '2025-01-25', 8500.00, 'Withdrawal', 5006),
(9007, '2025-02-02', 30000.00, 'Deposit', 5007),
(9008, '2025-02-06', 4500.00, 'Withdrawal', 5008),
(9009, '2025-02-10', 18000.00, 'Transfer', 5009),
(9010, '2025-02-15', 22000.00, 'Deposit', 5010),
(9011, '2025-02-20', 6500.00, 'Withdrawal', 5011),
(9012, '2025-02-25', 35000.00, 'Deposit', 5012),
(9013, '2025-03-03', 9000.00, 'Transfer', 5013),
(9014, '2025-03-07', 14000.00, 'Deposit', 5014),
(9015, '2025-03-12', 5500.00, 'Withdrawal', 5015),
(9016, '2025-03-18', 42000.00, 'Deposit', 5016),
(9017, '2025-03-22', 8000.00, 'Transfer', 5017),
(9018, '2025-03-28', 11000.00, 'Withdrawal', 5018),
(9019, '2025-04-02', 27000.00, 'Deposit', 5019),
(9020, '2025-04-08', 9500.00, 'Withdrawal', 5020),
(9021, '2025-04-15', 32000.00, 'Deposit', 5021),
(9022, '2025-04-20', 12500.00, 'Transfer', 5022),
(9023, '2025-04-25', 7000.00, 'Withdrawal', 5023),
(9024, '2025-05-03', 28000.00, 'Deposit', 5024),
(9025, '2025-05-10', 6000.00, 'Withdrawal', 5025),
(9026, '2025-05-16', 36000.00, 'Deposit', 5026),
(9027, '2025-05-22', 10500.00, 'Transfer', 5027),
(9028, '2025-06-01', 16000.00, 'Deposit', 5028),
(9029, '2025-06-08', 7500.00, 'Withdrawal', 5029),
(9030, '2025-06-15', 45000.00, 'Deposit', 5030);
select * from transactions;

