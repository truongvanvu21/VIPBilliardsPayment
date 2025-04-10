USE [VIPBilliardsPaymentDB]
GO
SET IDENTITY_INSERT [dbo].[MatHang] ON 

INSERT [dbo].[MatHang] ([MaHang], [TenHang], [DonGia]) VALUES (1, N'Coca-Cola', 25000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [DonGia]) VALUES (2, N'Pepsi', 30000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [DonGia]) VALUES (3, N'RedBull', 40000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [DonGia]) VALUES (4, N'Fanta', 30000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [DonGia]) VALUES (5, N'Bún đậu nắm tôm', 50000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [DonGia]) VALUES (6, N'Bạc xỉu', 50000)
INSERT [dbo].[MatHang] ([MaHang], [TenHang], [DonGia]) VALUES (7, N'Trà đá', 60000)
SET IDENTITY_INSERT [dbo].[MatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuNgan] ON 

INSERT [dbo].[ThuNgan] ([MaThuNgan], [HoTen], [NgaySinh], [GioiTinhNu], [Email], [SoDienThoai], [SoCCCD], [TenDangNhap], [MatKhau]) VALUES (1, N'Phạm Ngọc Mộng Phước', CAST(N'2004-03-15' AS Date), 1, N'phuocpham@gmail.com', N'0782730023', N'123456789012', N'btyDZ', N'$2a$10$6muio5QuRioIvsvSZVKZT.6P7EdpjX5CdBvEj9pCuQtD2bLds04s6')
INSERT [dbo].[ThuNgan] ([MaThuNgan], [HoTen], [NgaySinh], [GioiTinhNu], [Email], [SoDienThoai], [SoCCCD], [TenDangNhap], [MatKhau]) VALUES (2, N'Nguyễn Thị Thanh Nhi', CAST(N'2004-07-15' AS Date), 1, N'thanhei@gmail.com', N'0777195980', N'123456789013', N'thanhnhiNguyen', N'$2a$10$zV.O.lckMlEnJF9CnFajC.ckc0u1O2DLN6x.OcsmXYWExFQKvR92q')
INSERT [dbo].[ThuNgan] ([MaThuNgan], [HoTen], [NgaySinh], [GioiTinhNu], [Email], [SoDienThoai], [SoCCCD], [TenDangNhap], [MatKhau]) VALUES (3, N'Khánh Linh', CAST(N'2005-09-28' AS Date), 1, N'klynhh289@gmail.com', N'0777888111', N'197426789013', N'khanhlinh', N'$2a$10$mnkbOxSFkMo8wlbNTVwOVeRWMO7m8radwewKpHAItN9U6Yi.JPvNC')
SET IDENTITY_INSERT [dbo].[ThuNgan] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiBan] ON 

INSERT [dbo].[LoaiBan] ([LoaiBan], [TenLoai], [DonGia]) VALUES (1, N'Thường', 65000)
INSERT [dbo].[LoaiBan] ([LoaiBan], [TenLoai], [DonGia]) VALUES (2, N'VIP', 100000)
SET IDENTITY_INSERT [dbo].[LoaiBan] OFF
GO
SET IDENTITY_INSERT [dbo].[BanBida] ON 

INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (1, 1, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (2, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (3, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (4, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (5, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (6, 0, 2)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (7, 0, 2)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (8, 2, 2)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (9, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (10, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (11, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (12, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (13, 0, 2)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (14, 0, 2)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (15, 0, 1)
INSERT [dbo].[BanBida] ([SoBan], [TrangThai], [LoaiBan]) VALUES (16, 0, 1)
SET IDENTITY_INSERT [dbo].[BanBida] OFF
GO
SET IDENTITY_INSERT [dbo].[CapDoHoiVien] ON 

INSERT [dbo].[CapDoHoiVien] ([CapDo], [TenCapDo], [SoGioChoi], [UuDai]) VALUES (1, N'NEWBIE', 0, 0.05)
INSERT [dbo].[CapDoHoiVien] ([CapDo], [TenCapDo], [SoGioChoi], [UuDai]) VALUES (2, N'PRO', 100, 0.2)
INSERT [dbo].[CapDoHoiVien] ([CapDo], [TenCapDo], [SoGioChoi], [UuDai]) VALUES (3, N'VIP', 500, 0.4)
SET IDENTITY_INSERT [dbo].[CapDoHoiVien] OFF
GO
SET IDENTITY_INSERT [dbo].[HoiVien] ON 

INSERT [dbo].[HoiVien] ([MaHoiVien], [HoTen], [Email], [SoDienThoai], [SoCCCD], [SoGioChoi], [NgayDangKy], [CapDo]) VALUES (1, N'Võ Hoàng Minh', N'vohoangminh11021@gmail.com', N'0945612355', N'123456789129', 0.83577583333333338, CAST(N'2025-04-10' AS Date), 1)
INSERT [dbo].[HoiVien] ([MaHoiVien], [HoTen], [Email], [SoDienThoai], [SoCCCD], [SoGioChoi], [NgayDangKy], [CapDo]) VALUES (2, N'Lê Phương Thảo', N'locdepzai@gmail.com', N'0945612455', N'123456789188', 0.91204666666666667, CAST(N'2025-04-10' AS Date), 1)
INSERT [dbo].[HoiVien] ([MaHoiVien], [HoTen], [Email], [SoDienThoai], [SoCCCD], [SoGioChoi], [NgayDangKy], [CapDo]) VALUES (3, N'Ngô Diễm Khánh Quỳnh', N'quynh19@gmail.com', N'0777195980', N'123053789188', 0, CAST(N'2025-04-10' AS Date), 1)
INSERT [dbo].[HoiVien] ([MaHoiVien], [HoTen], [Email], [SoDienThoai], [SoCCCD], [SoGioChoi], [NgayDangKy], [CapDo]) VALUES (4, N'Võ Ngọc Châu', N'chauVo@gmail.com', N'0777295980', N'923053709188', 0.91848166666666664, CAST(N'2025-04-10' AS Date), 1)
INSERT [dbo].[HoiVien] ([MaHoiVien], [HoTen], [Email], [SoDienThoai], [SoCCCD], [SoGioChoi], [NgayDangKy], [CapDo]) VALUES (5, N'Trần Thị Anh Thư', N'ThuTran@gmail.com', N'0768445464', N'983053709188', 0, CAST(N'2025-04-10' AS Date), 1)
SET IDENTITY_INSERT [dbo].[HoiVien] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [ThoiDiemVao], [ThoiDiemRa], [TrangThai], [SoGioChoi], [TongTien], [SoBan], [MaHoiVien], [MaThuNgan]) VALUES (4, CAST(N'2025-04-10T11:16:11.160' AS DateTime), CAST(N'2025-04-10T11:32:54.090' AS DateTime), 1, 0.83577583333333338, 51609.157708333332, 1, 1, 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [ThoiDiemVao], [ThoiDiemRa], [TrangThai], [SoGioChoi], [TongTien], [SoBan], [MaHoiVien], [MaThuNgan]) VALUES (5, CAST(N'2025-04-10T11:16:27.647' AS DateTime), CAST(N'2025-04-10T11:34:42.103' AS DateTime), 1, 0.91204666666666667, 56318.881666666668, 2, 2, 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [ThoiDiemVao], [ThoiDiemRa], [TrangThai], [SoGioChoi], [TongTien], [SoBan], [MaHoiVien], [MaThuNgan]) VALUES (6, CAST(N'2025-04-10T11:16:46.707' AS DateTime), CAST(N'2025-04-10T11:35:21.517' AS DateTime), 1, 0.9290075, 92900.75, 6, NULL, 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [ThoiDiemVao], [ThoiDiemRa], [TrangThai], [SoGioChoi], [TongTien], [SoBan], [MaHoiVien], [MaThuNgan]) VALUES (7, CAST(N'2025-04-10T11:17:13.133' AS DateTime), CAST(N'2025-04-10T11:35:35.310' AS DateTime), 1, 0.91848166666666664, 87255.758333333331, 7, 4, 2)
INSERT [dbo].[HoaDon] ([MaHoaDon], [ThoiDiemVao], [ThoiDiemRa], [TrangThai], [SoGioChoi], [TongTien], [SoBan], [MaHoiVien], [MaThuNgan]) VALUES (8, CAST(N'2025-04-10T14:28:32.483' AS DateTime), NULL, 0, NULL, NULL, 1, NULL, 3)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[MatHangTrongHoaDon] ([MaHang], [MaHoaDon], [SoLuong]) VALUES (1, 8, 2)
INSERT [dbo].[MatHangTrongHoaDon] ([MaHang], [MaHoaDon], [SoLuong]) VALUES (2, 8, 1)
GO
SET IDENTITY_INSERT [dbo].[ChuQuan] ON 

INSERT [dbo].[ChuQuan] ([MaChuQuan], [TenDangNhap], [MatKhau]) VALUES (1, N'admin', N'$2a$10$HhimQmPdvzqGADnpiyvXi.Lleav0HcnGeYaHNJQq5YTc.L/5T4d.m')
SET IDENTITY_INSERT [dbo].[ChuQuan] OFF
GO
