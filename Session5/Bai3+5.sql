-- Tạo bảng 
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- Thêm dữ liệu mẫu
INSERT INTO orders (order_id, customer_id, total_amount, order_date, status)
VALUES
(1, 1, 3500000, '2025-12-01', 'completed'),
(2, 2, 7200000, '2025-12-05', 'pending'),
(3, 3, 12000000, '2025-12-10', 'completed'),
(4, 4, 2500000, '2025-12-12', 'cancelled'),
(5, 5, 8900000, '2025-12-15', 'completed'),
(6, 6, 4500000, '2025-12-18', 'completed'),
(7, 7, 15000000, '2025-12-20', 'pending'),
(8, 8, 6500000, '2025-12-22', 'completed'),
(9, 2, 3000000, '2025-12-25', 'completed'),
(10, 3, 9500000, '2025-12-28', 'completed');

-- 1 Lấy danh sách đơn hàng đã hoàn thành
SELECT * 
FROM orders
WHERE status = 'completed';

-- 2 Lấy các đơn hàng có tổng tiền > 5.000.000
SELECT * 
FROM orders
WHERE total_amount > 5000000;

-- 3 Hiển thị 5 đơn hàng mới nhất
SELECT * 
FROM orders
ORDER BY order_date DESC
LIMIT 5;

-- 4 Hiển thị các đơn hàng đã hoàn thành, sắp xếp theo tổng tiền giảm dần
SELECT * 
FROM orders
WHERE status = 'completed'
ORDER BY total_amount desc;

-- Ý bài 5.1 hiển thị 5 đơn hàng mới nhất
SELECT * 
FROM orders
WHERE status <> 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 0;

-- Ý bài 5.2 hiển thị 5 đơn hàng tiếp theo
SELECT * 
FROM orders
WHERE status <> 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 5;

-- Ý bài 5.3 hiển thị 5 đơn hàng tiếp theo
SELECT * 
FROM orders
WHERE status <> 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 10;
