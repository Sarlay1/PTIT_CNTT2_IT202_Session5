-- Tạo bảng 
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    status ENUM('active', 'inactive') NOT NULL
);

-- Thêm dữ liệu mẫu
INSERT INTO customers (customer_id, full_name, email, city, status)
VALUES
(1, 'Nguyễn Văn A', 'vana@example.com', 'TP.HCM', 'active'),
(2, 'Trần Thị B', 'thib@example.com', 'Hà Nội', 'active'),
(3, 'Lê Văn C', 'vanc@example.com', 'Đà Nẵng', 'inactive'),
(4, 'Phạm Thị D', 'thid@example.com', 'TP.HCM', 'inactive'),
(5, 'Hoàng Văn E', 'vane@example.com', 'Hà Nội', 'active'),
(6, 'Đỗ Thị F', 'thif@example.com', 'Hải Phòng', 'active'),
(7, 'Ngô Văn G', 'vang@example.com', 'Hà Nội', 'inactive'),
(8, 'Bùi Thị H', 'thih@example.com', 'TP.HCM', 'active');

-- 1 Lấy danh sách tất cả khách hàng
SELECT * 
FROM customers;

-- 2 Lấy khách hàng ở TP.HCM
SELECT * 
FROM customers
WHERE city = 'TP.HCM';

-- 3 Lấy khách hàng đang hoạt động ở Hà Nội
SELECT * 
FROM customers
WHERE status = 'active' 
  AND city = 'Hà Nội';

-- 4 Sắp xếp danh sách khách hàng theo tên 
SELECT * 
FROM customers
ORDER BY full_name asc;