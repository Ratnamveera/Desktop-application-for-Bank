# 💰 Bank Management System (Tkinter + MySQL)
"Smart Move for Banking." 🏦
A modern Bank Management System built with Python (Tkinter GUI) and MySQL, offering complete banking operations for users and powerful reporting tools for admins.
A GUI-based Bank Management System built with Tkinter and MySQL to manage:
• User accounts
• Transactions (deposit, withdraw, transfer)
• Admin-level reporting
• Data export and backup

#🚀 Features
👤 User Features
•	✅ Secure Login
•	💳 Account Creation
•	💰 Deposit / Withdraw Funds
•	🔁 Transfer Money Between Accounts
•	📄 View Transaction History
•	📊 Real-Time Balance Display

👮 Admin Features
•	🔐 Secure Admin Login
•	📋 View Total User Accounts
•	🧾 Generate Daily / Monthly / Yearly Reports
•	📊 Monitor All Transactions
•	📈 View All Account Summaries
•	📤 Export Transactions as CSV
•	💾 Backup & Restore MySQL Database

🛠️ Technology Stack
• Frontend: Python Tkinter
• Backend: MySQL Database
• Image Handling: PIL (Pillow)
• Data Export: CSV
• Backup: SQL Dump

🧱 Database Schema
User: 
CREATE TABLE Users (
    account_no VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100),
    address TEXT,
    kyc VARCHAR(20),
    mobile VARCHAR(15),
    email VARCHAR(100),
    account_type VARCHAR(20),
    password VARCHAR(50),
    balance DECIMAL(10, 2) DEFAULT 0
);
Admin: 
CREATE TABLE Admin (
    username VARCHAR(50),
    password VARCHAR(50)
);
Transactions: 
CREATE TABLE Transactions (
    txn_id INT AUTO_INCREMENT PRIMARY KEY,
    account_no VARCHAR(10),
    txn_type VARCHAR(20),
    amount DECIMAL(10,2),
    to_account VARCHAR(10),
    txn_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

📦 Project Structure
BankManagementSystem/
├── bms.py                 # Main Application File
├── bank_management_system.sql  # Database Backup File
├── exports/               # Exported CSV Reports
├── backups/               # Backup SQL Files
├── screens/               # Screenshots
├── images/                # Bank Images
└── README.md

🔧 Setup Instructions

🔽 Prerequisites
• Python 3.x
• MySQL Server
• MySQL Connector for Python (pip install mysql-connector-python)
• Pillow (pip install pillow)
