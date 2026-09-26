USE cdg_hyd_jfs_058;

SELECT * FROM bank_accounts;

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES ('100000000001', 'Aditi Sharma', 'SAVINGS', 85000.00, 'INR', 'MG Road Branch', '2024-01-15', 3.50, 0.00, 'ACTIVE');

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES ('100000000002', 'Raj Enterprises', 'CURRENT', 45000.00, 'INR', 'Commercial Street Branch', '2023-07-01', 0.00, 100000.00, 'ACTIVE'),
('100000000003', 'Priya Nair', 'FIXED_DEPOSIT', 30000.00, 'INR', 'Kochi Main Branch', '2025-04-10', 7.25, 0.00, 'ACTIVE');

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES ('100000000004', 'Omar Khan', 'SAVINGS', 12500.00, 'INR', 'Banjara Hills Branch', '2022-10-05', 3.25, 0.00, 'FROZEN'),
('100000000005', 'Training Closed Account', 'CURRENT', 0.00, 'INR', 'Test Branch', '2020-01-01', 0.00, 0.00, 'CLOSED');

-- Negative Balance
INSERT INTO BANK_ACCOUNTS (account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES ('100000000006', 'Sri Ram Logistics', 'SAVINGS', -50.00, 'INR', 'Test Branch', '2020-01-01', 0.00, 0.00, 'CLOSED');

-- Interest rate must be between 0.00 and 100.00
INSERT INTO BANK_ACCOUNTS (account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES ('100000000007', 'Sri Ram Logistics', 'SAVINGS', 50.00, 'INR', 'Test Branch', '2020-01-01', 101.00, 0.00, 'CLOSED');

-- Account type must be SAVINGS, CURRENT, or FIXED_POSIT
INSERT INTO BANK_ACCOUNTS (account_number, account_holder_name, account_type, balance, branch_name, opened_date, account_status)
VALUES ('100000000008', 'Sri Ram Logistics', 'SALARY', 50.00, 'INR', 'Test Branch', '2020-01-01', 23.00, 0.00, 'CLOSED');

UPDATE bank_accounts SET balance = balance+25000.00 WHERE account_number = '100000000001';

UPDATE bank_accounts SET interest_rate = interest_rate + 0.25 where account_type = 'SAVINGS' AND interest_rate+0.25 < 100.00;

UPDATE bank_accounts SET account_status = 'ACTIVE' WHERE account_number = 100000000004 AND account_status = 'FROZEN';

UPDATE bank_accounts SET balance = balance - 2500.00 WHERE account_status = 'ACTIVE' AND balance >= 2500.00;

UPDATE bank_accounts SET branch_name = 'Central Business Branch' WHERE branch_name = 'Commercial Street Branch';

UPDATE bank_accounts SET balance = balance - 12500.00 WHERE account_number = '100000000004';

SELECT * FROM bank_accounts where account_status = 'CLOSED'; 
DELETE FROM bank_accounts WHERE account_status = 'CLOSED';

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES ('999999999999', 'Aditi Sharma', 'SAVINGS', 85000.00, 'INR', 'MG Road Branch', '2024-01-15', 3.50, 0.00, 'ACTIVE');
SELECT * FROM bank_accounts;
DELETE FROM bank_accounts WHERE account_number = '999999999999';