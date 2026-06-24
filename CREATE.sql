-- CREATE: is used to build a new database object (like a table)

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    signup_date DATE DEFAULT (CURRENT_DATE)
);

-- Constraints & Relationships
-- Tables need to talk to each other. DDL is used to create these rules, known as Constraints.

CREATE TABLE playlists (
		playlist_id INT PRIMARY KEY,
        playlist_name VARCHAR(100) NOT NULL,
        creator_id INT,
        FOREIGN KEY (creator_id) REFERENCES users(user_id)
);