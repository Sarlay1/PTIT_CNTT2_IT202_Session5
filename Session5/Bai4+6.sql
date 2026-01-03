-- Xóa bảng 
DROP TABLE IF EXISTS products;

-- Tạo bảng products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    sold_quantity INT NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- Thêm dữ liệu mẫu
INSERT INTO products (product_id, product_name, price, stock, sold_quantity, status)
VALUES
(1, 'Laptop Dell Inspiron', 15000000, 10, 120, 'active'),
(2, 'Điện thoại iPhone 14', 25000000, 5, 200, 'active'),
(3, 'Tai nghe Bluetooth Sony', 1200000, 50, 500, 'active'),
(4, 'Bàn phím cơ Logitech', 950000, 20, 350, 'active'),
(5, 'Chuột không dây Logitech', 450000, 30, 150, 'inactive'),
(6, 'Máy giặt LG Inverter', 7800000, 8, 90, 'active'),
(7, 'Tủ lạnh Samsung', 12000000, 4, 60, 'inactive'),
(8, 'Ghế gaming Razer', 3500000, 15, 220, 'active'),
(9, 'Loa Bluetooth JBL', 1800000, 40, 410, 'active'),
(10, 'Máy ảnh Canon EOS', 15500000, 6, 75, 'active'),
(11, 'Smartwatch Garmin', 5200000, 12, 130, 'active'),
(12, 'Ổ cứng SSD Samsung', 1900000, 25, 300, 'active'),
(13, 'Màn hình LG 24 inch', 3200000, 18, 95, 'active'),
(14, 'Máy hút bụi Xiaomi', 2100000, 22, 180, 'active'),
(15, 'Bộ phát WiFi TP-Link', 850000, 35, 270, 'active');


-- 1 Lấy 10 sản phẩm bán nhiều nhất
SELECT * 
FROM products
ORDER BY sold_quantity DESC
LIMIT 10;

-- 2 Lấy 5 sản phẩm bán chạy tiếp theo (bỏ qua 10 sản phẩm đầu)
SELECT * 
FROM products
ORDER BY sold_quantity DESC
LIMIT 5 OFFSET 10;

-- 3 Hiển thị danh sách sản phẩm giá < 2.000.000, sắp xếp theo số lượng bán giảm dần
SELECT * 
FROM products
WHERE price < 2000000
ORDER BY sold_quantity DESC;


-- Bài 6.1
SELECT *
FROM products
WHERE status = 'active'
  AND price BETWEEN 1000000 AND 3000000
ORDER BY price ASC
LIMIT 10 OFFSET 0;

-- Bài 6.2
SELECT *
FROM products
WHERE status = 'active'
  AND price BETWEEN 1000000 AND 3000000
ORDER BY price ASC
LIMIT 10 OFFSET 10;
