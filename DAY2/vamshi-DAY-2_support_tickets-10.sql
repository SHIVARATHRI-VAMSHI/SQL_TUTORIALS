USE cdg_hyd_jfs_058;

CREATE TABLE support_tickets (
    ticket_id INT NOT NULL AUTO_INCREMENT,
    ticket_number VARCHAR(20) NOT NULL,
    requester_name VARCHAR(120) NOT NULL,
    requester_email VARCHAR(200) NOT NULL,
    subject VARCHAR(120) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(20) NOT NULL,
    priority VARCHAR(20) NOT NULL DEFAULT 'MEDIUM',
    ticket_status VARCHAR(20) NOT NULL DEFAULT 'OPEN',
    assigned_agent VARCHAR(120),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP,
    last_updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT `pk_support_tickets_ticket_id` PRIMARY KEY (ticket_id),
    CONSTRAINT `uq_ticket_number` UNIQUE (ticket_number),
    CONSTRAINT `chk_category` CHECK (category IN ('BILLING', 'TECHNICAL', 'ACCOUNT', 'GENERAL')),
    CONSTRAINT `chk_priority` CHECK (priority IN ('LOW', 'MEDIUM', 'HIGH', 'CRITICAL')),
    CONSTRAINT `chk_ticket_status` CHECK (ticket_status IN ('OPEN', 'IN_PROGRESS', 'RESOLVED', 'CLOSED')),
    CONSTRAINT `chk_resolved_time` CHECK (resolved_at IS NULL OR resolved_at >= created_at)
);

SELECT *
FROM
    support_tickets;

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, assigned_agent)
VALUES
('TKT001', 'Sai Tharun', 'sai@example.com', 'Payment Issue', 'Payment was deducted but order was not confirmed.', 'BILLING', 'Ravi');

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent)
VALUES
('TKT002', 'Rahul Kumar', 'rahul@example.com', 'Login Problem', 'Unable to login to the account.', 'ACCOUNT', 'HIGH', 'IN_PROGRESS', 'Kiran');

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category)
VALUES
('TKT003', 'Priya Sharma', 'priya@example.com', 'Website Error', 'Website is showing an error message.', 'TECHNICAL');

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT004', 'Arjun Reddy', 'arjun@example.com', 'Account Update', 'Request to update account details.', 'ACCOUNT', 'MEDIUM', 'RESOLVED', 'Suresh', '2026-09-23 18:30:00');

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status)
VALUES
('TKT005', 'Anjali Rao', 'anjali@example.com', 'General Query', 'Customer needs information about the service.', 'GENERAL', 'LOW', 'OPEN');

SELECT *
FROM
    support_tickets;

INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, resolved_at)
VALUES
('TKT006', 'Vijay Kumar', 'vijay@example.com', 'Technical Issue', 'Testing invalid resolution time.', 'TECHNICAL', 'HIGH', 'RESOLVED', '2026-01-01 10:00:00');