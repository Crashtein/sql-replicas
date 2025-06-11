CREATE TABLE users (
  id INT,
  name VARCHAR(100),
  email VARCHAR(100),
  age INT,
  registered_at DATE
);

LOAD DATA INFILE '/docker-entrypoint-initdb.d/sample_data.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
