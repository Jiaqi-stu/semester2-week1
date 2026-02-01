-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 social.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

--1.SELECT content, deleted FROM posts WHERE deleted = '1';
--2.SELECT username FROM users LIKE 'a%';
--3.SELECT username, content FROM users JOIN posts ON users.id = posts.user_id WHERE content LIKE '%small%' ;
--4.SELECT username, content, posts.created_on FROM users JOIN posts ON users.id = posts.user_id WHERE deleted = '0' ORDER BY posts.created_on;
--5.SELECT username, COUNT(content) FROM users JOIN posts ON users.id = posts.user_id GROUP BY username;
SELECT username, COUNT(content) FROM users JOIN posts ON users.id = posts.user_id WHERE COUNT(content) > 3 GROUP BY username;













