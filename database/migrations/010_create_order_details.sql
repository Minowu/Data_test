CREATE TABLE chi_tiet_don (
    id INT PRIMARY KEY AUTO_INCREMENT,
    don_xuat_id INT NOT NULL,
    san_pham_id INT NOT NULL, -- Nên dùng san_pham_id thay vì VARCHAR
    so_luong_can INT NOT NULL,
    pallet_assignments JSON,
    da_xuat_xong BOOLEAN DEFAULT FALSE,
    ghi_chu TEXT,
    FOREIGN KEY (don_xuat_id) REFERENCES don_xuat(id),
    FOREIGN KEY (san_pham_id) REFERENCES san_pham(id)
);

CREATE TABLE thu_tu_xuat_hang (
    id INT PRIMARY KEY AUTO_INCREMENT,
    don_xuat_id INT NOT NULL,
    san_pham_id INT NOT NULL, -- Nên dùng san_pham_id thay vì VARCHAR
    thu_tu_mac_dinh INT NOT NULL,
    thu_tu_tuy_chinh INT NULL,
    thoi_gian_uoc_tinh INT DEFAULT 0, -- phút
    khoang_cach_uoc_tinh INT DEFAULT 0, -- mét
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (don_xuat_id) REFERENCES don_xuat(id),
    FOREIGN KEY (san_pham_id) REFERENCES san_pham(id)
);