create database banking;
use banking;
create table Accounts(
AccountID int primary key,
AccountType varchar(20),
Balance decimal(10.2)
);

create table Transactions (
TransactionID int,
TransactionDate date,
Amount decimal(10,2),
TranactionType varchar(20)
);

create table Branches (
BranchID int,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15)
);

create table AccountBranches(
AssignmentDate date 
);

create table Loans(
LoanID int,
LoanAmount decimal(10,2),
InterestRate decimal(5,2),
StartDate date,
EndDate date
);
show tables;
desc accountbranches;
drop table accountbranches;

desc accounts;
alter table accounts
add primary key(AccountID);

alter table accounts
add column demo int;

alter table accounts
drop column demo;

alter table accounts
modify column Accounttype varchar(30);

alter table accounts
rename column AccountID to AccID;

create table customers(
CUSTID int primary key,
FIRSTNAME varchar(50),
LASTNAME varchar(50),
EMAIL varchar(100),
PHONE varchar(20),
DOB date
);

alter table ACCOUNTS
ADD CUSTID INT;

ALTER table ACCOUNTS 
ADD constraint FK_ACCOUNTS_CUSTOMER
foreign key (CUSTID)
references CUSTOMERS(CUSTID);

alter table accounts
ADD COLUMN BranchID INT;
desc ACCOUNTS;
alter table branches
add primary key(BranchID);

alter table accounts
ADD foreign key (BranchID)
references branches(BranchID);

alter table transactions
add	column AccID int;

alter table transactions
add	foreign key(AccID)
references accounts(AccID);

alter table loans
add column  CUSTID int;

alter table loans
add	foreign key(CUSTID)
references customers(CUSTID);

desc ACCOUNTS;
desc TRANSACTIONS;
desc LOANS;








