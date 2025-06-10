CREATE TABLE lich_su_xuat_nhap (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pallet_id INT NOT NULL,
    loai_giao_dich ENUM('Nhập', 'Xuất') NOT NULL,
    so_luong INT NOT NULL,
    don_xuat_id INT NULL,
    nguoi_thuc_hien VARCHAR(50),
    ngay_thuc_hien DATETIME DEFAULT CURRENT_TIMESTAMP,
    ghi_chu TEXT,
    FOREIGN KEY (pallet_id) REFERENCES pallets(id),
    FOREIGN KEY (don_xuat_id) REFERENCES don_xuat(id)
);