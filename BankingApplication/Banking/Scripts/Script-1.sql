drop table if exists users cascade;
CREATE TABLE users (
id serial PRIMARY KEY,
user_id varchar(100) NOT NULL,
name_ varchar(100) NOT NULL,
address varchar(100) NOT NULL,
phone_number varchar(100) NOT NULL,
user_type varchar(100) NOT NULL,
user_name varchar(100) NOT NULL,
password_ varchar(100) NOT NULL,
createdAt timestamp DEFAULT current_timestamp
);

drop table if exists accounts cascade;
CREATE TABLE Accounts(
id serial PRIMARY KEY,
user_id varchar(100) NOT NULL,
account_number varchar(100) NOT NULL,
name_ varchar(100) NOT NULL,
amount numeric(12,2) NOT NULL,
status varchar(100) NOT NULL,
account_type varchar(100) NOT NULL,
createdAt timestamp DEFAULT current_timestamp
);

drop table if exists transactions cascade;
CREATE TABLE Transactions(
id serial PRIMARY KEY,
transaction_type varchar(100) NOT NULL,
account_number_giving varchar(100),
account_number_recieving varchar(100),
amount numeric(12,3) NOT NULL,
status varchar(100) NOT null,
createdAt timestamp DEFAULT current_timestamp
);

insert into users (user_id ,name_,address,phone_number,user_type,user_name,password_)
values
('001','Daniel Beintema','Somewhere','1212121212','Employee','dbeintema','bank'),
('0002','Vinay','A Place','1111111111','Customer','vinay','java'),
('0003','Bach','Another Place','1234567890','Customer','bach','sql');

insert into accounts (user_id,account_number,name_,amount,status,account_type)
values
('0002','0006','Vinay',3000.00,'Active','Savings'),
('0002','0004','Vinay',00.00,'Pending','Checking'),
('0003','0005','Bach',12000.00,'Active','Checking');

insert into transactions (transaction_type,account_number_giving,account_number_recieving,amount,status)
values
('Withdraw','0005',null,50.50,'Approved'),
('Deposit',null,'0006',1050.50,'Pending'),
('Transfer','0005','0006',12.34,'Pending');

select * from users;
select * from accounts;
select * from transactions;