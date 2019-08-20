--create table category(
--ID int primary key identity,
--CategoryName nvarchar(200) unique not null,
--)
--create table Countries(
--ID int primary key identity,
--CountryName nvarchar(200) unique not null,
--)
--create table Cities(
--ID int primary key identity,
--CityName nvarchar(200) unique not null,
--Country_ID int references Countries(ID)
--)

--create table Users(
--Name nvarchar(100) not null,
--Surname nvarchar(100) not null,
--Email nvarchar(100) not null unique,
--Phone int not null unique,
--Product_Name nvarchar(100) not null,
--Cat_ID int references category(ID),
--Pro_Image nvarchar(255),
--Createdat datetime,
--Location_ID int references Cities(ID)

--)



--create view Search as
--select 
--concat(Users.Name,' ',Users.Surname)  'Full Rname',
--email,
--Phone,
--Product_Name,
--isnull(Pro_Image, 'no image found') 'Pro_image',
--Createdat,
--category.CategoryName,
--Cities.CityName,
--Countries.CountryName
--from Users
--JOIN category ON category.ID = Users.Cat_ID
--JOIN Cities ON Cities.ID = Users.Location_ID
--JOIN Countries ON Countries.ID = Cities.Country_ID
