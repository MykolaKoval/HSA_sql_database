CREATE TABLE IF NOT EXISTS users (
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(10),
    birth_date DATE
);

CREATE TABLE names (
    id INT PRIMARY KEY,
    name VARCHAR(10)
);
