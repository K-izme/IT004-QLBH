IF DB_ID('QLBH') is not null
drop database QLBH

CREATE DATABASE QLBH
GO

USE QLBH
GO

CREATE TABLE KHACHHANG
(
MAKH char(4),
HOTEN varchar(40),
DCHI varchar(50),
SODT varchar(20),
NGSINH smalldatetime,
NGDK smalldatetime,
DOANHSO money,
CONSTRAINT PK_KHACHHANG PRIMARY KEY (MAKH)
)
GO

CREATE TABLE NHANVIEN
(
MANV char(4),
HOTEN varchar(40),
SODT varchar(20),
NGVL smalldatetime,
CONSTRAINT PK_NHANVIEN PRIMARY KEY (MANV)
)
GO

CREATE TABLE HOADON
(
SOHD int,
NGHD smalldatetime,
MAKH char(4),
MANV char(4),
TRIGIA money,
CONSTRAINT PK_HOADON PRIMARY KEY (SOHD)
)
GO

CREATE TABLE CTHD
(
SOHD int,
MASP char(4),
SL int,
CONSTRAINT PK_CTHD PRIMARY KEY (SOHD, MASP),
)
GO

SET DATEFORMAT DMY

 --Nhập dữ liệu cho KHACHHANG--

INSERT INTO KHACHHANG VALUES('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451','22/10/1960','22/07/2006',13060000)
INSERT INTO KHACHHANG VALUES('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','908256478','03/04/1974','30/07/2006',280000)
INSERT INTO KHACHHANG VALUES('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266','12/06/1980','08/05/2006',3860000)
INSERT INTO KHACHHANG VALUES('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','917325476','09/03/1965','10/02/2006',250000)
INSERT INTO KHACHHANG VALUES('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108','10/03/1950','28/10/2006',21000)
INSERT INTO KHACHHANG VALUES('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738','31/12/1981','24/11/2006',915000)
INSERT INTO KHACHHANG VALUES('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','916783565','06/04/1971','12/01/2006',12500)
INSERT INTO KHACHHANG VALUES('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','938435756','10/01/1971','13/12/2006',365000)
INSERT INTO KHACHHANG VALUES('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763','03/09/1979','14/01/2007',70000)
INSERT INTO KHACHHANG VALUES('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','8768904','02/05/1983','16/01/2007',67500)

-- Nhập dữ liệu cho NHANVIEN
INSERT INTO NHANVIEN VALUES('NV01','Nguyen Nhu Nhut','927345678','13/04/2006')
INSERT INTO NHANVIEN VALUES('NV02','Le Thi Phi Yen','987567390','21/04/2006')
INSERT INTO NHANVIEN VALUES('NV03','Nguyen Van B','997047382','27/04/2006')
INSERT INTO NHANVIEN VALUES('NV04','Ngo Thanh Tuan','913758498','24/06/2006')
INSERT INTO NHANVIEN VALUES('NV05','Nguyen Thi Truc Thanh','918590387','20/07/2006')

-- Nhập dữ liệu cho SANPHAM
INSERT INTO SANPHAM VALUES('BC01','But chi','cay','Singapore',3000)
INSERT INTO SANPHAM VALUES('BC02','But chi','cay','Singapore',5000)
INSERT INTO SANPHAM VALUES('BC03','But chi','cay','Viet Nam',3500)
INSERT INTO SANPHAM VALUES('BC04','But chi','hop','Viet Nam',30000)
INSERT INTO SANPHAM VALUES('BB01','But bi','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('BB02','But bi','cay','Trung Quoc',7000)
INSERT INTO SANPHAM VALUES('BB03','But bi','hop','Thai Lan',100000)
INSERT INTO SANPHAM VALUES('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
INSERT INTO SANPHAM VALUES('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
INSERT INTO SANPHAM VALUES('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
INSERT INTO SANPHAM VALUES('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
INSERT INTO SANPHAM VALUES('TV05','Tap 100 trang','chuc','Viet Nam',23000)
INSERT INTO SANPHAM VALUES('TV06','Tap 200 trang','chuc','Viet Nam',53000)
INSERT INTO SANPHAM VALUES('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
INSERT INTO SANPHAM VALUES('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
INSERT INTO SANPHAM VALUES('ST02','So tay loai 1','quyen','Viet Nam',55000)
INSERT INTO SANPHAM VALUES('ST03','So tay loai 2','quyen','Viet Nam',51000)
INSERT INTO SANPHAM VALUES('ST04','So tay','quyen','Thai Lan',55000)
INSERT INTO SANPHAM VALUES('ST05','So tay mong','quyen','Thai Lan',20000)
INSERT INTO SANPHAM VALUES('ST06','Phan viet bang','hop','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST07','Phan khong bui','hop','Viet Nam',7000)
INSERT INTO SANPHAM VALUES('ST08','Bong bang','cai','Viet Nam',1000)
INSERT INTO SANPHAM VALUES('ST09','But long','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST10','But long','cay','Trung Quoc',7000)

-- Nhập dữ liệu cho HOADON
INSERT INTO HOADON VALUES(1001,'23/07/2006','KH01','NV01',320000)
INSERT INTO HOADON VALUES(1002,'12/08/2006','KH01','NV02',840000)
INSERT INTO HOADON VALUES(1003,'23/08/2006','KH02','NV01',100000)
INSERT INTO HOADON VALUES(1004,'01/09/2006','KH02','NV01',180000)
INSERT INTO HOADON VALUES(1005,'20/10/2006','KH01','NV02',3800000)
INSERT INTO HOADON VALUES(1006,'16/10/2006','KH01','NV03',2430000)
INSERT INTO HOADON VALUES(1007,'28/10/2006','KH03','NV03',510000)
INSERT INTO HOADON VALUES(1008,'28/10/2006','KH01','NV03',440000)
INSERT INTO HOADON VALUES(1009,'28/10/2006','KH03','NV04',200000)
INSERT INTO HOADON VALUES(1010,'01/11/2006','KH01','NV01',5200000)
INSERT INTO HOADON VALUES(1011,'04/11/2006','KH04','NV03',250000)
INSERT INTO HOADON VALUES(1012,'30/11/2006','KH05','NV03',21000)
INSERT INTO HOADON VALUES(1013,'12/12/2006','KH06','NV01',5000)
INSERT INTO HOADON VALUES(1014,'31/12/2006','KH03','NV02',3150000)
INSERT INTO HOADON VALUES(1015,'01/01/2007','KH06','NV01',910000)
INSERT INTO HOADON VALUES(1016,'01/01/2007','KH07','NV02',12500)
INSERT INTO HOADON VALUES(1017,'02/01/2007','KH08','NV03',35000)
INSERT INTO HOADON VALUES(1018,'13/01/2007','KH08','NV03',330000)
INSERT INTO HOADON VALUES(1019,'13/01/2007','KH01','NV03',30000)
INSERT INTO HOADON VALUES(1020,'14/01/2007','KH09','NV04',70000)
INSERT INTO HOADON VALUES(1021,'16/01/2007','KH10','NV03',67500)
INSERT INTO HOADON VALUES(1022,'16/01/2007',Null,'NV03',7000)
INSERT INTO HOADON VALUES(1023,'17/01/2007',Null,'NV01',330000)

-- Nhập dữ liệu cho CTHD
INSERT INTO CTHD VALUES(1001,'TV02',10)
INSERT INTO CTHD VALUES(1001,'ST01',5)
INSERT INTO CTHD VALUES(1001,'BC01',5)
INSERT INTO CTHD VALUES(1001,'BC02',10)
INSERT INTO CTHD VALUES(1001,'ST08',10)
INSERT INTO CTHD VALUES(1002,'BC04',20)
INSERT INTO CTHD VALUES(1002,'BB01',20)
INSERT INTO CTHD VALUES(1002,'BB02',20)
INSERT INTO CTHD VALUES(1003,'BB03',10)
INSERT INTO CTHD VALUES(1004,'TV01',20)
INSERT INTO CTHD VALUES(1004,'TV02',10)
INSERT INTO CTHD VALUES(1004,'TV03',10)
INSERT INTO CTHD VALUES(1004,'TV04',10)
INSERT INTO CTHD VALUES(1005,'TV05',50)
INSERT INTO CTHD VALUES(1005,'TV06',50)
INSERT INTO CTHD VALUES(1006,'TV07',20)
INSERT INTO CTHD VALUES(1006,'ST01',30)
INSERT INTO CTHD VALUES(1006,'ST02',10)
INSERT INTO CTHD VALUES(1007,'ST03',10)
INSERT INTO CTHD VALUES(1008,'ST04',8)
INSERT INTO CTHD VALUES(1009,'ST05',10)
INSERT INTO CTHD VALUES(1010,'TV07',50)
INSERT INTO CTHD VALUES(1010,'ST07',50)
INSERT INTO CTHD VALUES(1010,'ST08',100)
INSERT INTO CTHD VALUES(1010,'ST04',50)
INSERT INTO CTHD VALUES(1010,'TV03',100)
INSERT INTO CTHD VALUES(1011,'ST06',50)
INSERT INTO CTHD VALUES(1012,'ST07',3)
INSERT INTO CTHD VALUES(1013,'ST08',5)
INSERT INTO CTHD VALUES(1014,'BC02',80)
INSERT INTO CTHD VALUES(1014,'BB02',100)
INSERT INTO CTHD VALUES(1014,'BC04',60)
INSERT INTO CTHD VALUES(1014,'BB01',50)
INSERT INTO CTHD VALUES(1015,'BB02',30)
INSERT INTO CTHD VALUES(1015,'BB03',7)
INSERT INTO CTHD VALUES(1016,'TV01',5)
INSERT INTO CTHD VALUES(1017,'TV02',1)
INSERT INTO CTHD VALUES(1017,'TV03',1)
INSERT INTO CTHD VALUES(1017,'TV04',5)
INSERT INTO CTHD VALUES(1018,'ST04',6)
INSERT INTO CTHD VALUES(1019,'ST05',1)
INSERT INTO CTHD VALUES(1019,'ST06',2)
INSERT INTO CTHD VALUES(1020,'ST07',10)
INSERT INTO CTHD VALUES(1021,'ST08',5)
INSERT INTO CTHD VALUES(1021,'TV01',7)
INSERT INTO CTHD VALUES(1021,'TV02',10)
INSERT INTO CTHD VALUES(1022,'ST07',1)
INSERT INTO CTHD VALUES(1023,'ST04',6)

--Tuan 1
-- Cau 1. Tạo các quan hệ và khai báo các khóa chính, khóa ngoại của quan hệ.
ALTER TABLE SANPHAM ADD GHICHU varchar(20)
ALTER TABLE KHACHHANG ADD LOAIKH tinyint
ALTER TABLE SANPHAM ALTER COLUMN GHICHU varchar(100)
ALTER TABLE SANPHAM DROP COLUMN GHICHU
ALTER TABLE KHACHHANG ALTER COLUMN LOAIKH VARCHAR(20)
ALTER TABLE SANPHAM ADD CONSTRAINT SANPHAM_DVT CHECK (DVT = 'cay' OR DVT = 'hop' OR DVT = 'cai' OR DVT = 'quyen' OR DVT = 'chuc')
ALTER TABLE SANPHAM ADD CONSTRAINT SANPHAM_GIA CHECK (GIA > 500)
ALTER TABLE CTHD ADD CONSTRAINT CTHD_SL CHECK (SL>=1)
ALTER TABLE KHACHHANG ADD CONSTRAINT KHACHHANG_NGDK_NGSINH CHECK (NGDK > NGSINH)

--Tuan 2

--Phan 2 Cau 2 -> 5 
-- Cau 2. Tạo quan hệ SANPHAM1 chứa toàn bộ dữ liệu của quan hệ SANPHAM. Tạo quan hệ KHACHHANG1 chứa toàn bộ dữ liệu của quan hệ KHACHHANG. 
SELECT * INTO SANPHAM1 FROM SANPHAM
SELECT * INTO KHACHHANG1 FROM KHACHHANG
-- Cau 3. Cập nhật giá tăng 5% đối với những sản phẩm do “Thai Lan” sản xuất (cho quan hệ SANPHAM1)
UPDATE SANPHAM1 
SET GIA = GIA + GIA*(5/100) 
WHERE NUOCSX = 'Thai Lan'
-- Cau 4. Cập nhật giá giảm 5% đối với những sản phẩm do “Trung Quoc” sản xuất có giá từ 10.000 trở xuống (cho quan hệ SANPHAM1).
UPDATE SANPHAM1 
SET GIA = GIA - GIA*(5/100) 
WHERE NUOCSX = 'Trung Quoc' AND GIA < 10000
-- Cau 5. Cập nhật giá trị LOAIKH là “Vip” đối với những khách hàng đăng ký thành viên trước ngày 1/1/2007 có doanh số từ 10.000.000 trở lên hoặc khách hàng đăng ký thành viên từ 1/1/2007 trở về sau có doanh số từ 2.000.000 trở lên (cho quan hệ KHACHHANG1).
UPDATE KHACHHANG1 
SET LOAIKH = 'VIP' 
WHERE (NGDK < '1/1/2007' AND DOANHSO > 10000000) 
OR (NGDK > '1/1/2007' AND DOANHSO > 2000000)

--Phan 3 Cau 1 -> 11
-- Cau 1. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc'
-- Cau 2. In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE (DVT = 'cay' or DVT = 'quyen')
-- Cau 3. In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE MASP LIKE 'B%01'
-- Cau 4. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000 đến 40.000.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE (NUOCSX = 'Trung Quoc') AND (GIA BETWEEN 30000 AND 40000)
-- Cau 5. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất có giá từ 30.000 đến 40.000.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE 
    (NUOCSX = 'Trung Quoc' OR NUOCSX = 'Thai Lan') 
    AND (GIA BETWEEN 30000 AND 40000)
-- Cau 6. In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
SELECT SOHD, TRIGIA 
FROM HOADON 
WHERE 
    (NGHD = '1/1/2007' OR NGHD = '2/1/2007')
-- Cau 7. In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).
SELECT SOHD, TRIGIA 
FROM HOADON 
WHERE 
    (MONTH(NGHD) = 1 AND YEAR(NGHD) = 2007) 
ORDER BY NGHD ASC, TRIGIA DESC
-- Cau 8. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
SELECT KHACHHANG.MAKH, HOTEN 
FROM KHACHHANG, HOADON 
WHERE 
    KHACHHANG.MAKH = HOADON.MAKH 
    AND HOADON.NGHD = '1/1/2007'
-- Cau 9. In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày 28/10/2006.
SELECT SOHD, TRIGIA 
FROM NHANVIEN, HOADON 
WHERE 
    NHANVIEN.HOTEN = 'Nguyen Van B' 
    AND HOADON.MANV = NHANVIEN.MANV 
    AND NGHD = '28/10/2006'
-- Cau 10. In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.
SELECT distinct SANPHAM.MASP, TENSP 
FROM KHACHHANG, HOADON, SANPHAM, CTHD
WHERE 
    HOADON.MAKH = KHACHHANG.MAKH
    and CTHD.SOHD = HOADON.SOHD
    and CTHD.MASP = SANPHAM.MASP 
    AND KHACHHANG.HOTEN = 'Nguyen Van A' 
    AND YEAR(NGHD) = 2006 
    AND MONTH(NGHD) = 10
-- Cau 11. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
SELECT SOHD 
FROM CTHD 
WHERE MASP IN ('BB01', 'BB02')

--Tuan 3
-- Phan 3 cau 12 - 13
-- Cau 12. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT SOHD 
FROM CTHD 
WHERE 
    MASP IN ('BB01', 'BB02') 
    AND (SL BETWEEN 10 AND 20)
-- Cau 13. Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT SOHD 
FROM CTHD 
WHERE 
    (MASP = 'BB01' AND MASP = 'BB02') 
    AND (SL BETWEEN 10 AND 20)
-- Phan 3 cau 14 - 19
-- Cau 14. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được bán ra trong ngày 1/1/2007.
SELECT distinct SANPHAM.MASP, TENSP 
FROM SANPHAM, HOADON, CTHD 
WHERE 
    SANPHAM.MASP = CTHD.MASP 
    AND HOADON.SOHD = CTHD.SOHD 
    and NUOCSX ='Trung Quoc' OR HOADON.NGHD = '1/1/2007'
-- Cau 15. In ra danh sách các sản phẩm (MASP,TENSP) không bán được.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE 
    MASP NOT IN (SELECT MASP FROM CTHD)
-- Cau 16. In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE 
    MASP NOT IN
        (   
        SELECT MASP FROM CTHD, HOADON
        WHERE CTHD.SOHD = HOADON.SOHD
        AND YEAR(NGHD) = 2006
        )
-- Cau 17. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm 2006.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE 
    NUOCSX = 'Trung Quoc' AND MASP NOT IN
        (
        SELECT MASP FROM CTHD, HOADON
        WHERE CTHD.SOHD = HOADON.SOHD
        AND YEAR(NGHD) = 2006
        )
-- Cau 18. Tìm số hóa đơn đã mua tất cả các sản phẩm do Singapore sản xuất.
SELECT SOHD 
FROM HOADON
WHERE NOT EXISTS
    (
    SELECT * FROM SANPHAM
    WHERE NUOCSX = 'Singapore'
    AND NOT EXISTS
	    (
		    SELECT *
		    FROM CTHD
		    WHERE CTHD.SOHD = HOADON.SOHD
		    AND CTHD.MASP = SANPHAM.MASP
	    )
    )
-- Cau 19. Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.
SELECT SOHD 
FROM HOADON
WHERE NOT EXISTS
    (
    SELECT * FROM SANPHAM
    WHERE NUOCSX = 'Singaprore'
    AND NOT EXISTS
        (
	    SELECT *
	    FROM CTHD, HOADON
	    WHERE CTHD.SOHD = HOADON.SOHD
	    AND YEAR(NGHD) = 2006
	    AND CTHD.MASP = SANPHAM.MASP
        )
    )

-- Tuan 4 cau 20 - 30
-- Cau 20. Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
select count(*)
from HOADON
where 
    MAKH is NULL
-- Cau 21. Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
select count(distinct MASP)
from HOADON, CTHD
where 
	HOADON.SOHD = CTHD.SOHD
	and year(NGHD) = 2006
-- Cau 22. Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?
select max(TRIGIA) max_trigia, min (TRIGIA) min_trigia 
from HOADON
-- Cau 23. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
select avg(TRIGIA)
from HOADON 
where 
    year(NGHD) = 2006
-- Cau 24. Tính doanh thu bán hàng trong năm 2006.
select sum(TRIGIA)
from HOADON
where 
    year(NGHD)= 2006
-- Cau 25. Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
select max(TRIGIA)
from HOADON
where 
    year(NGHD) = 2006
-- Cau 26. Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
select distinct HOTEN
from KHACHHANG, HOADON
WHERE 
	HOADON.MAKH = KHACHHANG.MAKH
	AND YEAR(NGHD) = 2006
	AND TriGia >= all 
        (
<<<<<<< Updated upstream
        SELECT TRIGIA 
=======
        SELECT MAX(TRIGIA) 
>>>>>>> Stashed changes
        FROM HoaDon WHERE YEAR(NGHD) = 2006
        )
-- Cau 27. In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.
select top 3 MAKH, HOTEN
from KHACHHANG
order by DOANHSO desc
-- Cau 28. In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
select MASP, TENSP
from SANPHAM
where GIA in
	(
	select distinct top 3 GIA
	from SANPHAM
	order by GIA desc
	)
-- Cau 29. In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).
select MASP, TENSP
from SANPHAM
where 
    GIA in
	    (
	    select distinct top 3 GIA
	    from SANPHAM
	    order by GIA desc
	    )
	and NUOCSX = 'Thai Lan'
-- Cau 30. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).
select MASP, TENSP
from SANPHAM
where 
    GIA in
	    (
	    select distinct top 3 GIA
	    from SANPHAM
	    where NUOCSX = 'Trung Quoc' 
	    order by GIA desc
	    )
	and NUOCSX = 'Trung Quoc'
-- Cau 31. * In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng).
select top 3 *
from KHACHHANG
order by DOANHSO desc
-- Cau 32. Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
select count(*)
from SANPHAM
where 
    NUOCSX = 'Trung Quoc'
-- Cau 33. Tính tổng số sản phẩm của từng nước sản xuất.
select NUOCSX, count(*) SOSP
from SANPHAM
group by NUOCSX
-- Cau 34. Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.
select NUOCSX, max(GIA) Max_GIA, min(GIA) Min_GIA, avg(GIA) Avg_Gia
from SANPHAM
group by NUOCSX
-- Cau 35. Tính doanh thu bán hàng mỗi ngày.
select NGHD, sum(TRIGIA) DOANHTHU
from HOADON
group by NGHD
-- Cau 36. Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.
select SANPHAM.MASP, sum(SL) SOLUONGBANRA
from SANPHAM, HOADON, CTHD
where 
    SANPHAM.MASP = CTHD.MASP
	and HOADON.SOHD = CTHD.SOHD
	and month(NGHD) = 10 and year (NGHD) = 2006
group by SANPHAM.MASP
-- Cau 37. Tính doanh thu bán hàng của từng tháng trong năm 2006.
select month(NGHD) THANG, sum(TRIGIA) DOANHTHU
from HOADON
where year(NGHD) = 2006
group by month(NGHD)
-- Cau 38. Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
select SOHD 
from CTHD
group by SOHD
having count(distinct CTHD.MASP) >= 4
-- Cau 39. Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).
select SOHD
from CTHD, SANPHAM
where 
    CTHD.MASP = SANPHAM.MASP
	and NUOCSX = 'Viet Nam'
group by SOHD
having count(distinct CTHD.MASP) >= 3
-- Cau 40. Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.
select KHACHHANG.MAKH, HOTEN
from KHACHHANG, HOADON
where KHACHHANG.MAKH = HOADON.MAKH
group by KHACHHANG.MAKH, HOTEN
having count(*) >= all(select count(*) from HOADON group by MAKH)
-- Cau 41. Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?
select month(NGHD)
from HOADON
where year(NGHD) = 2006
group by month(NGHD)
having sum(TRIGIA) >= all
    (
    select sum(TRIGIA) 
    from HOADON 
    where 
        year(NGHD) = 2006  
    group by month(NGHD)
    )
-- Cau 42. Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.
select top 1 with ties SANPHAM.MASP, TENSP
from SANPHAM, CTHD, HOADON
where 
    SANPHAM.MASP = CTHD.MASP
    and HOADON.SOHD = CTHD.SOHD
    and year(NGHD) = 2006
group by SANPHAM.MASP, TENSP
order by sum(SL)
-- Cau 43. *Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.
select NUOCSX, MASP, TENSP
from SANPHAM S1
where exists
    (
    select NUOCSX
    from SANPHAM S2
    group by NUOCSX
    having 
        S1.NUOCSX = S2.NUOCSX
        and S1.GIA = max(GIA)
    ) 
-- Cau 44. Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.
select NUOCSX
from SANPHAM
group by NUOCSX
having count(distinct GIA) > 3
-- Cau 45. *Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
select *
from KHACHHANG
where MAKH in
    (
    select top 1 with ties HOADON.MAKH
    from 
        (
        select top 10 MAKH
        from KHACHHANG
        order by DOANHSO desc
        ) as A
    join HOADON ON A.MAKH = HOADON.MAKH
    group by HOADON.MAKH
    order by count(*) desc
    )
    
-- Tuan 5
-- Cau 11 - 14
-- Cau 11. Ngày mua hàng (NGHD) của một khách hàng thành viên sẽ lớn hơn hoặc bằng ngày khách hàng đó đăng ký thành viên (NGDK).
-- trigger: them, sua ngayhd cua hoadon
create trigger trg_ins_upd_NGHD 
on HOADON
for insert, update
as
begin
	if (exists(select * from KHACHHANG kh, inserted i
					where kh.MAKH = i.MAKH
                    and kh.NGDK > i.NGHD))
    begin 
        print 'NGHD phai >= NGDK'
        rollback transaction
    end
end
-- Cach 2
create trigger trg_ins_upd_NGHD
on HOADON
for update, insert
as
begin
    declare @nghd smalldatetime,
            @ngdk smalldatetime
    select @nghd = NGHD, ngdk = NGDK
    from KHACHHANG, inserted
    where
        inserted.MAKH = KHACHHANG.MAKH
    if (@nghd < @ngdk) 
    begin
        print 'nghd phai lon hon ngdk'
        rollback transaction
    end
end

-- Cau 12. Ngày bán hàng (NGHD) của một nhân viên phải lớn hơn hoặc bằng ngày nhân viên đó vào làm.
-- Them them, sua nghd cua hoadon
create trigger trg_ins_upd_NGHD_VL
on HOADON
for insert, update
as
begin 
    if (exists(select * from NHANVIEN nv, inserted i
                    where nv.MANV = i.MANV
                    and nv.NGVL > i.NGHD ))
    begin
        print 'Ngay vao lam phai < = nghd'
        rollback transaction
    end
end
-- Cach 2
create trigger trg_ins_upd_NGHD_VL
on HOADON
for insert, update
as
begin
    declare @nghd smalldatetime,
            @ngvl smalldatetime
    select @nghd = NGHD, @ngvl = NGVL
    from NHANVIEN, inserted
    where
        inserted.MANV = NHANVIEN.MANV
    if (@nghd < @ngvl)
    begin
        print 'Nghd phai lon hon ngay vao lam'
        rollback transaction
    end
end
-- Cau 13. Mỗi một hóa đơn phải có ít nhất một chi tiết hóa đơn.
-- Xoa cthd 
create trigger trg_del_CTHD
on CTHD
for delete
as
begin
    declare @sl tinyint,
            @sohd int
    select @sl = count(cthd.SOHD), @sohd = d.SOHD
    from deleted d, CTHD cthd
    where 
        cthd.SOHD = d.SOHD
    group by d.SOHD
    if (@sl < 1)
    begin
        print 'Phai co it nhat 1 cthd'
        rollback transaction
    end
end

-- Cau 14. Trị giá của một hóa đơn là tổng thành tiền (số lượng*đơn giá) của các chi tiết thuộc hóa đơn đó.
-- Them HOADON tri gia = 0
create trigger trg_ins_HOADON
on HOADON
for insert
as
begin
    update HOADON
    set TRIGIA = 0
    where 
        SOHD = (select SOHD from inserted)
    
    print 'Da tao 1 hoa don voi gia tri hoa don ban dau la 0'
end

-- Update Hoadon
create trigger trg_upd_HOADON
on HOADON
for update
as
begin
    update HOADON
    set TRIGIA = (select TRIGIA from deleted)
    where SOHD = (select SOHD from inserted)
    print 'update 1 hoa don voi gia tri khong doi'
end

-- Them cthd
create trigger trg_ins_CTHD
on CTHD
for insert
as
begin
    declare @sl tinyint,
            @gia money,
            @sohd int
    select @gia = GIA, @sohd = SOHD, @sl = SL
    from inserted i, SANPHAM sp
    where
        i.MASP = sp.MASP
    begin
        update HOADON
        set TRIGIA += @sl*@gia
        print 'Da them 1 cthd va sua tri gia hoa don tuong ung'
    end
end

-- Xoa cthd
create trigger trg_del_CTHD
on CTHD
for delete
as
begin
    declare @sl tinyint,
            @gia money,
            @sohd int
    select @gia = GIA, @sohd = SOHD, @sl = SL
    from deleted d, SANPHAM sp
    where
        d.MASP = sp.MASP
    begin
        update HOADON
        set TRIGIA -= @sl*@gia
        print 'Da xoa 1 cthd va  sua tri gia hoa don tuong ung'
    end
end

-- Sua cthd
create trigger trg_upd_CTHD
on CTHD
for delete
as
begin
    declare @sl_cu tinyint,
            @sl_moi tinyint,
            @gia money,
            @sohd_cu int,
            @sohd_moi int
    select @gia = GIA, @sohd_cu = SOHD, @sl_cu = SL
    from deleted d, SANPHAM sp
    where
        d.MASP = sp.MASP
    
    select @gia = GIA, @sohd_moi = SOHD, @sl_moi = SL
    from inserted i, SANPHAM sp
    where
        i.MASP = sp.MASP
    
    if (@sohd_cu = @sohd_moi)
    begin
        update HOADON
        set TRIGIA = TRIGIA - @sl_cu*@gia + @sl_moi*@gia
        print 'Da sua 1 cthd va  sua tri gia hoa don tuong ung'
    end
end

