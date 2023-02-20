CREATE DATABASE BANK;
USE BANK;

create table CUSTOMER
(
CUSTOMER varchar(20) primary key,
FIRST_NAME varchar(50),
MIDDLE_NAME varchar(50),
LAST_NAME varchar(50),
CITY varchar(30),
CONTACT_NO bigint,
PROFESSION varchar(50),
date_of_birth date
);


create table LOAN_DEATILS
(
BRANCH_ID int,
LOAN_AMT bigint,
CUSTOMER_ID varchar(20) foreign key references CUSTOMER(CUSTOMER)
)

create table BRANCH
(
BRANCH_ID int primary key,
BRANCH_NAME varchar(50),
BRANCH_LOCATION varchar(30)
)



create table ACCOUNT
(
ACC_NUM bigint primary key,
CUSTOMER varchar(20) foreign key references CUSTOMER(CUSTOMER),
BRANCH_ID int foreign key references BRANCH(BRANCH_ID),
OPEN_BAL int,
ACC_OPEN_DATE date,
ACC_TYPE varchar(25),
ACC_STATUS varchar(30)
)



create table TRANSACTIONS_DETAILS
(
TRANSACTION_ID int primary key,
ACC_NUM bigint foreign key references ACCOUNT(ACC_NUM),
DATE_OF_TRANSACTION date,
MEDIUM_OF_TRANSACTION varchar(50),
TRANSACTION_TYPE varchar(50),
TRANSACTION_AMT int
);