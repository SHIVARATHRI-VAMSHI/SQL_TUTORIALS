USE cdg_hyd_jfs_058;

CREATE TABLE products(
    product_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    sku VARCHAR(20) NOT NULL,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(80) NOT NULL ,
    brand VARCHAR(80),
    unit_price DECIMAL(12 , 2) NOT NULL CHECK (unit_price > 0),
    quantity_in_stock INT UNSIGNED NOT NULL DEFAULT 0 ,
    reorder_level INT UNSIGNED NOT NULL DEFAULT 5,
    manufacture_date DATE,
    expiry_date DATE,
    CHECK (
    expiry_date IS NULL
    OR manufacture_date IS NULL
    OR expiry_date >= manufacture_date
),
    product_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `uq_sku` UNIQUE (sku)

);

SELECT * FROM products;

drop table products;

insert into products(sku,product_name,category,brand,unit_price, quantity_in_stock,reorder_level,manufacture_date,expiry_date,product_status)
values( 'SKU001', 'Wireless Mouse', 'Electronics', 'Logitech', 799.00, 25, 5,'2026-01-10', '2029-01-10', 'ACTIVE');

INSERT INTO products(sku, product_name, category, brand,unit_price, quantity_in_stock, reorder_level,manufacture_date, expiry_date, product_status)
VALUES('SKU002', 'Office Chair', 'Furniture', 'Green Soul',5999.00, 10, 2,'2026-02-15', NULL, 'ACTIVE');

INSERT INTO products(sku, product_name, category, brand,unit_price, quantity_in_stock, reorder_level,manufacture_date, expiry_date, product_status)
VALUES('SKU003', 'Keyboard', 'Electronics', 'HP',500.00, 20, 5,'2026-03-01', '2029-03-01', 'ACTIVE');
