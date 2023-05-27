-- 1. Xuất ra tình trạng 1 đơn hàng
SELECT MaDH, NgayTao, TrangThai FROM TTDonHang
WHERE MaDH = N'001'
-- 2. Xuất ra các mặt hàng có cùng 1 loại hàng
SELECT * FROM MatHang
WHERE MaLoai = (SELECT MaLoai FROM LoaiHang WHERE TenLoai = N'Thực phẩm khô')
-- 3. Thống kê sản phẩm bán chạy trong một khoảng thời gian nhất định.
SELECT TenMH , SUM(ChiTietDH.SoLuong) AS N'Số Lượng bán được'
FROM  DonHang JOIN ChiTietDH JOIN MatHang 
ON MatHang.MaMH = ChiTietDH.MaMH
ON ChiTietDH.MaDH = DonHang.MaDH
WHERE ChiTietDH.MaDH IN (SELECT MaDH FROM DonHang 
WHERE (NgayDatHang > '2021/12/30' AND NgayDatHang <'2022/4/1'))
GROUP BY TenMH 
ORDER BY SUM(ChiTietDH.SoLuong) DESC
-- 4. Những hóa đơn chi tiết của một khách hàng
SELECT ChiTietDH.MaDH, MatHang.TenMH, MatHang.GiaBan, ChiTietDH.SoLuong, ChiTietDH.SoLuong*MatHang.GiaBan AS N'Thành tiền'
FROM ChiTietDH JOIN MatHang 
ON ChiTietDH.MaMH = MatHang.MaMH
WHERE ChiTietDH.MaDH in (SELECT DonHang.MaDH FROM DonHang WHERE DonHang.MaKH = N'KH002')
ORDER BY MaDH
-- 5. Tổng doanh thu trong một tháng (Tháng 2 năm 2022)
SELECT SUM(ChiTietDH.SoLuong*MatHang.GiaBan) 
FROM ChiTietDH JOIN MatHang 
ON ChiTietDH.MaMH = MatHang.MaMH
WHERE ChiTietDH.MaDH in (SELECT DonHang.MaDH FROM DonHang WHERE (NgayDatHang > '2022-1-31' AND NgayDatHang < '2022-3-1'))
-- 6. Các sản phẩm còn hạn sử dụng ít hơn 1 tháng.
SELECT * FROM MatHang WHERE NgayHHSD<DATEADD(DAY, 30 , GETDATE())
-- 7. Khách hàng mua số sản phẩm nhiều nhất
SELECT KhachHang.HoTen, COUNT(*) AS N'Số mặt hàng đã mua' 
FROM KhachHang JOIN DonHang JOIN ChiTietDH 
ON DonHang.MaDH = ChiTietDH.MaDH
ON KhachHang.MaKH = DonHang.MaKH
GROUP BY KhachHang.HoTen
ORDER BY COUNT(*) DESC
-- 8. Những đơn giao hàng quá 7 ngày.
SELECT * FROM DonHang
WHERE MaDH in (SELECT MaDH FROM TTDonHang WHERE TrangThai = 0 AND NgayTao < DATEADD(DAY,-7,GETDATE()))
AND MaDH NOT in (SELECT MaDH FROM TTDonHang WHERE TrangThai = 1)
-- 9. Xuất tổng tiền của từng đơn hàng của 1 một khách hàng
SELECT DonHang.MaDH, SUM(ChiTietDH.SoLuong * MatHang.GiaBan) + SUM(HoaDon.PhiVanChuyen)/COUNT(*) AS N'Tổng tiền'
FROM HoaDon JOIN DonHang JOIN ChiTietDH JOIN MatHang 
ON ChiTietDH.MaMH = MatHang.MaMH 
ON DonHang.MaDH = ChitietDH.MaDH 
ON DonHang.MaDH = HoaDon.MaDH
WHERE (DonHang.MaKH = N'KH002')
GROUP BY DonHang.MaDH
-- 10. Những khu vực mua hàng nhiều nhất (Tỉnh) 
SELECT DonHang.Tinh, COUNT(*) AS N'Số mặt hàng đã mua' 
FROM DonHang JOIN ChiTietDH 
ON DonHang.MaDH = ChiTietDH.MaDH
GROUP BY DonHang.Tinh
ORDER BY COUNT(*) DESC
-- 11. Xuất ra những mặt hàng bán trong ngày 1/1/2022
SELECT MaMH, TenMH, NgaySX, NgayHHSD, GiaBan
FROM MatHang
WHERE MaMH IN (SELECT MaMH FROM ChiTietDH 
WHERE MaDH IN (SELECT MaDH FROM DonHang 
WHERE NgayDatHang = '1/1/2022'))
-- 12. Đưa ra xu hướng loại hàng trong quý
SELECT TenLoai AS N'Xu hướng' , SUM(ChiTietDH.SoLuong) AS N'Số lượng' 
FROM DonHang JOIN ChiTietDH JOIN MatHang JOIN LoaiHang
ON LoaiHang.MaLoai = MatHang.MaLoai
ON ChiTietDH.MaMH = MatHang.MaMH
ON DonHang.MaDH = ChiTietDH.MaDH
WHERE ChiTietDH.MaDH IN (SELECT MaDH FROM DonHang WHERE (NgayDatHang > '2021/12/30' AND NgayDatHang <'2022/3/4'))
GROUP BY TenLoai 
HAVING SUM(ChiTietDH.SoLuong) = (SELECT MAX(SoLuong) FROM (SELECT TenLoai, SUM(ChiTietDH.SoLuong) AS SoLuong
FROM DonHang JOIN ChiTietDH JOIN MatHang JOIN LoaiHang
ON LoaiHang.MaLoai = MatHang.MaLoai
ON ChiTietDH.MaMH = MatHang.MaMH
ON DonHang.MaDH = ChiTietDH.MaDH
WHERE ChiTietDH.MaDH IN (SELECT MaDH FROM DonHang WHERE (NgayDatHang > '2021/12/30' AND NgayDatHang <'2022/3/4'))
GROUP BY TenLoai)a)
