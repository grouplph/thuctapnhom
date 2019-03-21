﻿--CREATE DATABASE BanDT
USE BanDT
go
CREATE table Account(
Username varchar(30) primary key,
Password varchar(30),
)
go
 insert into Account values('admin','admin')
go
create table Manufacturer(
Id char(10) primary key,
Name nvarchar(50),
Address nvarchar(100),
)
go
insert into Manufacturer values('01','Apple',N'Mĩ')
go
insert into Manufacturer values('02','Samsung ',N'Hàn Quốc')
go
insert into Manufacturer values('03','Xiaomi',N'Trung Quốc')
go
insert into Manufacturer values('04','Sony',N'Nhật Bản')
go
insert into Manufacturer values('05','Asus',N'Trung Quốc')

go
create table Phone(
Id char(10) primary key,
Name nvarchar(50),
Image nvarchar(50),
Manufacturerid char(10) references Manufacturer(id) ,
Price int,
Status nvarchar(50),
Configuration nvarchar(1000)
)
go

insert into Phone values('01','Iphone X', 'IphoneX.jpg','01','24500000','Còn hàng',N'Màn hình:	OLED, 5.8", Super Retina
Hệ điều hành:	iOS 11
Camera sau:	2 camera 12 MP
Camera trước:	7 MP
CPU:	Apple A11 Bionic 6 nhân
RAM:	3 GB
Bộ nhớ trong:	64 GB
Thẻ SIM:	1 Nano SIM, Hỗ trợ 4G
Dung lượng pin:	2716 mAh, có sạc nhanh')
go
insert into Phone values('02','Iphone 8 Plus','Iphone8Plus.jpg','01','23000000','Còn hàng',N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD
Hệ điều hành:	iOS 11
Camera sau:	2 camera 12 MP
Camera trước:	7 MP
CPU:	Apple A11 Bionic 6 nhân
RAM:	3 GB
Bộ nhớ trong:	64 GB
Thẻ SIM:	1 Nano SIM, Hỗ trợ 4G
Dung lượng pin:	2691 mAh, có sạc nhanh')
go
insert into Phone values('03','Iphone 8 ', 'Iphone8.jpg','01','22000000','Còn hàng',N'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD
Hệ điều hành:	iOS 11
Camera sau:	12 MP
Camera trước:	7 MP
CPU:	Apple A11 Bionic 6 nhân
RAM:	2 GB
Bộ nhớ trong:	64 GB
Thẻ SIM:	1 Nano SIM, Hỗ trợ 4G
Dung lượng pin:	1821 mAh, có sạc nhanh')
go
insert into Phone values('09','Iphone Xs 64GB ', '1.png','01','29990000','Còn hàng',N'Màn hình:	OLED, 6.5"
Hệ điều hành:	iOS 12
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	7 MP
CPU:		Apple A12 Bionic 6 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ SIM:	Nano SIM & eSIM, Hỗ trợ 4G
Dung lượng pin:		3174 mAh, 	Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây')
go
insert into Phone values('10','Iphone 7 32GB ', '2.png','01','7999990','Còn hàng',N'Màn hình:LED-backlit IPS LCD, 5.5", Retina HD"
Hệ điều hành:	iOS 12
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	7 MP
CPU:			Apple A10 Fusion 4 nhân 64-bit
RAM:	4 GB
Bộ nhớ trong:	32 GB
Thẻ SIM:	1 Nano SIM, Hỗ trợ 4G
Dung lượng pin:		2900 mAh, 	Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây')
go


insert into Phone values('04','Samsung Galaxy s9 plus ', 'SamSung.jpg','02','23000000','Còn hàng',N'Màn hình:	Super AMOLED, 6.2", Quad HD+ (2K+)
Hệ điều hành:	Android 8.0 (Oreo)
Camera sau:	2 camera 12 MP
Camera trước:	8 MP
CPU:	Exynos 9810 8 nhân 64 bit
RAM:	6 GB
Bộ nhớ trong:	128 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB
Thẻ SIM:	2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
Dung lượng pin:	3500 mAh, có sạc nhanh')
go
insert into Phone values('08','SAMSUNG GALAXY S7 EDGE  ', 'SamSungGLXS7.jpg','02','4200000','Còn hàng',N'Màn hình:	5.5"
Hệ điều hành:	Android 6.0 (Marshmallow)
Camera sau:	12.0 MP
Camera trước:	5 MP
CPU:	Octa-core
RAM:	4 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 200 GB
Thẻ SIM:	1 SIM Nano, Hỗ trợ 4G
Dung lượng pin:	3600mAh, có sạc nhanh')
go
insert into Phone values('11','SAMSUNG GALAXY S10+  ', '3.png','02','5500000','Còn hàng',N'Màn hình:	Dynamic AMOLED, 6.4", Quad HD+ (2K+)"
Hệ điều hành:		Android 9.0 (Pie)
Camera sau:		Chính 12 MP & Phụ 12 MP, 16 MP
Camera trước:	Chính 10 MP & Phụ 8 MP
CPU:	Exynos 9820 8 nhân 64-bit
RAM:	8 GB
Bộ nhớ trong:	128 GB
Thẻ nhớ:		MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:	2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
Dung lượng pin:	4100 mAh, có sạc nhanh')
go
insert into Phone values('12','SAMSUNG GALAXY A10  ', '4.png','02','3500000','Còn hàng',N'Màn hình:	IPS LCD, 6.2", HD+"
Hệ điều hành:			Android 9.0 (Pie)
Camera sau:			13 MP
Camera trước:	5 MP
CPU:	Exynos 7884 8 nhân
RAM:	2 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM: 2 Nano SIM, Hỗ trợ 4G
Dung lượng pin:	3400 mAh')
go
insert into Phone values('13','SAMSUNG GALAXY A10  ', '5.png','02','22900000','Còn hàng',N'Màn hình:	Super AMOLED, 6.4", Quad HD+ (2K+)
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	8 MP
CPU:	Exynos 9810 8 nhân 64-bit
RAM:	6 GB
Bộ nhớ trong:	128 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:
2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
Dung lượng pin:	4000 mAh, có sạc nhanh')
go


insert into Phone values('05','Xiaomi mimix 2s ', 'Xiaomi.jpg','03','13000000','Còn hàng',N'Màn hình:	P-OLED, 5.99", Full HD+
Hệ điều hành:	Android 8.0 (Oreo)
Camera sau:	2 camera 12 MP
Camera trước:	5 MP
CPU:	Snapdragon 845 8 nhân
RAM:	6 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ
Dung lượng pin:	3400 mAh, có sạc nhanh')
go
insert into Phone values('14','Xiaomi Mi 8 Lite ', '6.png','03','5990000','Còn hàng',N'Màn hình:	IPS LCD, 6.26", Full HD+
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 12 MP & Phụ 5 MP
Camera trước:	24 MP
CPU:	Qualcomm Snapdragon 660 8 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB
Thẻ SIM:2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
Dung lượng pin:	3350 mAh, có sạc nhanh')
go
insert into Phone values('06','Sony Xperia XZ2 ', 'Sony.jpg','04','19000000','Còn hàng',N'Màn hình:	IPS HDR LCD, 5.7", Full HD+
Hệ điều hành:	Android 8.0 (Oreo)
Camera sau:	19 MP
Camera trước:	5 MP
CPU:	Snapdragon 845 8 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB
Thẻ SIM:	2 Nano SIM, Hỗ trợ 4G
Dung lượng pin:	3180 mAh, có sạc nhanh')
go
insert into Phone values('15','Sony Xperia L3 ', '7.png','04','6999900','Còn hàng',N'Màn hình:	IPS LCD, 5.7", HD+
Hệ điều hành:	Android 8.0 (Oreo)
Camera sau:	Chính 13 MP & Phụ 2 MP
Camera trước:	8 MP
CPU:	MediaTek MT6762 8 nhân 64-bit (Helio P22)
RAM:	3 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB
Thẻ SIM:2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G
Dung lượng pin:	3180 mAh, có sạc nhanh')
go
insert into Phone values('07','Asus Zenfone 4 Max  ', 'Asus.jpg','05','3900000','Còn hàng',N'Màn hình:	IPS LCD, 5.5", HD
Hệ điều hành:	Android 7.1 (Nougat)
Camera sau:	16 MP và 5 MP (2 camera)
Camera trước:	16 MP
CPU:	Qualcomm Snapdragon 430 8 nhân 64 bit
RAM:	3 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB
Thẻ SIM:
2 Nano SIM, Hỗ trợ 4G
HOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ
Dung lượng pin:	5000 mAh')

go
insert into Phone values('16','ASUS Zenfone Max Pro M1 ', '8.png','05','5900000','Còn hàng',N'Màn hình:	IPS LCD, 6", Full HD+
Hệ điều hành:	Android 8.1 (Oreo)
Camera sau:	Chính 13 MP & Phụ 5 MP
Camera trước:	8 MP
CPU:	Qualcomm Snapdragon 636 8 nhân 64-bit
RAM:	3 GB
Bộ nhớ trong:	32 GB
Thẻ nhớ:	MicroSD, hỗ trợ tối đa 2 TB
Thẻ SIM:2 Nano SIM, Hỗ trợ 4G
Dung lượng pin:	5000 mAh')
go
select * from Phone
go

select * from Phone
go 
create table Customer(
Id char(10) primary key,
Name nvarchar(50),
Address nvarchar(100),
Email nvarchar(100),
Phone char(12)
)
go
create table Purchase(
Id int primary key,
PhoneId char(10) references Phone(id),
CustomerId char(10) references Customer(id),
Date datetime,
Status nvarchar(50)
)
go

go
create proc AccountLogin
@Username varchar(30),
@Password varchar(30)
as
begin
declare @count int
declare @res bit 
select @count = count(*) from Account where Username =@Username and Password = @Password
if(@count>0)
set @res =1
else 
set @res =0
select @res
end

select Phone.Name,Phone.Image,Manufacturer.Name as 'NameNSX',Price,Status,configuration from Phone,Manufacturer where Phone.id = Manufacturer.id