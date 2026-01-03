-- Tạo bảng 
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    status ENUM('active', 'inactive') NOT NULL
);

-- Thêm dữ liệu mẫu
INSERT INTO products (product_id, product_name, price, stock, status)
VALUES
(1, 'Laptop Dell Inspiron', 15000000, 10, 'active'),
(2, 'Điện thoại iPhone 14', 25000000, 5, 'active'),
(3, 'Tai nghe Bluetooth Sony', 1200000, 50, 'active'),
(4, 'Bàn phím cơ Logitech', 950000, 20, 'active'),
(5, 'Chuột không dây Logitech', 450000, 30, 'inactive'),
(6, 'Máy giặt LG Inverter', 7800000, 8, 'active'),
(7, 'Tủ lạnh Samsung', 12000000, 4, 'inactive'),
(8, 'Ghế gaming Razer', 3500000, 15, 'active');

-- 1 Lấy toàn bộ sản phẩm đang có trong hệ thống
SELECT * 
FROM products;

-- 2 Lấy danh sách sản phẩm đang bán
SELECT * 
FROM products
WHERE status = 'active';

-- 3 Lấy các sản phẩm có giá lớn hơn 1000000
SELECT * 
FROM products
WHERE price > 1000000;

-- 4 Hiển thị danh sách sản phẩm đang bán sắp xếp theo giá tăng dần
SELECT * 
FROM products
WHERE status = 'active'
ORDER BY price asc;