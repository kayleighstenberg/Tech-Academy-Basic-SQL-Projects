CREATE DATABASE db_hp
USE db_hp
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


	
	CREATE TABLE tbl_character (
		character_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		character_fname VARCHAR(500) NOT NULL,
		character_lname VARCHAR(500) NOT NULL

);

	CREATE TABLE tbl_contact (
		contact_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		contact_phonenumber VARCHAR(500) NOT NULL,
		contact_address VARCHAR(500) NOT NULL
		
);


	INSERT INTO tbl_character
		(character_fname, character_lname, character_id)
		VALUES 
		('harry', 'potter', 1),
		('ron', 'weasley', 2),
		('hermione', 'granger', 3),
		('albus', 'dumbledore', 4),
		('severus', 'snape', 5)
	;
	SELECT * FROM tbl_character;

	INSERT INTO tbl_contact 
		(contact_phonenumber, contact_address, contact_id)
		VALUES
		('123-555-6677', '4 Privet Drive, Little Whinging, Surrey', 1),
		('123-555-2323', '3 Ottery St, Catchpole, Devon', 2),
		('135-555-1234', '16 Heathgate St, Hampstead, London', 3),
		('111-555-8888', '1 Alnwick Drive, Northumberland', 4),
		('189-555-3434', '1 Alnwick Drive, Northumberland', 5)
	;
	SELECT * FROM tbl_contact;

USE db_hp

SELECT contact_address AS "Address", character_fname AS "First Name", character_lname AS "Last Name", contact_phonenumber AS "Phone Number"
	FROM tbl_contact, tbl_character
	WHERE contact_id = 3;