
Create database db_bookStore
go

use db_bookStore
go

create table tbl_Library_Branch (
	BranchID int primary key not null identity (1,1),
	BranchName varchar(50) not null,
	BranchAddress varchar(50) not null
);

create table tbl_Book_Copies (
	BookID int not null,
	BranchID int not null,
	Copies_Num int not null
);

create table tbl_Publisher (
	PubName varchar(50) primary key not null,
	PubAddress varchar(50) not null,
	PubPhone varchar(50) not null
);

create table tbl_Book_Loan (
	BookID int not null,
	BranchID int not null,
	CardNo int not null,
	DateOut varchar(50) not null,
	DateDue varchar(50) not null
);

create table tbl_Books (
	BookID int primary key not null identity (101,1),
	BookTitle varchar(250) not null,
	PubName varchar(50) not null
);

create table tbl_Borrower (
	CardNo int primary key not null,
	PersonName varchar(50) not null,
	PersonAddress varchar(50) not null,
	PersonPhone varchar(50) not null
);

create table tbl_Book_Author (
	BookID int not null,
	AuthorName varchar(50) not null
);
insert into tbl_Library_Branch
	(BranchName, BranchAddress)
	values
	('Sharpstown', '2163 Gateway Road'),
	('Central','2768 Garfield Road'),
	('Marshall','3697 Harvest Lane'),
	('Phoenix','1262 Preston Street')
;
select * from tbl_Library_Branch

insert into tbl_Publisher
	(PubName, PubAddress, PubPhone )
	values
	('Publisher_1', '281 Wines Lane','(419) 296-9961'),
	('Publisher_2', '370 Heron Way','(649) 216-8320'),
	('Publisher_3', '2053 Fairway Drive','(547) 500-6189'),
	('Publisher_4', '3400 Reel Avenue','(758) 408-9688')
;
select * from tbl_Publisher

insert into tbl_Books
	(BookTitle, PubName)
	values
	('IT', 'Publisher_1'),
	('The Shining', 'Publisher_1'),
	('The Lost Tribe', 'Publisher_1'),
	('Book_4', 'Publisher_1'),
	('Book_5', 'Publisher_1'),
	('Book_6', 'Publisher_2'),
	('Book_7', 'Publisher_2'),
	('Book_8', 'Publisher_2'),
	('Book_9', 'Publisher_2'),
	('Book_10', 'Publisher_2'),
	('Book_11', 'Publisher_3'),
	('Book_12', 'Publisher_3'),
	('Book_13', 'Publisher_3'),
	('Book_14', 'Publisher_3'),
	('Book_15', 'Publisher_3'),
	('Book_16', 'Publisher_4'),
	('Book_17', 'Publisher_4'),
	('Book_18', 'Publisher_4'),
	('Book_19', 'Publisher_4'),
	('Book_20', 'Publisher_4')
;
select * from tbl_Books

insert into tbl_Book_Author
	(BookID, AuthorName)
	values
	( 101, 'Stephen King'),
	( 102, 'Stephen King'),
	( 103, 'Mark Lee'),
	( 104, 'Mark Lee'),
	( 105, 'Lee Mark'),
	( 106, 'Lee Mark'),
	( 107, 'Bill Willson'),
	( 108, 'Bill Willson'),
	( 109, 'Mike Stefonson'),
	( 110, 'Mike Stefonson'),
	( 111, 'Jill Jillian'),
	( 112, 'Jill Jillian'),
	( 113, 'Total Teech'),
	( 114, 'Total Teech'),
	( 115, 'Leach Stiff'),
	( 116, 'Leach Stiff'),
	( 117, 'Butter Malar'),
	( 118, 'Butter Malar'),
	( 119, 'Cracker Snack'),
	( 120, 'Cracker Snack')
;
select * from tbl_Book_Author

insert into tbl_Book_Copies
	(BookID, BranchID, Copies_Num)
	values
	(100, 1, 10),(101, 1, 10),(102, 1, 10),(103, 1, 10),(104, 1, 10),(105, 1, 10),(106, 1, 10),(107, 1, 10),(108, 1, 10),(109, 1, 10),(110, 1, 10),
	(100, 2, 10),(101, 2, 10),(102, 2, 10),(103, 2, 10),(104, 2, 10),(105, 2, 10),(106, 2, 10),(107, 2, 10),(108, 2, 10),(109, 2, 10),(110, 2, 10),(111, 2, 10),(112, 2, 10),(113, 2, 10),(114, 2, 10),(115, 2, 10),(116, 2, 10),(117, 2, 10),(118, 2, 10),(119, 2, 10),(120, 2, 10),
	(110, 3, 10),(111, 3, 10),(112, 3, 10),(113, 3, 10),(114, 3, 10),(115, 3, 10),(116, 3, 10),(117, 3, 10),(118, 3, 10),(119, 3, 10),(120, 3, 10),
	(105, 4, 10),(106, 4, 10),(107, 4, 10),(108, 4, 10),(109, 4, 10),(110, 4, 10),(111, 4, 10),(112, 4, 10),(113, 4, 10),(114, 4, 10),(115, 4, 10)
;
select * from tbl_Book_Copies

insert into tbl_Borrower
	(CardNo, PersonName, PersonAddress, PersonPhone)
	values
	( 3030300, 'Mael', '333 Heavens Drive', '(333) 857-5168'),
	( 8454381, 'Rosa', '2432 Pinchelone Street', '(906) 857-5168'),
	( 4416467, 'Tory', '375 Franklee Lane', '(906) 857-1168'),
	( 1530244, 'Nuey', '1498 Twin Oaks Drive', '(906) 157-5168'),
	( 7149107, 'Rick', '3241 Grasselli Street', '(106) 857-5168'),
	( 4363808, 'Gad', '2880 Lightning Point Drive', '(906) 817-5168'),
	( 9468350, 'Wirz', '4523 College View', '(906) 857-5161'),
	( 7932016, 'Jess', '4169 New York Avenue', '(906) 857-5118'),
	( 1291306, 'Fazu', '132 Rivendell Drive', '(916) 857-5168')
;
select * from tbl_Borrower

insert into tbl_Book_Loan
	(BookID, BranchID, CardNo, DateOut,	DateDue)
	values
	(100, 1, 8454381, '12/6/2018', '12/27/2018'),
	(101, 1, 8454381, '12/6/2018', '12/27/2018'),
	(102, 1, 8454381, '12/6/2018', '12/27/2018'),
	(103, 1, 8454381, '12/6/2018', '12/27/2018'),
	(104, 1, 8454381, '12/6/2018', '12/27/2018'),
	(105, 1, 8454381, '12/6/2018', '12/27/2018'),
	(106, 1, 8454381, '12/6/2018', '12/27/2018'),
	(107, 1, 8454381, '12/6/2018', '12/27/2018'),
	(108, 1, 8454381, '12/6/2018', '12/27/2018'),
	(109, 1, 8454381, '12/6/2018', '12/27/2018'),
	(100, 1, 4416467, '12/6/2018', '12/27/2018'),
	(103, 1, 4416467, '12/6/2018', '12/27/2018'),
	(102, 1, 4416467, '12/6/2018', '12/27/2018'),
	(106, 1, 4416467, '12/6/2018', '12/27/2018'),
	(110, 1, 4416467, '12/6/2018', '12/27/2018'),
	(102, 2, 1530244, '12/6/2018', '12/27/2018'),
	(103, 2, 1530244, '12/6/2018', '12/27/2018'),
	(105, 2, 1530244, '12/6/2018', '12/27/2018'),
	(106, 2, 1530244, '12/6/2018', '12/27/2018'),
	(109, 2, 1530244, '12/6/2018', '12/27/2018'),
	(111, 2, 1530244, '12/6/2018', '12/27/2018'),
	(112, 2, 1530244, '12/6/2018', '12/27/2018'),
	(118, 2, 1530244, '12/6/2018', '12/27/2018'),
	(120, 2, 1530244, '12/6/2018', '12/27/2018'),
	(100, 2, 7149107, '12/6/2018', '12/27/2018'),
	(101, 2, 7149107, '12/6/2018', '12/27/2018'),
	(102, 2, 7149107, '12/6/2018', '12/27/2018'),
	(103, 2, 7149107, '12/6/2018', '12/27/2018'),
	(104, 2, 7149107, '12/6/2018', '12/27/2018'),
	(105, 2, 7149107, '12/6/2018', '12/27/2018'),
	(106, 2, 7149107, '12/6/2018', '12/27/2018'),
	(107, 2, 7149107, '12/6/2018', '12/27/2018'),
	(112, 2, 4363808, '12/6/2018', '12/27/2018'),
	(113, 2, 4363808, '12/6/2018', '12/27/2018'),
	(114, 2, 4363808, '12/6/2018', '12/27/2018'),
	(115, 2, 4363808, '12/6/2018', '12/27/2018'),
	(116, 2, 4363808, '12/6/2018', '12/27/2018'),
	(110, 3, 9468350, '12/6/2018', '12/27/2018'),
	(110, 3, 9468350, '12/6/2018', '12/27/2018'),
	(110, 3, 9468350, '12/6/2018', '12/27/2018'),
	(110, 3, 9468350, '12/6/2018', '12/27/2018'),
	(105, 4, 7932016, '12/6/2018', '12/27/2018'),
	(107, 4, 7932016, '12/6/2018', '12/27/2018'),
	(109, 4, 7932016, '12/6/2018', '12/27/2018'),
	(112, 4, 7932016, '12/6/2018', '12/27/2018'),
	(115, 4, 7932016, '12/6/2018', '12/27/2018'),
	(106, 4, 1291306, '12/6/2018', '12/27/2018'),
	(107, 4, 1291306, '12/6/2018', '12/27/2018'),
	(110, 4, 1291306, '12/6/2018', '12/27/2018'),
	(111, 4, 1291306, '12/6/2018', '12/27/2018'),
	(113, 4, 1291306, '12/6/2018', '12/27/2018')
;
select * from tbl_Book_Loan

-- Stored Procedure 1
create proc uspSharpstownBookInfo
as 
select Copies_Num, BookTitle, BranchName
from tbl_Book_Copies
	inner join tbl_Library_Branch on tbl_Book_Copies.BranchID = tbl_Library_Branch.BranchID
	inner join tbl_Books on tbl_Book_Copies.BookID = tbl_Books.BookID
where BranchName = 'Sharpstown' and BookTitle = 'The Lost Tribe'
;
-- Stored Procedure 2
create proc uspAllbranchBookInfo
as
select Copies_Num, BranchName, BookTitle
from tbl_Book_Copies
	inner join tbl_Library_Branch on tbl_Book_Copies.BranchID = tbl_Library_Branch.BranchID
	inner join tbl_Books on tbl_Book_Copies.BookID = tbl_Books.BookID
where BookTitle = 'The Lost Tribe'
;
-- Stored Procedure 3
Create proc uspNoCheckedOut
as 
select PersonName
from tbl_Borrower
	left join tbl_Book_Loan on tbl_Borrower.CardNo = tbl_Book_Loan.CardNo
where tbl_Book_Loan.CardNo IS NULL
;
-- Stored Procedure 4
create proc uspGetDateDue
as
select PersonName, PersonAddress, BookTitle
from tbl_Borrower
	inner join tbl_Book_Loan on tbl_Borrower.CardNo = tbl_Book_Loan.CardNo
	inner join tbl_Books on tbl_Book_Loan.BookID = tbl_Books.BookID
Where DateDue = '12/27/2018'
;
-- Stored Procedure 5
create proc uspGetBookLoanNum
as
select COUNT(tbl_Book_Loan.BranchID), BranchName
from tbl_Library_Branch
	INNER JOIN	tbl_Book_Loan on tbl_Library_Branch.BranchID = tbl_Book_Loan.BranchID
Group by BranchName
;
-- Stored Procedure 6
create proc uspPersonLoanNum
as
select COUNT(tbl_Book_Loan.CardNo), PersonAddress, PersonName
from tbl_Book_Loan
	inner join tbl_Borrower on tbl_Book_Loan.CardNo = tbl_Borrower.CardNo
group by PersonName, PersonAddress
having 5 < COUNT(tbl_Book_Loan.CardNo)
;
-- Stored Procedure 7
create proc uspGetKingBooksCentral
as
select tbl_Books.BookTitle, tbl_Book_Copies.Copies_Num, tbl_Library_Branch.BranchName, AuthorName
from tbl_Book_Author
	inner join tbl_Books on tbl_Book_Author.BookID = tbl_Books.BookID
	inner join tbl_Book_Copies on tbl_Books.BookID = tbl_Book_Copies.BookID
	inner join tbl_Library_Branch on tbl_Book_Copies.BranchID = tbl_Library_Branch.BranchID
where BranchName = 'Central' and AuthorName = 'Stephen King'
;
