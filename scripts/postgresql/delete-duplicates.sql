SELECT 'SHOW WHOLE DATA' AS msg;
SELECT * FROM users;

SELECT 'SHOW DUPLICATES' AS msg;
SELECT *,COUNT(*) AS count
FROM users
GROUP BY id,name,email,age,registered_at
HAVING COUNT(*) > 1
ORDER BY count DESC;

SELECT 'REMOVE DUPLICATES' AS msg;
DELETE FROM public.users a
USING public.users b
WHERE a.name = b.name
  AND a.email = b.email
  AND a.age = b.age
  AND a.registered_at = b.registered_at
  AND a.ctid > b.ctid;	-- remove duplicates, leave one
--  AND a.ctid != b.ctid;		-- remove duplcates - all

SELECT 'SHOW WHOLE DATA WITHOUT DUPLICATES' AS msg;
SELECT * FROM users;

SELECT 'SHOW DUPLICATES' AS msg;
SELECT *,COUNT(*) AS count
FROM users
GROUP BY id,name,email,age,registered_at
HAVING COUNT(*) > 1
ORDER BY count DESC;