
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
desc products;

-- Insert 1 record in the table 

INSERT INTO products (
    product_id,
    product_position,
    promotion,
    product_category,
    seasonal,
    sales_volume,
    brand,
    url,
    sku,
    name,
    description,
    price,
    currency,
    scraped_at,
    terms,
    section
) VALUES (
    185102,
    'Aisle',
    'No',
    'Clothing',
    'No',
    2823,
    'Zara',
    'https://www.zara.com/us/en/basic-puffer-jacket-p06985450.html',
    '272145190-250-2',
    'BASIC PUFFER JACKET',
    'Puffer jacket made of tear-resistant ripstop fabric. High collar and adjustable long sleeves with adhesive straps. Welt pockets at hip. Adjustable hem with side elastics. Front zip closure.',
    19.99,
    'USD',
    '2024-02-19 08:50:05',
    'jackets',
    'MAN'
);


-- insrting more records

INSERT INTO products (
    product_id,
    product_position,
    promotion,
    product_category,
    seasonal,
    sales_volume,
    brand,
    url,
    sku,
    name,
    description,
    price,
    currency,
    scraped_at,
    terms,
    section
) VALUES
(188771, 'Aisle', 'No', 'Clothing', 'No', 654, 'Zara', 'https://www.zara.com/us/en/tuxedo-jacket-p08896675.html', '324052738-800-46', 'TUXEDO JACKET', 'Straight fit blazer. Pointed lapel collar and long sleeves with buttoned cuffs. Welt pockets at hip and interior pocket. Central back vent at hem. Front button closure.', 169, 'USD', '2024-02-19 08:50:06', 'jackets', 'MAN'),

(180176, 'End-cap', 'Yes', 'Clothing', 'Yes', 2220, 'Zara', 'https://www.zara.com/us/en/slim-fit-suit-jacket-p01564520.html', '335342680-800-44', 'SLIM FIT SUIT JACKET', 'Slim fit jacket. Notched lapel collar. Long sleeves with buttoned cuffs. Welt pocket at chest and flap pockets at hip. Interior pocket. Back vents. Front button closure.', 129, 'USD', '2024-02-19 08:50:07', 'jackets', 'MAN'),

(112917, 'Aisle', 'Yes', 'Clothing', 'Yes', 1568, 'Zara', 'https://www.zara.com/us/en/stretch-suit-jacket-p01564300.html', '328303236-420-44', 'STRETCH SUIT JACKET', 'Slim fit jacket made of viscose blend fabric. Notched lapel collar. Long sleeves with buttoned cuffs. Welt pocket at chest and flap pockets at hip. Interior pocket. Back vents. Front button closure.', 129, 'USD', '2024-02-19 08:50:07', 'jackets', 'MAN'),

(192936, 'End-cap', 'No', 'Clothing', 'Yes', 2942, 'Zara', 'https://www.zara.com/us/en/double-faced-jacket-p08281477.html', '312368260-800-2', 'DOUBLE FACED JACKET', 'Jacket made of faux leather faux shearling with fleece interior. Tabbed lapel collar. Long sleeves. Zip pockets at hip. Front zip closure.', 139, 'USD', '2024-02-19 08:50:08', 'jackets', 'MAN'),

(117590, 'End-cap', 'No', 'Clothing', 'No', 2968, 'Zara', 'https://www.zara.com/us/en/contrasting-collar-jacket-p06987331.html', '320298385-807-2', 'CONTRASTING COLLAR JACKET', 'Relaxed fit jacket. Contrasting lapel collar and long sleeves with buttoned cuffs. Front pouch pockets. Interior pocket. Washed effect. Front zip closure.', 79.9, 'USD', '2024-02-19 08:50:09', 'jackets', 'MAN'),

(189118, 'Front of Store', 'Yes', 'Clothing', 'Yes', 952, 'Zara', 'https://www.zara.com/us/en/faux-leather-puffer-jacket-p08281420.html', '278112470-800-2', 'FAUX LEATHER PUFFER JACKET', 'Faux leather puffer jacket. High collar and long sleeves with ribbed interior cuffs. Welt pockets at hip. Interior pocket. Adjustable hem with side elastics. Front zip closure.', 69.99, 'USD', '2024-02-19 08:50:09', 'jackets', 'MAN'),

(182157, 'Aisle', 'No', 'Clothing', 'No', 2421, 'Zara', 'https://www.zara.com/us/en/suit-jacket-in-100-linen-p04307408.html', '322972485-431-46', 'SUIT JACKET IN 100% LINEN', 'Straight fit blazer made of linen. Notched lapel collar and long sleeves with buttoned cuffs. Welt pocket at chest and flap pockets at hip. Interior pocket. Back vents. Front button closure.', 159, 'USD', '2024-02-19 08:50:10', 'jackets', 'MAN'),

(141861, 'Aisle', 'Yes', 'Clothing', 'Yes', 1916, 'Zara', 'https://www.zara.com/us/en/100-wool-suit-jacket-p05955218.html', '313854165-401-46', '100% WOOL SUIT JACKET', 'Jacket made of Italian wool. Pointed lapel collar and long sleeves with buttoned cuffs. Welt pocket at chest and flap pockets at hip. Interior pocket. Back vents. Front button closure.', 169, 'USD', '2024-02-19 08:50:10', 'jackets', 'MAN');

select * from products;

select product_id, product_category from products;
select * from products where product_position = 'Aisle';
select * from products where product_position in ('Aisle', 'Front of Store');
select * from products where sales_volume > 1000;
select * from products where sales_volume < 600;
select * from products where seasonal = 'No' and name like '%OL%';
select * from products where sku like '%12%' and description like '%fit%';
select * from products where sales_volume < 600 or price < 50;
select product_position, sales_volume, name from products where sales_volume < 1000;
select sku, name, price, section from products where price between 20 and 30;





