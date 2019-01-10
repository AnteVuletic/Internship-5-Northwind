CREATE DATABASE Bank;
CREATE TABLE Title(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	title nvarchar(30)
);

INSERT INTO Title(title)
VALUES ('Direktor'),('Potpredsjednik'),('Investicijski suradnik'),(N'Investicijski analiti?ar');

SELECT * FROM Title;

CREATE TABLE Users(
	Id INT IDENTITY(1,1),
	Forename nvarchar(30),
	Surname nvarchar(30),
	Oib nvarchar(11),
	Phonenumber nvarchar(13),
	Address nvarchar(30),
	City nvarchar(20),
	Country nvarchar(20),
	Postalcode nvarchar(6)
);

ALTER TABLE Users
ADD CONSTRAINT Oib UNIQUE (oib);

INSERT INTO Users
VALUES  (N'Šime',N'Šimi?','12345678911','+385965127765',N'Neka adresa 15','Split','Croatia','21000'),
		('Jure',N'Juri?','12345678914','+385965127763',N'Neka druga adresa 21','Zagreb','Croatia','10000'),
		('Mate',N'Mati?','12345678919','+385965127761',N'Neka tre?a adresa 38','Sisak','Croatia','44000'),
		('Ana',N'?uljak','12345678920','+385965127760',N'Neka ?etvrta adresa 38','Sisak','Croatia','44000');
SELECT * FROM Users;

CREATE TABLE Transactions(
	Id INT IDENTITY(1,1),
	Date DATE,
	Status bit
);

ALTER TABLE Transactions
ADD Description nvarchar(50); 

INSERT INTO Transactions
VALUES  ('20181014',0,'Xbox purchase.'),
		('20190103',1,N'Vri?a kupusa.'),
		('20190105',0,N'BMWej');

SELECT * FROM Transactions;

CREATE TABLE Employee(
	Id int IDENTITY(1,1),
	Forename nvarchar(30),
	Surname nvarchar(30),
	TitleId int FOREIGN KEY REFERENCES Title(Id),
	Email nvarchar(40)
);
ALTER TABLE Employee
ADD Notes nvarchar(100);

INSERT INTO Employee
VALUES  ('Luka',N'Luki?',1,'Lukalukic@dump.hr','Very good.'),
		('Perica',N'Perkovi?',2,'Pericaperki@dump.hr','Much good'),
		(N'Šime','Kapula',3,N'Škapula@gmail.com','Who employeed this one?'),
		(N'Jura','Tulipan',4,N'JTulipan@gmail.com','');

UPDATE Employee
SET Notes = 'No notes yet'
WHERE Notes = '';

SELECT * FROM Employee;

SELECT * FROM Users;
DELETE Users WHERE Id = 2;
SELECT * FROM Users;

SELECT * FROM Users WHERE Forename LIKE '[a-g]%';