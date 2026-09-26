USE cdg_hyd_jfs_058;

CREATE TABLE bank_accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    account_number CHAR(12) NOT NULL UNIQUE,
    account_holder_name VARCHAR(120) NOT NULL,
    account_type VARCHAR(20) NOT NULL,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    currency_code CHAR(3) NOT NULL DEFAULT 'INR',
    branch_name VARCHAR(100) NOT NULL,
    opened_date DATE NOT NULL,
    interest_rate DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    overdraft_limit DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    account_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT chk_account_type CHECK (account_type IN ('SAVINGS', 'CURRENT', 'FIXED_DEPOSIT')),
    CONSTRAINT chk_balance CHECK (balance >= 0.00),
    CONSTRAINT chk_interest_rate CHECK (interest_rate >= 0.00 AND interest_rate <= 100.00),
    CONSTRAINT chk_overdraft_limit CHECK (overdraft_limit >= 0.00),
    CONSTRAINT chk_account_status CHECK (account_status IN ('ACTIVE', 'FROZEN', 'DORMANT', 'CLOSED'))
);

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES
('123456789012', 'Vamshi ', 'SAVINGS', 25000.00, 'INR', 'KPHB Branch', '2026-01-15', 4.50, 0.00, 'ACTIVE'),
('234567890123', 'Rakesh Kumar', 'CURRENT', 50000.00, 'INR', 'JNTU Branch', '2026-02-10', 2.00, 10000.00, 'ACTIVE'),
('345678901234', 'pranav', 'FIXED_DEPOSIT', 100000.00, 'INR', 'Madhapur Branch', '2026-03-20', 7.25, 0.00, 'ACTIVE');

SELECT * FROM bank_accounts;

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate, overdraft_limit)
VALUES
('456789012345', 'Nithish', 'SAVINGS', 0.00, 'Hitech Branch', '2026-04-01', 0.00, 0.00);

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance, branch_name, opened_date)
VALUES
('567890123456', 'Negative Balance', 'SAVINGS', -100.00, 'Hitech Branch', '2026-04-01');

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance, branch_name, opened_date, overdraft_limit)
VALUES
('678901234567', 'Negative Overdraft', 'CURRENT', 1000.00, 'Hitech Branch', '2026-04-01', -500.00);

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES
('789012345678', 'Invalid Interest', 'SAVINGS', 1000.00, 'Hitech Branch', '2026-04-01', 101.00);

INSERT INTO bank_accounts
(account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES
('890123456789', 'Invalid Interest', 'SAVINGS', 1000.00, 'Hitech Branch', '2026-04-01', -1.00);

UPDATE bank_accounts
SET balance = 30000.00
WHERE account_number = '123456789012';

SELECT * FROM bank_accounts;