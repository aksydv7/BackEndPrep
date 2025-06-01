
SELECT database();

CREATE database zara;

USE zara;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_position VARCHAR(50),
    promotion ENUM('Yes', 'No'),
    product_category VARCHAR(50),
    seasonal ENUM('Yes', 'No'),
    sales_volume INT,
    brand VARCHAR(50),
    url VARCHAR(255),
    sku VARCHAR(50),
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10,2),
    currency VARCHAR(10),
    scraped_at DATETIME,
    terms VARCHAR(50),
    section VARCHAR(50)
);

select * from products;



