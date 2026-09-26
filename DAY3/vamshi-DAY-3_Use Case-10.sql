USE cdg_hyd_jfs_058;

SELECT * FROM support_tickets;

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES ('TKT-26001', 'Asha Rao', 'asha.rao@example.test', 'Unable to reset password', 'Reset link is not arriving', 'ACCOUNT', 'HIGH', 'OPEN', NULL, NULL);

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES ('TKT-26002', 'Dev Stores', 'dev.stores@example.test', 'Incorrect invoice total', 'The latest invoice contains an extra charge', 'BILLING', 'MEDIUM', 'IN_PROGRESS', 'Neha', NULL),
('TKT-26003', 'Meera Nair', 'meera.nair@example.test', 'Application crashes', 'Application closes while uploading a file', 'TECHNICAL', 'CRITICAL', 'OPEN', 'Vikram', NULL);

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES ('TKT-26004', 'Omar Ali', 'omar.ali@example.test', 'Change registered email', 'Request to replace the account email', 'ACCOUNT', 'LOW', 'OPEN', NULL, NULL),
('TKT-26005', 'Test User', 'test.user@example.test', 'Sample resolved request', 'Temporary ticket used for delete practice', 'GENERAL', 'MEDIUM', 'RESOLVED', 'QA Agent', CURRENT_TIMESTAMP);

-- category SHIPPING
INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES ('TKT-26006', 'Arjun', 'arjun@example.com', 'Login Issue', 'Cannot log into my dashboard', 'SHIPPING', 'MEDIUM', 'CLOSED', NULL, NULL);

-- Priority URGENT
INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES ('TKT-26007', 'Tanishq', 'tanishq@example.com', 'Billing Error', 'Charged twice', 'BILLING', 'URGENT', 'MEDIUM',  NULL, '2026-09-24');

-- status waiting
INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES ('TKT-26008', 'Arjun', 'arjun@example.com', 'Login Issue', 'Cannot log into my dashboard', 'TECHNICAL', 'CRITICAL', 'WAITING', NULL, NULL);

-- duplicate ticket number
INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES ('TKT-26001', 'Tanishq', 'tanishq@example.com', 'Billing Error', 'Charged twice', 'BILLING', 'URGENT', 'MEDIUM',  NULL, NULL);

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, created_at, resolved_at)
VALUES ('TKT-26009', 'Tanishq', 'tanishq@example.com', 'Billing Error', 'Charged twice', 'BILLING', 'URGENT', 'MEDIUM',  NULL, '2026-09-24 12:00:00', '2026-09-24 11:00:00');


UPDATE support_tickets SET assigned_agent = 'Kavya', ticket_status = 'IN_PROGRESS' WHERE ticket_number = 'TKT-26001';

UPDATE support_tickets SET ticket_status = 'RESOLVED', resolved_at = CURRENT_TIMESTAMP WHERE ticket_number = 'TKT-26003';

UPDATE support_tickets SET priority = 'MEDIUM' WHERE ticket_status = 'OPEN' AND category = 'ACCOUNT';

UPDATE support_tickets SET assigned_agent = 'Rahul' WHERE ticket_number = 'TKT-26002';

UPDATE support_tickets SET resolved_at = '2026-09-20' WHERE ticket_number = 'TKT-26001';


SELECT * FROM support_tickets WHERE ticket_number = 'TKT-26005';
DELETE FROM support_tickets WHERE ticket_number = 'TKT-26005';

INSERT INTO support_tickets (ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES ('TKT-TEMP-01', 'BalRaj', 'balraj@example.com', 'Billing Error', 'Charged twice', 'BILLING', 'URGENT', 'MEDIUM',  NULL, NULL);
SELECT * FROM support_tickets WHERE ticket_number = 'TKT-TEMP-01';
DELETE FROM support_tickets WHERE ticket_number = 'TKT-TEMP-01';

SELECT * FROM support_tickets;