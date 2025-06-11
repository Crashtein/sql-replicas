CREATE TABLE users (
  id INT,
  name TEXT,
  email TEXT,
  age INT,
  registered_at DATE
);

COPY users(id, name, email, age, registered_at)
FROM '/docker-entrypoint-initdb.d/sample_data.csv'
DELIMITER ','
CSV HEADER;
