CREATE DATABASE IF NOT EXISTS yunistore CHARACTER SET utf8mb4;
USE yunistore;
CREATE TABLE products(
  pid INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  price DECIMAL(10,2),
  stock INT, img VARCHAR(255)
);
INSERT INTO products(name,price,stock,img) VALUES
('芋泥蛋糕',250.00,10,'cake1.jpg'),
('地瓜球',40.00,100,'cake2.jpg');
