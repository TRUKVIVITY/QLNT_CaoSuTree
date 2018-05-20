USE QLNT_CAOSU
GO
INSERT INTO dbo.Account
        ( UserName ,
          DisplayName ,
          PassWord ,
          Type
        )
VALUES  ( N'Rumi' , -- UserName - nvarchar(100)
          N'Rumi' , -- DisplayName - nvarchar(100)
          N'1' , -- PassWord - nvarchar(1000)
          1  -- Type - int
        )
INSERT INTO dbo.Account
        ( UserName ,
          DisplayName ,
          PassWord ,
          Type
        )
VALUES  ( N'staff' , -- UserName - nvarchar(100)
          N'staff' , -- DisplayName - nvarchar(100)
          N'1' , -- PassWord - nvarchar(1000)
          0  -- Type - int
        )
GO

CREATE PROC USP_GetAccountByUserName
@userName nvarchar(100)
AS 
BEGIN
	SELECT * FROM dbo.Account WHERE UserName = @userName
END
GO

EXEC dbo.USP_GetAccountByUserName @userName = N'Rumi' -- nvarchar(100)
GO
--Kiểm tra User và Pass
SELECT * FROM Account WHERE UserName = N'Rumi' AND PassWord = N'1'
GO
--Nên dùng Proc để tránh lỗi SQL-injection 
CREATE PROC USP_Login
	@userName nvarchar(100), @passWord nvarchar(100)
AS
BEGIN
	SELECT * FROM Account WHERE UserName = @userName AND PassWord = @passWord
END
GO
--Thêm loại cây
INSERT INTO dbo.LoaiCay(ten)
VALUES(N'Cao su')
GO
--thêm Phân khu
INSERT INTO dbo.PhanKhu(ten, dienTich, soLuongCay, idLoaiCay, ghiChu)
VALUES(N'Khu 001', 1, 750, 1, N'Diện tích tính bằng Hecta')
GO
INSERT INTO dbo.PhanKhu(ten, dienTich, soLuongCay, idLoaiCay, ghiChu)
VALUES(N'Khu 002', 2, 750, 1, N'Diện tích tính bằng Hecta')
GO
--Thêm công nhân
INSERT INTO dbo.CongNhan(ho, ten, birth, gender, idPhanKhu)
VALUES(N'Vũ Thanh', N'Xuân', 5/19/2000, 1, 1)
GO
INSERT INTO dbo.CongNhan(ho, ten, birth, gender, idPhanKhu)
VALUES(N'Lan Thanh', N'Lũ', 6/20/1999, 1, 1)
GO
INSERT INTO dbo.CongNhan(ho, ten, birth, gender, idPhanKhu)
VALUES(N'Thiên nhiên', N'Xích', 3/20/1997, 0, 2)
GO
--thêm chăm sóc
INSERT INTO dbo.ChacSoc(ten, khoiLuong, tieuTon, tieuTonluong, idPhanKhu, ngay,ghiChu )
VALUES(N'Thuốc Đặc trị tầng lá', 5, 5000000, 2000000, 1, 3/1/2018, N'Bệnh bạc lá')
GO
--thêm sản lượng
INSERT INTO dbo.SanLuong(idPhanKhu, ngay, sanLuong, idNhanVien)
VALUES(1, 11/29/2017, 600.5, 2)
GO
--
CREATE PROC USP_LoadPhanKhuList
AS
SELECT * FROM dbo.PhanKhu
GO
EXEC USP_LoadPhanKhuList
GO
--thê và sửa liên kết giữa bảng công nhân(xóa liên kết với phân khu và column id phân khu)
-- và sản lượng thêm các liên kết và column ở dưới
ALTER TABLE dbo.SanLuong ADD idNhanVien INT NOT NULL DEFAULT -1
ALTER TABLE dbo.SanLuong ADD FOREIGN KEY(idNhanVien) REFERENCES dbo.CongNhan(id)

GO
SELECT * FROM dbo.SanLuong

GO
CREATE PROC USP_UpdateAccount
@userName NVARCHAR(100), @displayName NVARCHAR(100), @password NVARCHAR(100), @newPassword NVARCHAR(100)
AS
BEGIN
	DECLARE @isRightPass INT = 0
	
	SELECT @isRightPass = COUNT(*) FROM dbo.Account WHERE USERName = @userName AND PassWord = @password
	
	IF (@isRightPass = 1)
	BEGIN
		IF (@newPassword = NULL OR @newPassword = '')
		BEGIN
			UPDATE dbo.Account SET DisplayName = @displayName WHERE UserName = @userName
		END		
		ELSE
			UPDATE dbo.Account SET DisplayName = @displayName, PassWord = @newPassword WHERE UserName = @userName
	end
END
GO


