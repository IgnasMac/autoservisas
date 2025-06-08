
CREATE DATABASE IF NOT EXISTS autoservisas;
USE autoservisas;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(100),
  password VARCHAR(255)
);

CREATE TABLE services (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100),
  description TEXT
);

CREATE TABLE ratings (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  service_id INT,
  rating INT,
  comment TEXT,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (service_id) REFERENCES services(id)
);
