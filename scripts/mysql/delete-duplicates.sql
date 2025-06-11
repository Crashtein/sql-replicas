SELECT "SHOW WHOLE DATA" AS msg;
SELECT * FROM users;

SELECT "SHOW DUPLICATES" AS msg;
SELECT *, COUNT(*) as count
FROM users
GROUP BY id,name,email,age,registered_at
HAVING COUNT(*) > 1
ORDER BY count DESC;

SELECT "REMOVE DUPLICATES" AS msg;
CREATE TABLE users_clean (
  id INT,
  name VARCHAR(100),
  email VARCHAR(100),
  age INT,
  registered_at DATE
) AS
SELECT *
FROM users
GROUP BY id,name,email,age,registered_at;

RENAME TABLE users TO users_backup, users_clean TO users;

SELECT "SHOW WHOLE DATA WITHOUT DUPLICATES" AS msg;
SELECT * FROM users;

SELECT "VERIFICATION" AS msg;
SELECT *, COUNT(*) as count
FROM users
GROUP BY id,name,email,age,registered_at
HAVING COUNT(*) > 1;
