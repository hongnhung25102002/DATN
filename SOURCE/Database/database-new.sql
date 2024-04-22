--USE [master]
--GO
/****** Object:  Database [dataQLKS]    Script Date: 4/20/2024 8:07:20 PM ******/
CREATE DATABASE [dataQLKS] ON  PRIMARY 
( NAME = N'dataQLKS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLSEXPRESS\MSSQL\DATA\dataQLKS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dataQLKS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\dataQLKS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dataQLKS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dataQLKS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dataQLKS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dataQLKS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dataQLKS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dataQLKS] SET ARITHABORT OFF 
GO
ALTER DATABASE [dataQLKS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dataQLKS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dataQLKS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dataQLKS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dataQLKS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dataQLKS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dataQLKS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dataQLKS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dataQLKS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dataQLKS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dataQLKS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dataQLKS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dataQLKS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dataQLKS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dataQLKS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dataQLKS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dataQLKS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dataQLKS] SET RECOVERY FULL 
GO
ALTER DATABASE [dataQLKS] SET  MULTI_USER 
GO
ALTER DATABASE [dataQLKS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dataQLKS] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dataQLKS', N'ON'
GO
USE [dataQLKS]
GO
/****** Object:  Table [dbo].[tblChucVu]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucVu](
	[ma_chuc_vu] [int] IDENTITY(1,1) NOT NULL,
	[chuc_vu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_chuc_vu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDichVu]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVu](
	[ma_dv] [int] IDENTITY(1,1) NOT NULL,
	[ten_dv] [nvarchar](100) NULL,
	[gia] [float] NULL,
	[don_vi] [nvarchar](30) NULL,
	[anh] [nvarchar](200) NULL,
	[ton_kho] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDichVuDaDat]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVuDaDat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_hd] [int] NULL,
	[ma_dv] [int] NULL,
	[so_luong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[ma_hd] [int] IDENTITY(1,1) NOT NULL,
	[ma_nv] [int] NULL,
	[ma_pdp] [int] NULL,
	[ngay_tra_phong] [datetime] NULL,
	[ma_tinh_trang] [int] NULL,
	[tien_phong] [float] NULL,
	[tien_dich_vu] [float] NULL,
	[phu_thu] [float] NULL,
	[tong_tien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_hd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[ma_kh] [nvarchar](50) NOT NULL,
	[mat_khau] [nvarchar](50) NULL,
	[ho_ten] [nvarchar](50) NULL,
	[cmt] [nvarchar](30) NULL,
	[sdt] [nvarchar](15) NULL,
	[mail] [nvarchar](100) NULL,
	[diem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_kh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoaiPhong]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiPhong](
	[loai_phong] [int] IDENTITY(1,1) NOT NULL,
	[mo_ta] [nvarchar](50) NULL,
	[gia] [float] NULL,
	[ti_le_phu_thu] [int] NULL,
	[anh] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[loai_phong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[ma_nv] [int] IDENTITY(1,1) NOT NULL,
	[ho_ten] [nvarchar](50) NULL,
	[ngay_sinh] [date] NULL,
	[dia_chi] [nvarchar](100) NULL,
	[sdt] [nvarchar](15) NULL,
	[tai_khoan] [nvarchar](50) NULL,
	[mat_khau] [nvarchar](50) NULL,
	[ma_chuc_vu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieuDatPhong]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuDatPhong](
	[ma_pdp] [int] IDENTITY(1,1) NOT NULL,
	[ma_kh] [nvarchar](50) NULL,
	[ngay_dat] [datetime] NULL,
	[ngay_vao] [datetime] NULL,
	[ngay_ra] [datetime] NULL,
	[ma_phong] [int] NULL,
	[thong_tin_khach_thue] [nvarchar](400) NULL,
	[ma_tinh_trang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_pdp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhong]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhong](
	[ma_phong] [int] IDENTITY(1,1) NOT NULL,
	[so_phong] [nvarchar](10) NULL,
	[loai_phong] [int] NULL,
	[ma_tang] [int] NULL,
	[ma_tinh_trang] [int] NULL,
	[so_luong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTang]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTang](
	[ma_tang] [int] IDENTITY(1,1) NOT NULL,
	[ten_tang] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTinhTrangHoaDon]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinhTrangHoaDon](
	[ma_tinh_trang] [int] IDENTITY(1,1) NOT NULL,
	[mo_ta] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tinh_trang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTinhTrangPhieuDatPhong]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinhTrangPhieuDatPhong](
	[ma_tinh_trang] [int] IDENTITY(1,1) NOT NULL,
	[tinh_trang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tinh_trang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTinhTrangPhong]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinhTrangPhong](
	[ma_tinh_trang] [int] IDENTITY(1,1) NOT NULL,
	[mo_ta] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tinh_trang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTinNhan]    Script Date: 4/20/2024 8:07:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTinNhan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ngay_gui] [datetime] NULL,
	[ma_kh] [nvarchar](50) NULL,
	[ho_ten] [nvarchar](100) NULL,
	[mail] [nvarchar](100) NULL,
	[noi_dung] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblChucVu] ON 

INSERT [dbo].[tblChucVu] ([ma_chuc_vu], [chuc_vu]) VALUES (1, N'Quản trị viên')
INSERT [dbo].[tblChucVu] ([ma_chuc_vu], [chuc_vu]) VALUES (2, N'Quản lý')
INSERT [dbo].[tblChucVu] ([ma_chuc_vu], [chuc_vu]) VALUES (3, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[tblChucVu] OFF
SET IDENTITY_INSERT [dbo].[tblDichVu] ON 

INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (1, N'Nước ngọt', 10000, N'lon', N'/Content/Images/DichVu/1.png', 50)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (2, N'Bia 333', 10000, N'lon', N'/Content/Images/DichVu/2.png', 50)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (3, N'Khăn lạnh', 5000, N'chiếc', N'/Content/Images/DichVu/3.jpg', 50)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (4, N'Bim Bim', 10000, N'gói', N'/Content/Images/DichVu/4.jpg', 50)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (5, N'Nước suối', 10000, N'chai', N'/Content/Images/DichVu/5.png', 50)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (6, N'Nước tăng lực', 20000, N'chai', N'/Content/Images/DichVu/6.png', 50)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (7, N'Thuốc lá', 20000, N'bao', N'/Content/Images/DichVu/7.png', 50)
INSERT [dbo].[tblDichVu] ([ma_dv], [ten_dv], [gia], [don_vi], [anh], [ton_kho]) VALUES (8, N'Cơm hộp', 30000, N'hộp', N'/Content/Images/DichVu/8.jpg', 50)
SET IDENTITY_INSERT [dbo].[tblDichVu] OFF
SET IDENTITY_INSERT [dbo].[tblDichVuDaDat] ON 

INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (1, 10, 1, 2)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (2, 10, 3, 4)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (3, 10, 2, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (4, 11, 4, 3)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (5, 11, 6, 2)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (6, 12, 5, 6)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (7, 12, 1, 2)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (8, 13, 7, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (9, 14, 8, 1)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (10, 14, 1, 3)
INSERT [dbo].[tblDichVuDaDat] ([id], [ma_hd], [ma_dv], [so_luong]) VALUES (11, 14, 3, 4)
SET IDENTITY_INSERT [dbo].[tblDichVuDaDat] OFF
SET IDENTITY_INSERT [dbo].[tblHoaDon] ON 

INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (1, 1, 1, CAST(N'2018-04-24T21:36:27.427' AS DateTime), 2, 800000, 0, 0, 800000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (2, 1, 2, CAST(N'2018-04-25T21:36:27.427' AS DateTime), 2, 1100000, 0, 0, 1100000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (3, 1, 3, CAST(N'2018-04-27T21:36:27.427' AS DateTime), 2, 900000, 0, 0, 900000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (4, 1, 4, CAST(N'2018-04-21T21:36:27.427' AS DateTime), 2, 300000, 0, 0, 300000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (5, 1, 5, CAST(N'2018-04-22T21:36:27.427' AS DateTime), 2, 500000, 0, 0, 500000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (6, 1, 6, CAST(N'2018-04-23T21:36:27.427' AS DateTime), 2, 200000, 0, 0, 200000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (7, 1, 7, CAST(N'2018-04-24T21:36:27.427' AS DateTime), 2, 300000, 0, 0, 300000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (8, 1, 8, CAST(N'2018-04-25T21:36:27.427' AS DateTime), 2, 400000, 0, 0, 400000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (9, 1, 9, CAST(N'2018-04-27T21:36:27.427' AS DateTime), 2, 200000, 0, 0, 200000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (10, 1, 10, CAST(N'2018-04-30T21:36:27.427' AS DateTime), 2, 400000, 50000, 0, 450000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (11, 1, 11, CAST(N'2018-05-01T21:36:27.427' AS DateTime), 2, 500000, 70000, 0, 570000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (12, 1, 12, CAST(N'2018-05-03T21:36:27.427' AS DateTime), 2, 200000, 80000, 0, 280000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (13, 1, 13, CAST(N'2018-05-04T21:36:27.427' AS DateTime), 2, 600000, 140000, 0, 740000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (14, 1, 14, CAST(N'2018-05-05T21:36:27.427' AS DateTime), 2, 450000, 10000, 0, 460000)
INSERT [dbo].[tblHoaDon] ([ma_hd], [ma_nv], [ma_pdp], [ngay_tra_phong], [ma_tinh_trang], [tien_phong], [tien_dich_vu], [phu_thu], [tong_tien]) VALUES (15, 1, 15, CAST(N'2018-05-05T21:36:27.427' AS DateTime), 2, 400000, 80000, 0, 480000)
SET IDENTITY_INSERT [dbo].[tblHoaDon] OFF
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'khach', N'12345', N'Khach', N'1311412131', N'0166776868', N'khach@gmail.com', 0)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'ntg1', N'12345', N'NTG1', N'1311412131', N'0166776868', N'ntg@gmail.com', 0)
INSERT [dbo].[tblKhachHang] ([ma_kh], [mat_khau], [ho_ten], [cmt], [sdt], [mail], [diem]) VALUES (N'ntg2', N'12345', N'NTG2', N'1311412131', N'0166776868', N'ntg2@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[tblLoaiPhong] ON 

INSERT [dbo].[tblLoaiPhong] ([loai_phong], [mo_ta], [gia], [ti_le_phu_thu], [anh]) VALUES (1, N'Phòng đơn', 100000, 20, N'["/Content/Images/Phong/11.jpg","/Content/Images/Phong/12.jpg","/Content/Images/Phong/13.jpg"]')
INSERT [dbo].[tblLoaiPhong] ([loai_phong], [mo_ta], [gia], [ti_le_phu_thu], [anh]) VALUES (2, N'Phòng đôi', 150000, 25, N'["/Content/Images/Phong/21.jpg","/Content/Images/Phong/22.jpg","/Content/Images/Phong/23.jpg"]')
INSERT [dbo].[tblLoaiPhong] ([loai_phong], [mo_ta], [gia], [ti_le_phu_thu], [anh]) VALUES (3, N'Phòng vip', 200000, 30, N'["/Content/Images/Phong/31.jpg","/Content/Images/Phong/32.jpg"]')
SET IDENTITY_INSERT [dbo].[tblLoaiPhong] OFF
SET IDENTITY_INSERT [dbo].[tblNhanVien] ON 

INSERT [dbo].[tblNhanVien] ([ma_nv], [ho_ten], [ngay_sinh], [dia_chi], [sdt], [tai_khoan], [mat_khau], [ma_chuc_vu]) VALUES (1, N'Truong Giang', CAST(N'1900-01-01' AS Date), N'', N'01677915896', N'admin', N'12345', 1)
INSERT [dbo].[tblNhanVien] ([ma_nv], [ho_ten], [ngay_sinh], [dia_chi], [sdt], [tai_khoan], [mat_khau], [ma_chuc_vu]) VALUES (2, N'TG', CAST(N'1900-01-01' AS Date), N'', N'01677915896', N'smod', N'12345', 2)
INSERT [dbo].[tblNhanVien] ([ma_nv], [ho_ten], [ngay_sinh], [dia_chi], [sdt], [tai_khoan], [mat_khau], [ma_chuc_vu]) VALUES (3, N'tgiangfc', CAST(N'1900-01-01' AS Date), N'', N'01677915896', N'mod', N'12345', 3)
SET IDENTITY_INSERT [dbo].[tblNhanVien] OFF
SET IDENTITY_INSERT [dbo].[tblPhieuDatPhong] ON 

INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (1, N'ntg1', CAST(N'2018-04-19T21:35:28.170' AS DateTime), CAST(N'2018-04-19T21:35:28.170' AS DateTime), CAST(N'2018-04-26T21:35:28.170' AS DateTime), 7, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (2, N'ntg2', CAST(N'2018-04-18T21:35:28.170' AS DateTime), CAST(N'2018-04-18T21:35:28.170' AS DateTime), CAST(N'2018-04-28T21:35:28.170' AS DateTime), 8, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (3, N'khach', CAST(N'2018-04-21T21:35:28.170' AS DateTime), CAST(N'2018-04-21T21:35:28.170' AS DateTime), CAST(N'2018-04-29T21:35:28.170' AS DateTime), 9, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (4, N'ntg1', CAST(N'2018-04-19T21:35:28.170' AS DateTime), CAST(N'2018-04-19T21:35:28.170' AS DateTime), CAST(N'2018-04-21T21:35:28.170' AS DateTime), 7, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (5, N'ntg2', CAST(N'2018-04-18T21:35:28.170' AS DateTime), CAST(N'2018-04-18T21:35:28.170' AS DateTime), CAST(N'2018-04-22T21:35:28.170' AS DateTime), 8, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (6, N'khach', CAST(N'2018-04-21T21:35:28.170' AS DateTime), CAST(N'2018-04-21T21:35:28.170' AS DateTime), CAST(N'2018-04-23T21:35:28.170' AS DateTime), 9, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (7, N'ntg1', CAST(N'2018-04-22T21:35:28.170' AS DateTime), CAST(N'2018-04-22T21:35:28.170' AS DateTime), CAST(N'2018-04-24T21:35:28.170' AS DateTime), 7, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (8, N'ntg2', CAST(N'2018-04-22T21:35:28.170' AS DateTime), CAST(N'2018-04-22T21:35:28.170' AS DateTime), CAST(N'2018-04-25T21:35:28.170' AS DateTime), 8, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (9, N'khach', CAST(N'2018-04-24T21:35:28.170' AS DateTime), CAST(N'2018-04-26T21:35:28.170' AS DateTime), CAST(N'2018-04-27T21:35:28.170' AS DateTime), 9, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (10, N'ntg1', CAST(N'2018-04-25T21:35:28.170' AS DateTime), CAST(N'2018-04-27T21:35:28.170' AS DateTime), CAST(N'2018-04-30T21:35:28.170' AS DateTime), 1, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (11, N'ntg2', CAST(N'2018-04-27T21:35:28.170' AS DateTime), CAST(N'2018-04-27T21:35:28.170' AS DateTime), CAST(N'2018-05-01T21:35:28.170' AS DateTime), 2, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (12, N'khach', CAST(N'2018-04-30T21:35:28.170' AS DateTime), CAST(N'2018-05-02T21:35:28.170' AS DateTime), CAST(N'2018-05-03T21:35:28.170' AS DateTime), 3, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (13, N'ntg1', CAST(N'2018-05-01T21:35:28.170' AS DateTime), CAST(N'2018-05-01T21:35:28.170' AS DateTime), CAST(N'2018-05-04T21:35:28.170' AS DateTime), 4, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (14, N'khach', CAST(N'2018-05-03T21:35:28.170' AS DateTime), CAST(N'2018-05-03T21:35:28.170' AS DateTime), CAST(N'2018-05-05T21:35:28.170' AS DateTime), 5, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (15, N'ntg2', CAST(N'2018-05-04T21:35:28.170' AS DateTime), CAST(N'2018-05-04T21:35:28.170' AS DateTime), CAST(N'2018-05-05T21:35:28.170' AS DateTime), 6, N'[{"hoten":"","socmt":null,"tuoi":"","sodt":null},{"hoten":"Nguy?n Th? B","socmt":null,"tuoi":"18","sodt":null}]', 4)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (16, N'khach', CAST(N'2024-04-19T22:24:27.440' AS DateTime), CAST(N'2024-04-19T12:00:00.000' AS DateTime), CAST(N'2024-04-22T12:00:00.000' AS DateTime), 1, NULL, 1)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (17, N'khach', CAST(N'2024-04-19T22:27:35.247' AS DateTime), CAST(N'2024-04-19T12:00:00.000' AS DateTime), CAST(N'2024-04-23T12:00:00.000' AS DateTime), 2, NULL, 1)
INSERT [dbo].[tblPhieuDatPhong] ([ma_pdp], [ma_kh], [ngay_dat], [ngay_vao], [ngay_ra], [ma_phong], [thong_tin_khach_thue], [ma_tinh_trang]) VALUES (18, N'khach', CAST(N'2024-04-19T23:11:41.327' AS DateTime), CAST(N'2024-04-19T12:00:00.000' AS DateTime), CAST(N'2024-04-20T12:00:00.000' AS DateTime), 3, NULL, 1)
SET IDENTITY_INSERT [dbo].[tblPhieuDatPhong] OFF
SET IDENTITY_INSERT [dbo].[tblPhong] ON 

INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (1, N'101', 1, 1, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (2, N'102', 1, 1, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (3, N'103', 1, 1, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (4, N'104', 2, 1, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (5, N'105', 2, 1, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (6, N'106', 3, 1, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (7, N'201', 1, 2, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (8, N'202', 1, 2, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (9, N'203', 1, 2, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (10, N'204', 2, 2, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (11, N'205', 2, 2, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (12, N'206', 3, 2, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (13, N'301', 1, 3, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (14, N'302', 1, 3, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (15, N'303', 1, 3, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (16, N'304', 2, 3, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (17, N'305', 2, 3, 1, NULL)
INSERT [dbo].[tblPhong] ([ma_phong], [so_phong], [loai_phong], [ma_tang], [ma_tinh_trang], [so_luong]) VALUES (18, N'306', 3, 3, 1, NULL)
SET IDENTITY_INSERT [dbo].[tblPhong] OFF
SET IDENTITY_INSERT [dbo].[tblTang] ON 

INSERT [dbo].[tblTang] ([ma_tang], [ten_tang]) VALUES (1, N'Tầng 1')
INSERT [dbo].[tblTang] ([ma_tang], [ten_tang]) VALUES (2, N'Tầng 2')
INSERT [dbo].[tblTang] ([ma_tang], [ten_tang]) VALUES (3, N'Tầng 3')
SET IDENTITY_INSERT [dbo].[tblTang] OFF
SET IDENTITY_INSERT [dbo].[tblTinhTrangHoaDon] ON 

INSERT [dbo].[tblTinhTrangHoaDon] ([ma_tinh_trang], [mo_ta]) VALUES (1, N'Chưa thanh toán')
INSERT [dbo].[tblTinhTrangHoaDon] ([ma_tinh_trang], [mo_ta]) VALUES (2, N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[tblTinhTrangHoaDon] OFF
SET IDENTITY_INSERT [dbo].[tblTinhTrangPhieuDatPhong] ON 

INSERT [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang], [tinh_trang]) VALUES (1, N'Đang đặt')
INSERT [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang], [tinh_trang]) VALUES (2, N'Đã xong')
INSERT [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang], [tinh_trang]) VALUES (3, N'Đã hủy')
INSERT [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang], [tinh_trang]) VALUES (4, N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[tblTinhTrangPhieuDatPhong] OFF
SET IDENTITY_INSERT [dbo].[tblTinhTrangPhong] ON 

INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (1, N'Trống')
INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (2, N'Đang sử dụng')
INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (3, N'Đang dọn')
INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (4, N'Đang bảo trì')
INSERT [dbo].[tblTinhTrangPhong] ([ma_tinh_trang], [mo_ta]) VALUES (5, N'Dừng sử dụng')
SET IDENTITY_INSERT [dbo].[tblTinhTrangPhong] OFF
ALTER TABLE [dbo].[tblDichVuDaDat]  WITH CHECK ADD  CONSTRAINT [fk_ma_dv] FOREIGN KEY([ma_dv])
REFERENCES [dbo].[tblDichVu] ([ma_dv])
GO
ALTER TABLE [dbo].[tblDichVuDaDat] CHECK CONSTRAINT [fk_ma_dv]
GO
ALTER TABLE [dbo].[tblDichVuDaDat]  WITH CHECK ADD  CONSTRAINT [fk_ma_hd] FOREIGN KEY([ma_hd])
REFERENCES [dbo].[tblHoaDon] ([ma_hd])
GO
ALTER TABLE [dbo].[tblDichVuDaDat] CHECK CONSTRAINT [fk_ma_hd]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_ma_nv] FOREIGN KEY([ma_nv])
REFERENCES [dbo].[tblNhanVien] ([ma_nv])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [fk_ma_nv]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_ma_pdp] FOREIGN KEY([ma_pdp])
REFERENCES [dbo].[tblPhieuDatPhong] ([ma_pdp])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [fk_ma_pdp]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_ma_tthd] FOREIGN KEY([ma_tinh_trang])
REFERENCES [dbo].[tblTinhTrangHoaDon] ([ma_tinh_trang])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [fk_ma_tthd]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [fk_ma_cv] FOREIGN KEY([ma_chuc_vu])
REFERENCES [dbo].[tblChucVu] ([ma_chuc_vu])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [fk_ma_cv]
GO
ALTER TABLE [dbo].[tblPhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_tgd_ma_kh2] FOREIGN KEY([ma_kh])
REFERENCES [dbo].[tblKhachHang] ([ma_kh])
GO
ALTER TABLE [dbo].[tblPhieuDatPhong] CHECK CONSTRAINT [fk_tgd_ma_kh2]
GO
ALTER TABLE [dbo].[tblPhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_tgd_ma_phong_2] FOREIGN KEY([ma_phong])
REFERENCES [dbo].[tblPhong] ([ma_phong])
GO
ALTER TABLE [dbo].[tblPhieuDatPhong] CHECK CONSTRAINT [fk_tgd_ma_phong_2]
GO
ALTER TABLE [dbo].[tblPhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [fk_tgd_tt_2] FOREIGN KEY([ma_tinh_trang])
REFERENCES [dbo].[tblTinhTrangPhieuDatPhong] ([ma_tinh_trang])
GO
ALTER TABLE [dbo].[tblPhieuDatPhong] CHECK CONSTRAINT [fk_tgd_tt_2]
GO
ALTER TABLE [dbo].[tblPhong]  WITH CHECK ADD  CONSTRAINT [fk_ma_lp] FOREIGN KEY([loai_phong])
REFERENCES [dbo].[tblLoaiPhong] ([loai_phong])
GO
ALTER TABLE [dbo].[tblPhong] CHECK CONSTRAINT [fk_ma_lp]
GO
ALTER TABLE [dbo].[tblPhong]  WITH CHECK ADD  CONSTRAINT [fk_ma_tang] FOREIGN KEY([ma_tang])
REFERENCES [dbo].[tblTang] ([ma_tang])
GO
ALTER TABLE [dbo].[tblPhong] CHECK CONSTRAINT [fk_ma_tang]
GO
ALTER TABLE [dbo].[tblPhong]  WITH CHECK ADD  CONSTRAINT [fk_ma_tt_2] FOREIGN KEY([ma_tinh_trang])
REFERENCES [dbo].[tblTinhTrangPhong] ([ma_tinh_trang])
GO
ALTER TABLE [dbo].[tblPhong] CHECK CONSTRAINT [fk_ma_tt_2]
GO
ALTER TABLE [dbo].[tblTinNhan]  WITH CHECK ADD  CONSTRAINT [fk_tin_nhan] FOREIGN KEY([ma_kh])
REFERENCES [dbo].[tblKhachHang] ([ma_kh])
GO
ALTER TABLE [dbo].[tblTinNhan] CHECK CONSTRAINT [fk_tin_nhan]
GO
USE [master]
GO
ALTER DATABASE [dataQLKS] SET  READ_WRITE 
GO
