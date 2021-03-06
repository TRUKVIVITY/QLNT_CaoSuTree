USE [master]
GO
/****** Object:  Database [QLNT_CAOSU]    Script Date: 5/23/2018 5:30:18 AM ******/
CREATE DATABASE [QLNT_CAOSU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNT_CAOSU', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLNT_CAOSU.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNT_CAOSU_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLNT_CAOSU_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLNT_CAOSU] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNT_CAOSU].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNT_CAOSU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLNT_CAOSU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNT_CAOSU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNT_CAOSU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLNT_CAOSU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNT_CAOSU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNT_CAOSU] SET  MULTI_USER 
GO
ALTER DATABASE [QLNT_CAOSU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNT_CAOSU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNT_CAOSU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNT_CAOSU] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNT_CAOSU] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNT_CAOSU] SET QUERY_STORE = OFF
GO
USE [QLNT_CAOSU]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QLNT_CAOSU]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/23/2018 5:30:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[PassWord] [nvarchar](1000) NOT NULL,
	[Type] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChamSoc]    Script Date: 5/23/2018 5:30:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamSoc](
	[id] [int] NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[idPhanKhu] [int] NOT NULL,
	[KhoiLuong] [float] NOT NULL,
	[Gia] [float] NOT NULL,
	[ngay] [date] NULL,
	[GhiChu] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongNhan]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongNhan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ho] [nvarchar](100) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[birth] [date] NULL,
	[gender] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiCay]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiCay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONG]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCongNhan] [int] NOT NULL,
	[ngay] [date] NULL,
	[soTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanKhu]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanKhu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[dienTich] [int] NULL,
	[soLuongCay] [int] NULL,
	[idLoaiCay] [int] NULL,
	[ghiChu] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanLuong]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanLuong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCongNhan] [int] NOT NULL,
	[idPhanKhu] [int] NOT NULL,
	[ngay] [date] NULL,
	[KhoiLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'Rumi', N'Rumi No11 Trabant', N'1', 1)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'staff', N'staff', N'1', 0)
INSERT [dbo].[ChamSoc] ([id], [ten], [idPhanKhu], [KhoiLuong], [Gia], [ngay], [GhiChu]) VALUES (1, N'Morphine for herb', 3, 500, 50000, CAST(N'2017-09-14' AS Date), N'Keep out for human')
INSERT [dbo].[ChamSoc] ([id], [ten], [idPhanKhu], [KhoiLuong], [Gia], [ngay], [GhiChu]) VALUES (2, N'.500 Winc', 3, 500, 100000, CAST(N'2017-10-23' AS Date), N'Do not touch!')
SET IDENTITY_INSERT [dbo].[CongNhan] ON 

INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (12, N'Vũ Thanh', N'Thanh', CAST(N'1999-01-23' AS Date), 0)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (15, N'Vũ Thanh', N'Thiên', CAST(N'2018-04-29' AS Date), 1)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (16, N'Thanh Vĩ', N'Nhiên', CAST(N'2017-01-11' AS Date), 0)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (17, N'Hà Viễn', N'Nhi', CAST(N'2018-01-16' AS Date), 0)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (18, N'Ali', N'Zuu', CAST(N'2017-05-16' AS Date), 0)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (19, N'Laa', N'Yuu', CAST(N'2017-05-16' AS Date), 0)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (20, N'Vi', N'Vi', CAST(N'2018-12-05' AS Date), 0)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (21, N'Vũ Thanh', N'Than', CAST(N'2018-12-05' AS Date), 1)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (23, N'Vũ Thanh', N'Thanh', CAST(N'2018-12-05' AS Date), 1)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (24, N'Thanh', N'Thanh', CAST(N'2018-05-29' AS Date), 1)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (25, N'Lãnh', N'Thanh', CAST(N'1999-12-12' AS Date), 0)
INSERT [dbo].[CongNhan] ([id], [ho], [ten], [birth], [gender]) VALUES (26, N'Thanh', N'Thanh', CAST(N'0313-02-12' AS Date), 0)
SET IDENTITY_INSERT [dbo].[CongNhan] OFF
SET IDENTITY_INSERT [dbo].[LoaiCay] ON 

INSERT [dbo].[LoaiCay] ([id], [ten]) VALUES (1, N'Cao su')
INSERT [dbo].[LoaiCay] ([id], [ten]) VALUES (2, N'Cannabis indica')
INSERT [dbo].[LoaiCay] ([id], [ten]) VALUES (3, N'Papaver somniferum')
SET IDENTITY_INSERT [dbo].[LoaiCay] OFF
SET IDENTITY_INSERT [dbo].[LUONG] ON 

INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (1, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (2, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (3, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (4, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (5, 12, CAST(N'2017-05-16' AS Date), 123456.3)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (6, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (7, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (8, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (9, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (10, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (11, 15, CAST(N'2017-05-16' AS Date), 1585)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (12, 12, CAST(N'2017-05-16' AS Date), 123456.3)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (13, 17, CAST(N'2017-05-16' AS Date), 1236.333)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (14, 19, CAST(N'2017-05-16' AS Date), 1234)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (15, 12, CAST(N'2017-05-16' AS Date), 123456)
INSERT [dbo].[LUONG] ([id], [idCongNhan], [ngay], [soTien]) VALUES (16, 12, CAST(N'2017-05-16' AS Date), 123456)
SET IDENTITY_INSERT [dbo].[LUONG] OFF
SET IDENTITY_INSERT [dbo].[PhanKhu] ON 

INSERT [dbo].[PhanKhu] ([id], [ten], [dienTich], [soLuongCay], [idLoaiCay], [ghiChu]) VALUES (3, N'Khu 001', 1, 1500, 1, N'Diện tích tính bằng Hecta')
INSERT [dbo].[PhanKhu] ([id], [ten], [dienTich], [soLuongCay], [idLoaiCay], [ghiChu]) VALUES (4, N'Khu 002', 2, 5000, 2, N'Diện tích tính bằng Hecta')
INSERT [dbo].[PhanKhu] ([id], [ten], [dienTich], [soLuongCay], [idLoaiCay], [ghiChu]) VALUES (5, N'Khu 003', 1, 6000, 1, N'Diện tích tính bằng Hecta')
INSERT [dbo].[PhanKhu] ([id], [ten], [dienTich], [soLuongCay], [idLoaiCay], [ghiChu]) VALUES (6, N'Khu 004', 2, 5000, 2, N'Diện tích tính bằng Hecta')
INSERT [dbo].[PhanKhu] ([id], [ten], [dienTich], [soLuongCay], [idLoaiCay], [ghiChu]) VALUES (7, N'Khu 005', 2, 5000, 2, N'Diện tích tính bằng Hecta')
SET IDENTITY_INSERT [dbo].[PhanKhu] OFF
SET IDENTITY_INSERT [dbo].[SanLuong] ON 

INSERT [dbo].[SanLuong] ([id], [idCongNhan], [idPhanKhu], [ngay], [KhoiLuong]) VALUES (15, 17, 4, CAST(N'2018-05-23' AS Date), 9500)
INSERT [dbo].[SanLuong] ([id], [idCongNhan], [idPhanKhu], [ngay], [KhoiLuong]) VALUES (16, 17, 4, CAST(N'2018-05-23' AS Date), 9500)
SET IDENTITY_INSERT [dbo].[SanLuong] OFF
ALTER TABLE [dbo].[Account] ADD  DEFAULT (N'Rumi') FOR [DisplayName]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [PassWord]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[ChamSoc] ADD  DEFAULT ((-1)) FOR [KhoiLuong]
GO
ALTER TABLE [dbo].[ChamSoc] ADD  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[ChamSoc] ADD  DEFAULT (getdate()) FOR [ngay]
GO
ALTER TABLE [dbo].[CongNhan] ADD  DEFAULT (N'Chưa nhập họ') FOR [ho]
GO
ALTER TABLE [dbo].[CongNhan] ADD  DEFAULT (N'Chưa nhập tên') FOR [ten]
GO
ALTER TABLE [dbo].[CongNhan] ADD  DEFAULT ((0)) FOR [gender]
GO
ALTER TABLE [dbo].[LoaiCay] ADD  DEFAULT (N'Loại cây này chưa được đặt tên') FOR [ten]
GO
ALTER TABLE [dbo].[LUONG] ADD  DEFAULT ((0)) FOR [soTien]
GO
ALTER TABLE [dbo].[PhanKhu] ADD  DEFAULT (N'Chưa nhập tên') FOR [ten]
GO
ALTER TABLE [dbo].[SanLuong] ADD  DEFAULT ((-1)) FOR [idCongNhan]
GO
ALTER TABLE [dbo].[SanLuong] ADD  DEFAULT ((-1)) FOR [idPhanKhu]
GO
ALTER TABLE [dbo].[SanLuong] ADD  DEFAULT (getdate()) FOR [ngay]
GO
ALTER TABLE [dbo].[SanLuong] ADD  DEFAULT ((0)) FOR [KhoiLuong]
GO
ALTER TABLE [dbo].[ChamSoc]  WITH CHECK ADD FOREIGN KEY([idPhanKhu])
REFERENCES [dbo].[PhanKhu] ([id])
GO
ALTER TABLE [dbo].[LUONG]  WITH CHECK ADD FOREIGN KEY([idCongNhan])
REFERENCES [dbo].[CongNhan] ([id])
GO
ALTER TABLE [dbo].[PhanKhu]  WITH CHECK ADD FOREIGN KEY([idLoaiCay])
REFERENCES [dbo].[LoaiCay] ([id])
GO
ALTER TABLE [dbo].[SanLuong]  WITH CHECK ADD FOREIGN KEY([idCongNhan])
REFERENCES [dbo].[CongNhan] ([id])
GO
ALTER TABLE [dbo].[SanLuong]  WITH CHECK ADD FOREIGN KEY([idPhanKhu])
REFERENCES [dbo].[PhanKhu] ([id])
GO
ALTER TABLE [dbo].[SanLuong]  WITH NOCHECK ADD  CONSTRAINT [fk_abcde] FOREIGN KEY([idCongNhan])
REFERENCES [dbo].[CongNhan] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SanLuong] CHECK CONSTRAINT [fk_abcde]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_GetAccountByUserName]
@userName nvarchar(100)
AS 
BEGIN
	SELECT * FROM dbo.Account WHERE UserName = @userName
END
GO
/****** Object:  StoredProcedure [dbo].[USP_LoadPhanKhuList]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_LoadPhanKhuList]
AS
SELECT * FROM dbo.PhanKhu
GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_Login]
	@userName nvarchar(100), @passWord nvarchar(100)
AS
BEGIN
	SELECT * FROM Account WHERE UserName = @userName AND PassWord = @passWord
END
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateAccount]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_UpdateAccount]
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
/****** Object:  StoredProcedure [dbo].[USP_XoaCongNhan]    Script Date: 5/23/2018 5:30:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_XoaCongNhan]
@id int
as
begin
DELETE dbo.SanLuong WHERE idCongNhan = @id
--DELETE dbo.CongNhan WHERE id = @id

end
GO
USE [master]
GO
ALTER DATABASE [QLNT_CAOSU] SET  READ_WRITE 
GO
