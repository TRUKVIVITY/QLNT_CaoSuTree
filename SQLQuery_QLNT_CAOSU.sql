CREATE DATABASE QLNT_CAOSU
GO
USE QLNT_CAOSU
GO

CREATE TABLE Account
(
	UserName NVARCHAR(100) PRIMARY KEY,	
	DisplayName NVARCHAR(100) NOT NULL DEFAULT N'Rumi',
	PassWord NVARCHAR(1000) NOT NULL DEFAULT 0,
	Type INT NOT NULL  DEFAULT 0 -- 1: admin && 0: staff
)
GO
--Table list:
--Công nhân
--



--Loai Cây

--Phân khu (các khu đất, có tên công nhân và loại cây được trồng)
--Chăm sóc (bao gồm các dịnh vụ chăm sóc: tưới tiêu, phân thuốc)
--Sản Lượng (sản lượng của phân khu theo ngày)





CREATE TABLE LoaiCay
(
	id INT IDENTITY  PRIMARY KEY,
	ten NVARCHAR(100) NOT NULL DEFAULT N'Loại cây này chưa được đặt tên',
)

GO
CREATE TABLE PhanKhu
(
	id INT IDENTITY  PRIMARY KEY,
	ten NVARCHAR(100) NOT NULL DEFAULT N'Chưa nhập tên',
	dienTich int,
	soLuongCay int,
	idLoaiCay INT,
	
	ghiChu NVARCHAR(500)--
	FOREIGN KEY(idLoaiCay) REFERENCES dbo.LoaiCay(id)
	
)
GO
CREATE TABLE CongNhan
(
	id INT IDENTITY  PRIMARY KEY,
	ho NVARCHAR(100) NOT NULL DEFAULT N'Chưa nhập họ',
	ten NVARCHAR(100) NOT NULL DEFAULT N'Chưa nhập tên',
	birth DATETIME NOT NULL,
	gender BIT NOT NULL DEFAULT 0,--1: nam && 0: nữ
	idPhanKhu INT NOT NULL,
	FOREIGN KEY(idPhanKhu) REFERENCES dbo.PhanKhu(id)
	 
)
GO
CREATE TABLE LUONG
(
	id INT IDENTITY  PRIMARY KEY,
	idCongNhan INT NOT NULL,
	ngay DATETIME NOT NULL,
	soTien FLOAT NOT NULL DEFAULT 0
	FOREIGN KEY(idCongNhan) REFERENCES dbo.CongNhan(id)

)
GO
CREATE TABLE SanLuong
(
	id INT IDENTITY  PRIMARY KEY,
	idPhanKhu INT NOT NULL,
	ngay DATETIME NOT NULL,
	sanLuong FLOAT NOT NULL DEFAULT 0,
	FOREIGN KEY(idPhanKhu) REFERENCES dbo.PhanKhu(id)
)
GO
CREATE TABLE ChacSoc
(
	id INT IDENTITY  PRIMARY KEY,
	ten NVARCHAR(100) NOT NULL DEFAULT N'Chưa đặt',
	khoiLuong float NOT NULL,
	ghiChu NVARCHAR(500),
	tieuTonluong float,
	tieuTon float,
	ngay DATETIME,
	idPhanKhu INT NOT NULL
	FOREIGN KEY(idPhanKhu) REFERENCES dbo.PhanKhu(id),
)


