--- ý A bảng MOVIE --- 
CREATE TABLE MOVIE (
       MoiveName nvarchar(100) not null PRIMARY KEY,
	   Duration time  ,check(Duration > '1:00:00' ) , 
	   Gene int ,check(Gene between 0 and 8 ) , 
	   Directoi nvarchar(100) , 
	   MoneyMovie decimal  , 
)

INSERT INTO MOVIE VALUES (N'Hàng Xóm', '1:30:00',6, 'David', '1000.6 ' ) 
ALTER TABLE MOVIE ALTER COLUMN MoneyMovie decimal(18,2) 
INSERT INTO MOVIE VALUES (N'Chiến tranh', '1:30:00',6, 'Diego Costa', '1000.6 ' )

--- ý B tạo bảng Actor
CREATE TABLE ACTOR(
       nameActor nvarchar(100) not null PRIMARY KEY, 
	   age int not null , 
	   average  decimal(18, 3) not null , 
	   nationality nvarchar(1000 )not null 
)
 INSERT INTO ACTOR VALUES (N'Mạnh', 23, '50.00', N'Việt Nam' ) 
  INSERT INTO ACTOR VALUES (N'Diego Costa', 33, '400.00', N'Spain' ) 
  INSERT INTO ACTOR VALUES (N'asdas&#%', 33, '400.00', N'Spain' ) 


  --- ý C tạo bàng  ActedIn ---

 CREATE TABLE ActedIn(
         nameMovie nvarchar(100) not null , 
		 nameActor nvarchar(100) not null , 
		 FOREIGN KEY (nameMovie) REFERENCES MOVIE(MoiveName) , 
		 FOREIGN KEY (nameActor) REFERENCES ACTOR(nameActor) ,

 )


 --- thêm trường ImageLink vào bảng MOVIE 
 ALTER TABLE MOVIE ADD ImageLink varchar(100) not null unique 
 --- INSERT vào Movie 
   INSERT INTO MOVIE VALUES (N'Hàng Xóm', '1:30:00',6, 'David', '1000.6 ', 'AAA' ) 
   INSERT INTO MOVIE VALUES (N'Bà Xã @ ', '1:30:00',6, 'David', '1000.6 ', 'AAB' ) 
--- update	tên diễn viên 
UPDATE ACTOR 
SET nameActor = 'Kun '
WHERE age = 33 ; 
 