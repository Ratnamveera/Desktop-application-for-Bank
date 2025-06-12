Create Database Bank_Management_System;
Use Bank_Management_System;
CREATE TABLE admins (admin_id VARCHAR(20) PRIMARY KEY,password TEXT);
CREATE TABLE IF NOT EXISTS Admin (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50)
);

INSERT IGNORE INTO Admin (username, password) VALUES ('admin', 'admin123');

Select *from admin;
Insert into admins(admin_id,password) Values('Admin1', 'ADMIN123');

CREATE TABLE IF NOT EXISTS Users (
    account_no VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100),
    address TEXT,
    kyc VARCHAR(50),
    mobile VARCHAR(15),
    email VARCHAR(100),
    password VARCHAR(50),
    account_type VARCHAR(20),
    balance DECIMAL(10, 2) DEFAULT 0.00
);
Select *from users;
CREATE TABLE IF NOT EXISTS Transactions (
    txn_id INT AUTO_INCREMENT PRIMARY KEY,
    account_no VARCHAR(20),
    txn_type ENUM('Deposit', 'Withdraw', 'TransferIn', 'TransferOut'),
    amount DECIMAL(10, 2),
    txn_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_no) REFERENCES Users(account_no) ON DELETE CASCADE
);
Select *from Transactions;

INSERT INTO Users (account_no, name, address, kyc, mobile, email, password, account_type, balance)
VALUES ('111111', 'USER1', 'USER Address1', 'KYC123', '9999999999', 'USER1@bank.com', 'USER123', 'Savings', 10000.00), 
('111112', 'USER2', 'USER Address2', 'KYC234', '9999999990', 'USER2@bank.com', 'USER123', 'Savings', 15000.00),
('111122', 'USER3', 'USER Address3', 'KYC345', '9999999900', 'USER3@bank.com', 'USER123', 'Savings', 20000.00),
('111222', 'USER4', 'USER Address4', 'KYC456', '9999999000', 'USER4@bank.com', 'USER123', 'Savings', 25000.00),
('112222', 'USER5', 'USER Address5', 'KYC567', '9999990000', 'USER5@bank.com', 'USER123', 'Savings', 30000.00),
('122222', 'USER6', 'USER Address6', 'KYC678', '9999900000', 'USER6@bank.com', 'USER123', 'Savings', 35000.00),
('122223', 'USER7', 'USER Address7', 'KYC789', '9999000000', 'USER7@bank.com', 'USER123', 'Savings', 40000.00),
('122233', 'USER8', 'USER Address8', 'KYC890', '9990000000', 'USER8@bank.com', 'USER123', 'Savings', 45000.00),
('122333', 'USER9', 'USER Address9', 'KYC901', '9900000000', 'USER9@bank.com', 'USER123', 'Savings', 50000.00),
('123333', 'USER10', 'USER Address10', 'KYC012', '9000000000', 'USER10@bank.com', 'USER123', 'Savings', 55000.00);


    
    

