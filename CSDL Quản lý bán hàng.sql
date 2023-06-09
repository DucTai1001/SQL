USE [GK CSDL]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaMH] [varchar](15) NOT NULL,
	[MaDH] [varchar](50) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [varchar](50) NOT NULL,
	[NgayDatHang] [date] NULL,
	[DiaChiGiaoHang] [nvarchar](200) NOT NULL,
	[Xa] [nvarchar](50) NOT NULL,
	[Huyen] [nvarchar](50) NOT NULL,
	[Tinh] [nvarchar](50) NOT NULL,
	[HTThanhToan] [int] NULL,
	[KhachHang] [varchar](100) NULL,
 CONSTRAINT [PK__DonHang__27258661811A4961] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](15) NOT NULL,
	[NgayTao] [date] NULL,
	[PhiVanChuyen] [int] NULL,
	[DonHang] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTThanhToan]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTThanhToan](
	[MaTT] [int] NOT NULL,
	[TenHT] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](100) NOT NULL,
	[HoTen] [nvarchar](200) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[Email] [varchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[MaMH] [varchar](15) NOT NULL,
	[TenMH] [nvarchar](255) NOT NULL,
	[NgaySX] [date] NULL,
	[NgayHHSD] [date] NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [int] NULL,
	[MaLoai] [int] NULL,
	[NSX] [varchar](25) NULL,
	[HinhAnh] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [varchar](25) NOT NULL,
	[Ten] [nvarchar](500) NULL,
	[Email] [varchar](500) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [varchar](255) NOT NULL,
	[TenDN] [varchar](500) NULL,
	[MatKhau] [varchar](500) NULL,
	[MaKH] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangDH]    Script Date: 6/16/2022 10:21:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangDH](
	[MaDH] [varchar](50) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_TinhTrangDH] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[NgayTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'001', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'005', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'010', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'015', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'020', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'025', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'030', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'035', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'040', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'045', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA001', N'050', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'002', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'007', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'012', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'017', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'022', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'027', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'032', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'037', 7)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'042', 8)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CA002', N'047', 9)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'001', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'003', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'008', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'013', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'018', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'023', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'028', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'033', 7)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'038', 8)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'043', 9)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CAO001', N'048', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'001', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'006', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'011', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'016', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'021', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'026', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'031', 7)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'036', 8)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'041', 9)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL001', N'046', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL002', N'001', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'CL002', N'050', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'DUA001', N'001', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'DUA001', N'007', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'DUA001', N'013', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'DUA001', N'019', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'DUA001', N'026', 7)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO123', N'002', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO123', N'003', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO168', N'002', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO168', N'010', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO168', N'018', 11)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO168', N'026', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO168', N'034', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO168', N'042', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GAO168', N'050', 11)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GN001', N'001', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GN001', N'002', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GN001', N'005', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GN001', N'009', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GN001', N'013', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GN001', N'019', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'GN001', N'025', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'HMK001', N'002', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'001', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'006', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'011', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'016', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'021', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'026', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'031', 7)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'036', 8)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'041', 9)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN001', N'046', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'002', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'007', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'012', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'017', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'022', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'027', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'032', 7)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'037', 8)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'042', 9)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN002', N'047', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'003', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'007', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'008', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'010', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'013', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'015', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'018', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'019', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'022', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'023', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'028', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'033', 7)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'035', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'038', 8)
GO
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'042', 8)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'043', 9)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'045', 12)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'048', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MAN003', N'050', 6)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'004', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'009', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'014', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'019', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'024', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'029', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'034', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'039', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'044', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MD001', N'049', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'MNR001', N'003', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'SAM001', N'003', 7)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TL001', N'003', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'005', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'010', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'015', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'020', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'025', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'030', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'035', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'040', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'045', 4)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA001', N'050', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA002', N'001', 1)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA002', N'011', 10)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA002', N'021', 2)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA002', N'031', 11)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA002', N'041', 3)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA003', N'002', 5)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'TRA003', N'023', 13)
INSERT [dbo].[ChiTietDH] ([MaMH], [MaDH], [SoLuong]) VALUES (N'XO001', N'001', 20)
GO
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'001', CAST(N'2022-08-04' AS Date), N'24 Hoàng Mai - Trương Định - Hai Bà Trưng - Hà Nội', N'Trương Định', N'Hai Bà Trưng', N'Hà Nội', 1, N'KH002')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'002', CAST(N'2022-01-01' AS Date), N'24 Hoàng Mai - Trương Định - Hai Bà Trưng - Hà Nội', N'Trương Định', N'Hai Bà  Trưng', N'Hà Nội', 0, N'KH002')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'003', CAST(N'2022-06-07' AS Date), N'10 Phú Thinh -  Hoằng Đức - Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 1, N'KH003')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'004', CAST(N'2022-01-01' AS Date), N'10 Phú Thịnh - Hoằng Đức - Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 1, N'KH003')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'005', CAST(N'2022-02-03' AS Date), N'10 Phú Thịnh - Hoằng Đức - Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 0, N'KH003')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'006', CAST(N'2022-02-10' AS Date), N'10 Phú Thịnh - Hoằng Đức - Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 0, N'KH003')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'007', CAST(N'2022-03-07' AS Date), N'10 Phú Thịnh - Hoằng Đức - Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 0, N'KH003')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'008', CAST(N'2022-01-17' AS Date), N'24 Khang Thọ Hưng - Hoằng Đức -Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 1, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'009', CAST(N'2022-03-02' AS Date), N'24 Khang Thọ Hưng - Hoằng Đức -Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 0, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'010', CAST(N'2022-02-28' AS Date), N'24 Khang Thọ Hưng - Hoằng Đức -Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 1, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'011', CAST(N'2022-04-15' AS Date), N'24 Khang Thọ Hưng - Hoằng Đức -Hoằng Hóa - Thanh Hóa', N'Hoằng Đức', N'Hoằng Hóa', N'Thanh Hóa', 1, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'012', CAST(N'2022-01-28' AS Date), N'16 Kim Ngưu-Hoàng Mai -Hai Bà Trưng -Hà Nội', N'Hoàng Mai', N'Hai Bà Trưng', N'Hà Nội', 0, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'013', CAST(N'2022-02-15' AS Date), N'16 Kim Ngưu-Hoàng Mai -Hai Bà Trưng -Hà Nội', N'Hoàng Mai', N'Hai Bà Trưng', N'Hà Nội', 0, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'014', CAST(N'2022-03-06' AS Date), N'16 Kim Ngưu-Hoàng Mai -Hai Bà Trưng -Hà Nội', N'Hoàng Mai', N'Hai Bà Trưng', N'Hà Nội', 1, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'015', CAST(N'2022-04-30' AS Date), N'16 Kim Ngưu-Hoàng Mai -Hai Bà Trưng -Hà Nội', N'Hoàng Mai', N'Hai Bà Trưng', N'Hà Nội', 1, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'016', CAST(N'2022-06-15' AS Date), N'16 Kim Ngưu-Hoàng Mai -Hai Bà Trưng -Hà Nội', N'Hoàng Mai', N'Hai Bà Trưng', N'Hà Nội', 0, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'017', CAST(N'2022-01-30' AS Date), N'16 Kim Ngưu-Hoàng Mai -Hai Bà Trưng -Hà Nội', N'Hoàng Mai', N'Hai Bà Trưng', N'Hà Nội', 1, N'KH004')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'018', CAST(N'2022-02-23' AS Date), N'69 Thị Trấn Cầu Gồ - Yên Thế - Bắc Giang', N'Thị Trấn Cầu Gồ', N'Yên Thế', N'Bắc Giang', 1, N'KH005')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'019', CAST(N'2022-01-10' AS Date), N'69 Thị Trấn Cầu Gồ - Yên Thế - Bắc Giang', N'Thị Trấn Cầu Gồ', N'Yên Thế', N'Bắc Giang', 0, N'KH005')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'020', CAST(N'2022-03-16' AS Date), N'69 Thị Trấn Cầu Gồ - Yên Thế - Bắc Giang', N'Thị Trấn Cầu Gồ', N'Yên Thế', N'Bắc Giang', 1, N'KH005')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'021', CAST(N'2022-01-19' AS Date), N'24 Sao Vàng - Hoằng Phụ - Hoằng Hóa - Thanh Hóa', N'Hoằng Phụ', N'Hoằng Hóa', N'Thanh Hóa', 1, N'KH006')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'022', CAST(N'2022-02-13' AS Date), N'24 Sao Vàng - Hoằng Phụ - Hoằng Hóa - Thanh Hóa', N'Hoằng Phụ', N'Hoằng Hóa', N'Thanh Hóa', 1, N'KH006')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'023', CAST(N'2022-01-03' AS Date), N'16 Trung Sơn - Nghi Sơn - Tĩnh Gia - Thanh Hóa', N'Nghi Sơn', N'Tĩnh Gia', N'Thanh Hóa', 1, N'KH007')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'024', CAST(N'2022-03-04' AS Date), N'16 Trung Sơn - Nghi Sơn - Tĩnh Gia - Thanh Hóa', N'Nghi Sơn', N'Tĩnh Gia', N'Thanh Hóa', 0, N'KH007')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'025', CAST(N'2022-05-04' AS Date), N'16 Trung Sơn - Nghi Sơn - Tĩnh Gia - Thanh Hóa', N'Nghi Sơn', N'Tĩnh Gia', N'Thanh Hóa', 0, N'KH007')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'026', CAST(N'2022-04-08' AS Date), N'16 Trung Sơn - Nghi Sơn - Tĩnh Gia - Thanh Hóa', N'Nghi Sơn', N'Tĩnh Gia', N'Thanh Hóa', 0, N'KH007')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'027', CAST(N'2022-01-10' AS Date), N'36 Thị Trấn Văn Giang - Văn Giang - Hưng Yên ', N'Thị Trấn Văn Giang', N'Văn Giang', N'Hưng Yên', 0, N'KH008')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'028', CAST(N'2022-03-08' AS Date), N'36 Thị Trấn Văn Giang - Văn Giang - Hưng Yên ', N'Thị Trấn Văn Giang', N'Văn Giang', N'Hưng Yên', 1, N'KH008')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'029', CAST(N'2022-05-15' AS Date), N'36 Thị Trấn Văn Giang - Văn Giang - Hưng Yên ', N'Thị Trấn Văn Giang', N'Văn Giang', N'Hưng Yên', 1, N'KH008')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'030', CAST(N'2022-01-09' AS Date), N'33 Nghĩa Trung - Yên Thế - Bắc Giang', N'Nghĩa Trung', N'Yên Thế', N'Bắc Giang', 0, N'KH009')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'031', CAST(N'2022-03-09' AS Date), N'33 Nghĩa Trung - Yên Thế - Bắc Giang', N'Nghĩa Trung', N'Yên Thế', N'Bắc Giang', 1, N'KH009')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'032', CAST(N'2022-06-11' AS Date), N'33 Nghĩa Trung - Yên Thế  - Bắc Giang', N'Nghĩa Trung', N'Yên Thế', N'Bắc Giang', 0, N'KH009')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'033', CAST(N'2022-01-22' AS Date), N'10 Kim Liên - Nam Đàn - Nghệ An', N'Kim Liên', N'Nam Đàn', N'Nghệ An', 1, N'KH010')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'034', CAST(N'2022-03-16' AS Date), N'10 Kim Liên - Nam Đàn - Nghệ An', N'Kim Liên', N'Nam Đàn', N'Nghệ An', 0, N'KH010')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'035', CAST(N'2022-04-15' AS Date), N'10 Kim Liên - Nam Đàn - Nghệ An', N'Kim Liên', N'Nam Đàn', N'Nghệ AN', 1, N'KH010')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'036', CAST(N'2022-01-18' AS Date), N'44 Xuân Giang - Nghi Xuân - Hà Tĩnh', N'Xuân Giang', N'Nghi Xuân', N'Hà Tĩnh', 0, N'KH011')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'037', CAST(N'2022-02-28' AS Date), N'44 Xuân Giang - Nghi Xuân - Hà Tĩnh', N'Xuân Giang', N'Nghi Xuân', N'Hà Tĩnh', 1, N'KH011')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'038 ', CAST(N'2022-03-01' AS Date), N'44 Xuân Giang - Nghi Xuân Hà Tĩnh', N'Xuân Giang', N'Nghi Xuân', N'Hà Tĩnh', 0, N'KH011')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'039', CAST(N'2022-03-29' AS Date), N'44 Xuân Giang - Nghi Xuân - Hà Tĩnh', N'Xuân Giang', N'Nghi Xuân', N'Hà Tĩnh', 1, N'KH011')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'040', CAST(N'2022-04-05' AS Date), N'44 Xuân Giang -  Nghi Xuân - Hà Tĩnh', N'Xuân Giang', N'Nghi Xuân', N'Hà Tĩnh', 0, N'KH011')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'041', CAST(N'2022-01-27' AS Date), N'27 Hà Bắc - Hà Trung - Thanh Hóa', N'Hà Bắc', N'Hà Trung', N'Thanh Hóa', 0, N'KH012')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'042', CAST(N'2022-02-28' AS Date), N'27 Hà Bắc - Hà Trung - Thanh Hóa', N'Hà Bắc', N'Hà Trung', N'Thanh Hóa', 0, N'KH012')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'043', CAST(N'2022-04-15' AS Date), N'27 Hà Bắc - Hà Trung - Thanh Hóa', N'Hà Bắc', N'Hà Trung', N'Thanh Hóa', 1, N'KH012')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'044', CAST(N'2022-05-01' AS Date), N'27 Hà Bắc - Hà Trung - Thanh Hóa', N'Hà Bắc', N'Hà Trung', N'Thanh Hóa', 1, N'KH012')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'045', CAST(N'2022-01-23' AS Date), N'20 Mỹ Lộc - Hậu Lộc - Thanh Hóa', N'Mỹ Lộc', N'Hậu Lộc', N'Thanh Hóa', 1, N'KH013')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'046', CAST(N'2022-02-15' AS Date), N'20 Mỹ Lộc - Hậu Lộc - Thanh Hóa', N'Mỹ Lộc', N'Hậu Lộc', N'Thanh Hóa', 1, N'KH013')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'047', CAST(N'2022-04-03' AS Date), N'20 Mỹ Lộc - Hậu Lộc - Thanh Hóa', N'Mỹ Lộc', N'Hậu Lộc', N'Thanh Hóa', 0, N'KH013')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'048', CAST(N'2022-01-13' AS Date), N'19  Bắc Sơn - TP Sầm Sơn - Thanh Hóa', N'Bắc Sơn', N'TP Sầm Sơn', N'Thanh Hóa', 0, N'KH014')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'049', CAST(N'2022-03-11' AS Date), N'19  Bắc Sơn - TP Sầm Sơn - Thanh Hóa', N'Bắc Sơn', N'TP Sầm Sơn', N'Thanh Hóa', 0, N'KH014')
INSERT [dbo].[DonHang] ([MaDH], [NgayDatHang], [DiaChiGiaoHang], [Xa], [Huyen], [Tinh], [HTThanhToan], [KhachHang]) VALUES (N'050', CAST(N'2022-01-23' AS Date), N'68 Minh Dân - Triệu Sơn - Thanh Hóa', N'Minh Dân', N'Triệu Sơn', N'Thanh Hóa', 0, N'KH015')
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD001', CAST(N'2022-08-05' AS Date), 15000, N'001')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD002', CAST(N'2022-01-02' AS Date), 15000, N'002')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD003', CAST(N'2022-06-08' AS Date), 50000, N'003')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD004', CAST(N'2022-01-02' AS Date), 50000, N'004')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD005', CAST(N'2022-02-04' AS Date), 45000, N'005')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD006', CAST(N'2022-02-11' AS Date), 55000, N'006')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD007', CAST(N'2022-03-08' AS Date), 40000, N'007')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD008', CAST(N'2022-01-18' AS Date), 35000, N'008')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD009', CAST(N'2022-03-03' AS Date), 45000, N'009')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD010', CAST(N'2022-03-01' AS Date), 60000, N'010')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD011', CAST(N'2022-04-16' AS Date), 50000, N'011')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD012', CAST(N'2022-01-29' AS Date), 20000, N'012')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD013', CAST(N'2022-02-16' AS Date), 25000, N'013')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD014', CAST(N'2022-03-07' AS Date), 15000, N'014')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD015', CAST(N'2022-05-01' AS Date), 30000, N'015')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD016', CAST(N'2022-06-16' AS Date), 20000, N'016')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD017', CAST(N'2022-02-01' AS Date), 15000, N'017')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD018', CAST(N'2022-02-24' AS Date), 30000, N'018')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD019', CAST(N'2022-01-11' AS Date), 35000, N'019')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD020', CAST(N'2022-03-17' AS Date), 25000, N'020')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD021', CAST(N'2022-01-20' AS Date), 60000, N'021')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD022', CAST(N'2022-02-14' AS Date), 45000, N'022')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD023', CAST(N'2022-01-04' AS Date), 50000, N'023')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD024', CAST(N'2022-03-05' AS Date), 45000, N'024')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD025', CAST(N'2022-05-05' AS Date), 60000, N'025')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD026', CAST(N'2022-04-09' AS Date), 10000, N'026')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD027', CAST(N'2022-01-11' AS Date), 25000, N'027')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD028', CAST(N'2022-03-09' AS Date), 20000, N'028')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD029', CAST(N'2022-05-16' AS Date), 30000, N'029')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD030', CAST(N'2022-01-10' AS Date), 35000, N'030')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD031', CAST(N'2022-03-10' AS Date), 20000, N'031')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD032', CAST(N'2022-06-12' AS Date), 25000, N'032')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD033', CAST(N'2022-01-23' AS Date), 60000, N'033')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD034', CAST(N'2022-03-17' AS Date), 70000, N'034')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD035', CAST(N'2022-04-16' AS Date), 65000, N'035')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD036', CAST(N'2022-01-19' AS Date), 75000, N'036')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD037', CAST(N'2022-03-01' AS Date), 70000, N'037')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD038', CAST(N'2022-03-02' AS Date), 80000, N'038')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD039', CAST(N'2022-03-30' AS Date), 65000, N'039')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD040', CAST(N'2022-04-06' AS Date), 65000, N'040')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD041', CAST(N'2022-01-28' AS Date), 50000, N'041')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD042', CAST(N'2022-03-01' AS Date), 55000, N'042')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD043', CAST(N'2022-04-16' AS Date), 45000, N'043')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD044', CAST(N'2022-05-02' AS Date), 45000, N'044')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD045', CAST(N'2022-01-24' AS Date), 50000, N'045')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD046', CAST(N'2022-02-16' AS Date), 45000, N'046')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD047', CAST(N'2020-04-04' AS Date), 60000, N'047')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD048', CAST(N'2022-01-14' AS Date), 45000, N'048')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD049', CAST(N'2022-03-12' AS Date), 40000, N'049')
INSERT [dbo].[HoaDon] ([MaHD], [NgayTao], [PhiVanChuyen], [DonHang]) VALUES (N'HD050', CAST(N'2022-01-24' AS Date), 40000, N'050')
GO
INSERT [dbo].[HTThanhToan] ([MaTT], [TenHT]) VALUES (0, N'Thanh toán online')
INSERT [dbo].[HTThanhToan] ([MaTT], [TenHT]) VALUES (1, N'Thanh toán khi nhận hàng')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH002', N'Nguyễn Quang Hải', N'Nguyễn Quang', N'Hải', N'HaiHoTay@gmail.com', CAST(N'1998-08-07' AS Date), N'069966696')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH003', N'Nguyễn Văn Toàn', N'Nguyễn Văn', N'Toàn', N'NVToan@gmail.com', CAST(N'1995-03-02' AS Date), N'035672115')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH004', N'Mạc Hồng Quân', N'Mạc Hồng', N'Quân', N'QuanHM@gmail.com', CAST(N'1990-06-03' AS Date), N'036115644')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH005', N'Vũ Như Thành', N'Vũ Như ', N'Thành', N'ThanhVN@gmail.com', CAST(N'1975-02-06' AS Date), N'035689713')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH006', N'Lê Huỳnh Đức', N'Lê Huỳnh', N'Đức', N'DucLH@gmail.com', CAST(N'1975-06-03' AS Date), N'0666555645')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH007', N'Lê Công Vinh', N'Lê Công ', N'Vinh', N'VinhCongLe@gmail.com', CAST(N'1985-06-03' AS Date), N'0356484123')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH008', N'Quế Ngọc Hải', N'Quế Ngọc', N'Hải', N'HaiQue@gmail.com', CAST(N'1992-03-04' AS Date), N'0335420005')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH009', N'Nguyễn Công Phượng', N'Nguyễn Công', N'Phương', N'PhuongNC@gmail.com', CAST(N'1990-02-06' AS Date), N'0354412121')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH010', N'Đỗ Hùng Dũng', N'Đỗ Hùng', N'Dũng', N'DungDH@gmail.com', CAST(N'1993-06-09' AS Date), N'0550235498')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH011', N'Nguyễn Trọng Hoàng', N'Nguyễn Trọng', N'Hoàng', N'HoangNT@gmail.com', CAST(N'1987-03-16' AS Date), N'0981357066')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH012', N'Nguyễn Tiến Linh', N'Nguyễn Tiến', N'Linh', N'LinhNT@gmail.com', CAST(N'1983-12-30' AS Date), N'03687003545')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH013', N'Nguyễn Anh Đức', N'Nguyễn Anh', N'Đức', N'DucNA@gmail.com', CAST(N'1977-06-13' AS Date), N'06515894213')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH014', N'Trần Đình Trọng', N'Trần Đình', N'Trọng', N'TrongTD@yahoo.com', CAST(N'1999-06-03' AS Date), N'0354983136')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH015', N'Nguyễn Hoàng Đức', N'Nguyễn Hoàng', N'Đức', N'DucNH@gmail.com', CAST(N'2001-06-09' AS Date), N'067895138')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH016', N'Đoàn Văn Hậu', N'Đoàn Văn', N'Hậu', N'HauDV@gmail.com', CAST(N'1995-06-03' AS Date), N'0456723168')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [Ho], [Ten], [Email], [NgaySinh], [SDT]) VALUES (N'KH017', N'Đặng Văn Lâm', N'Đặng Văn', N'Lâm', N'LamDV@gmail.com', CAST(N'1996-03-09' AS Date), N'0355498413')
GO
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (101, N'Đặc sản')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (102, N'Hoa quả')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (103, N'Thực phẩm khô')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (104, N'Gia vị khô')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (105, N'Dược liệu')
INSERT [dbo].[LoaiHang] ([MaLoai], [TenLoai]) VALUES (106, N'Trà')
GO
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'CA001', N'Cá Trắm sấy', CAST(N'2022-05-01' AS Date), CAST(N'2022-12-01' AS Date), 1000, 300000, 101, N'NB001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'CA002', N'Cá lăng sấy ', CAST(N'2022-06-01' AS Date), CAST(N'2022-12-01' AS Date), 1000, 400000, 101, N'TH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'CAO001', N'Cao xương ngực bạch', CAST(N'2022-05-01' AS Date), CAST(N'2022-12-01' AS Date), 100, 1500, 105, N'BG098', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'CL001', N'Chanh leo sấy dẻo', CAST(N'2022-06-01' AS Date), CAST(N'2022-11-01' AS Date), 500, 185000, 102, N'TH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'CL002', N'Chanh leo xuất khẩu', CAST(N'2022-06-01' AS Date), CAST(N'2022-11-01' AS Date), 200, 150000, 102, N'TH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'DUA001', N'Dứa sấy dẻo', CAST(N'2022-06-01' AS Date), CAST(N'2022-11-01' AS Date), 500, 155000, 102, N'TH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'GAO123', N'Gạo lứt Séng Cù', CAST(N'2020-01-01' AS Date), CAST(N'2020-06-01' AS Date), 20, 70000, 101, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'GAO168', N'Gạo lứt Tẻ Râu', CAST(N'2022-03-06' AS Date), CAST(N'2022-08-06' AS Date), 30, 99000, 101, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'GAO654', N'Gạo nếp Tan Pỏm', CAST(N'2022-03-22' AS Date), CAST(N'2022-08-22' AS Date), 20, 199000, 101, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'GAO877', N'Gạo tẻ tròn Than Uyên', CAST(N'2022-04-13' AS Date), CAST(N'2022-09-13' AS Date), 20, 180000, 101, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'GN001', N'Giò ngựa', CAST(N'2022-05-01' AS Date), CAST(N'2022-11-01' AS Date), 1000, 400000, 101, N'BG098', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'HMK001', N'Hạt mắc khén', CAST(N'2022-05-01' AS Date), CAST(N'2022-11-01' AS Date), 200, 50000, 104, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'KQ001', N'Khổ qua sấy cắt lát', CAST(N'2022-06-01' AS Date), CAST(N'2022-12-01' AS Date), 500, 100000, 106, N'BG098', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'LS001', N'Lạp sườn hun khói Tây Bắc', CAST(N'2022-04-01' AS Date), CAST(N'2022-10-01' AS Date), 500, 350000, 103, N'TH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'MAN001', N'Măng khô rừng', CAST(N'2022-06-01' AS Date), CAST(N'2022-12-01' AS Date), 500, 300000, 103, N'BG098', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'MAN002', N'Măng nứa khô', CAST(N'2022-06-01' AS Date), CAST(N'2022-12-01' AS Date), 300, 150000, 103, N'BG098', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'MAN003', N'Măng rối sợi non', CAST(N'2022-06-01' AS Date), CAST(N'2023-06-01' AS Date), 300, 100000, 103, N'BG098', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'MC001', N'Quả mắc ca', CAST(N'2022-05-01' AS Date), CAST(N'2022-11-01' AS Date), 500, 150000, 103, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'MD001', N'Miến dong Bình Lư', CAST(N'2022-04-01' AS Date), CAST(N'2022-10-01' AS Date), 1000, 90000, 103, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'MNR001', N'Mộc nhĩ rừng', CAST(N'2022-05-01' AS Date), CAST(N'2022-11-01' AS Date), 500, 100000, 103, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'SAM001', N'Sâm Lai Châu mật ong', CAST(N'2022-05-01' AS Date), CAST(N'2022-11-01' AS Date), 200, 500000, 105, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'TL001', N'Thịt ba chỉ hun khói', CAST(N'2022-04-01' AS Date), CAST(N'2022-10-01' AS Date), 500, 250000, 103, N'TH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'TL002', N'Thịt lợn sấy', CAST(N'2022-04-01' AS Date), CAST(N'2022-11-01' AS Date), 500, 350000, 103, N'BG098', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'TM001', N'Táo mèo khô Mý Dao', CAST(N'2022-04-01' AS Date), CAST(N'2022-10-01' AS Date), 500, 60000, 105, N'TH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'TQ001', N'Thảo quả Lai Châu', CAST(N'2022-06-01' AS Date), CAST(N'2022-10-01' AS Date), 250, 55000, 104, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'TRA001', N'Bộ hộp quà Trà Cổ Thụ', CAST(N'2022-04-01' AS Date), CAST(N'2022-12-01' AS Date), 200, 1100000, 106, N'TN001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'TRA002', N'Trà cổ thụ Sà Dề Phìn', CAST(N'2022-06-01' AS Date), CAST(N'2023-06-01' AS Date), 150, 300000, 106, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'TRA003', N'Trà Sơn mật Hồng Sâm', CAST(N'2022-06-01' AS Date), CAST(N'2023-06-01' AS Date), 200, 195000, 101, N'LC001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'TT001', N'Thịt trâu sấy Lai Châu', CAST(N'2022-05-01' AS Date), CAST(N'2022-11-01' AS Date), 500, 550000, 103, N'BG098', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [NgaySX], [NgayHHSD], [SoLuong], [GiaBan], [MaLoai], [NSX], [HinhAnh]) VALUES (N'XO001', N'Xoài sấy dẻo', CAST(N'2022-06-01' AS Date), CAST(N'2022-12-01' AS Date), 500, 185000, 102, N'TH002', NULL)
GO
INSERT [dbo].[NhaSanXuat] ([MaNSX], [Ten], [Email], [DiaChi], [SDT]) VALUES (N'BG098', N'Công ty Nông sản Bắc Giang', N'NSBG98@gmail.com', N'Thị trấn Phồn Xương, Huyện Yên Thế, tỉnh Bắc Giang', N'0912335267')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [Ten], [Email], [DiaChi], [SDT]) VALUES (N'LC001', N'Công Ty CP Nông Sản Lai Châu', N'LCCP123@gmail.com', N'Bản Hô Ta, TT. Tam Đường, H. Tam Đường, Lai Châu', N' 021337776')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [Ten], [Email], [DiaChi], [SDT]) VALUES (N'NA001', N'Công ty CP Lương thực Vật tư nông nghiệp Nghệ An', N'NATTP37@gmail.com', N'Xã Nghi Long, huyện Nghi Lộc, tỉnh Nghệ An', N'0321564898')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [Ten], [Email], [DiaChi], [SDT]) VALUES (N'NB001', N' 	

Công ty TNHH phát triển Minh Quang', N'NBMQ35@gmail.com', N' xã Khánh Vân, huyện Yên Khánh, tỉnh Ninh Bình', N'0972038066')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [Ten], [Email], [DiaChi], [SDT]) VALUES (N'TH002', N'Công Ty CP Chế Biến Nông Lâm Sản CM Thanh Hóa', N'THNLS36@gmail.com', N'Xã Tế Lợi, Huyện Nông Cống, Tỉnh Thanh Hoá ', N'2802962502')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [Ten], [Email], [DiaChi], [SDT]) VALUES (N'TN001', N'Công ty TNHH nông sản Thái Nguyên', N'HYMV89@gmail.com', N'Xã Đồng Liên, TP Thái Nguyên, tỉnh Thái Nguyên', N'338613333')
GO
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User001', N'HaiNQ', N'000', N'KH002')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User002', N'ToanNV', N'001', N'KH003')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User003', N'QuanMH', N'002', N'KH004')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User004', N'ThanhVN', N'003', N'KH005')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User005', N'DucLH', N'004', N'KH006')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User006', N'VinhLC', N'005', N'KH007')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User007', N'HaiQN', N'006', N'KH008')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User008', N'PhuongNC', N'007', N'KH009')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User009', N'DungDH', N'008', N'KH010')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User010', N'HoangNT', N'009', N'KH011')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User011', N'LinhNT', N'010', N'KH012')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User012', N'DucNA', N'011', N'KH013')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User013', N'TrongTD', N'012', N'KH014')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User014', N'DucNH', N'013', N'KH015')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User015', N'HauDV', N'014', N'KH016')
INSERT [dbo].[TaiKhoan] ([MaTK], [TenDN], [MatKhau], [MaKH]) VALUES (N'User016', N'LamDV', N'015', N'KH017')
GO
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'001', CAST(N'2022-07-05' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'001', CAST(N'2022-08-05' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'002', CAST(N'2022-01-02' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'002', CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'003', CAST(N'2022-06-08' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'003', CAST(N'2022-06-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'004', CAST(N'2022-01-02' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'005', CAST(N'2022-02-04' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'006', CAST(N'2022-02-11' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'007', CAST(N'2022-03-08' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'007', CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'008', CAST(N'2022-01-18' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'008', CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'009', CAST(N'2022-03-03' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'009', CAST(N'2022-03-06' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'010', CAST(N'2022-03-01' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'010', CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'011', CAST(N'2022-04-16' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'011', CAST(N'2022-04-18' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'012', CAST(N'2022-01-29' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'012', CAST(N'2022-02-01' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'013', CAST(N'2022-02-16' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'013', CAST(N'2022-02-20' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'014', CAST(N'2022-03-07' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'014', CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'015', CAST(N'2022-05-01' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'015', CAST(N'2022-05-04' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'016', CAST(N'2022-06-16' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'016', CAST(N'2022-06-20' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'017', CAST(N'2022-02-01' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'017', CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'018', CAST(N'2022-02-24' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'018', CAST(N'2022-03-01' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'019', CAST(N'2022-01-11' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'019', CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'020', CAST(N'2022-03-17' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'020', CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'021', CAST(N'2022-01-20' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'021', CAST(N'2022-01-30' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'022', CAST(N'2022-02-14' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'023', CAST(N'2022-01-04' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'024', CAST(N'2022-03-05' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'024', CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'025', CAST(N'2022-05-05' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'025', CAST(N'2022-05-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'026', CAST(N'2022-04-09' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'026', CAST(N'2022-04-14' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'027', CAST(N'2022-01-11' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'027', CAST(N'2022-01-16' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'028', CAST(N'2022-03-09' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'029', CAST(N'2022-05-16' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'029', CAST(N'2022-05-21' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'030', CAST(N'2022-01-10' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'030', CAST(N'2022-01-15' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'031', CAST(N'2022-03-10' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'031', CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'032', CAST(N'2022-06-12' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'033', CAST(N'2022-01-23' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'033', CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'034', CAST(N'2022-03-17' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'034', CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'035', CAST(N'2022-04-16' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'035', CAST(N'2022-04-21' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'036', CAST(N'2022-01-19' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'036', CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'037', CAST(N'2022-03-01' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'038', CAST(N'2022-03-02' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'038', CAST(N'2022-03-09' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'039', CAST(N'2022-03-30' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'039', CAST(N'2022-04-05' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'040', CAST(N'2022-04-06' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'040', CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'041', CAST(N'2022-01-28' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'042', CAST(N'2022-03-01' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'042', CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'043', CAST(N'2022-04-16' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'043', CAST(N'2022-04-20' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'044', CAST(N'2022-05-02' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'044', CAST(N'2022-05-06' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'045', CAST(N'2022-01-24' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'045', CAST(N'2022-01-30' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'046', CAST(N'2022-02-16' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'046', CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'047', CAST(N'2022-04-04' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'047', CAST(N'2022-04-10' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'048', CAST(N'2022-01-14' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'048', CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'049', CAST(N'2022-03-12' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'050', CAST(N'2022-01-24' AS Date), 0)
INSERT [dbo].[TinhTrangDH] ([MaDH], [NgayTao], [TrangThai]) VALUES (N'050', CAST(N'2022-01-29' AS Date), 1)
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MatHang] ([MaMH])
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDH__SoDH__3C69FB99] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK__ChiTietDH__SoDH__3C69FB99]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([HTThanhToan])
REFERENCES [dbo].[HTThanhToan] ([MaTT])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([KhachHang])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__DonHang__49C3F6B7] FOREIGN KEY([DonHang])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__DonHang__49C3F6B7]
GO
ALTER TABLE [dbo].[MatHang]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiHang] ([MaLoai])
GO
ALTER TABLE [dbo].[MatHang]  WITH CHECK ADD FOREIGN KEY([NSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[TinhTrangDH]  WITH CHECK ADD  CONSTRAINT [FK__TTDonHang__SoDH__3A81B327] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[TinhTrangDH] CHECK CONSTRAINT [FK__TTDonHang__SoDH__3A81B327]
GO
