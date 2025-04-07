-- Create Database
CREATE DATABASE agrovet_ai;
USE agrovet_ai;

-- Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'staff', 'customer') DEFAULT 'customer',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Products Table (Inventory)
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category ENUM('Fertilizers', 'Pesticides', 'Seeds') NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sales Table (Tracking Sales)
CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    payment_method ENUM('MPesa', 'Cash', 'Card') NOT NULL,
    sold_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- AI Pest Diagnosis Table
CREATE TABLE ai_pest_diagnosis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    pest_name VARCHAR(100) NOT NULL,
    recommended_pesticide VARCHAR(100) NOT NULL,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- AI Soil Analysis Table
CREATE TABLE ai_soil_analysis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    location VARCHAR(100) NOT NULL,
    pH_level DECIMAL(4,2),
    nutrients JSON, -- Storing soil nutrient levels as JSON
    recommended_crop VARCHAR(100) NOT NULL,
    tested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- Insert Sample Data
INSERT INTO users (name, email, password, role) 
VALUES ('Admin User', 'admin@agrovet.com', 'hashed_password', 'admin');

INSERT INTO products (name, category, price, quantity, description) 
VALUES ('Organic Fertilizer', 'Fertilizers', 25.99, 100, 'Improves soil fertility');

INSERT INTO products (name, category, price, quantity, description) 
VALUES ('Insecticide Spray', 'Pesticides', 15.49, 50, 'Kills harmful insects');

INSERT INTO sales (user_id, product_id, quantity, total_price, payment_method) 
VALUES (1, 1, 2, 51.98, 'MPesa');

