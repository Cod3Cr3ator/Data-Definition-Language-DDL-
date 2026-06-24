-- ALTER: To modify an existing structure (like adding a column).

-- Function under ALTER command:
	-- 1. ADD COLUMN: it adds new column
	-- 2. ALTER/ MODIFY COLUMN: changes data type
	-- 3. DROP COLUMN: permanently deletes the column and all data stored within it
	-- 4. RENAME COLUMN: changes the name of column without altering data 

ALTER TABLE users 
ADD COLUMN membership_type VARCHAR(20) DEFAULT 'Free';

ALTER TABLE users
MODIFY COLUMN email VARCHAR(80);

ALTER TABLE users
DROP COLUMN membership_type;

ALTER TABLE users
RENAME COLUMN signup_date TO sign_up_date;