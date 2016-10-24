 CREATE DATABASE Noteapp;


CREATE TABLE Author (
	Author_id integer PRIMARY KEY AUTOINCREMENT,
	First_name string,
	Last_name string,
	Gender string
);

CREATE TABLE Notes (
	Note_id integer PRIMARY KEY AUTOINCREMENT,
	Title string,
	Author_id integer,
	Content text,
);

CREATE TABLE NoteCategory (
	Note_cat_id integer PRIMARY KEY AUTOINCREMENT,
	Note_id integer,
);

INSERT INTO Author (First_name, Last_name, Gender)
VALUES ("Henry", 'Chukwu', 'Male'),
Values ('Jane', 'Ngozi', 'Female'),
VALUES ('Ola', 'Wale', 'Male');

INSERT INTO Notes (Title, Author_id, Content)
VALUES ('Chelsea', 2, 'This is a post about Chelsea'),
VALUES ('Gospel', 3, 'A post about the gospel'),
VALUES ('My Favorite Artist', 1, 'Drake is my favorite artist');

INSERT INTO NoteCategory (Category_id)
VALUES (1,2,3);

SELECT * FROM Author;

SELECT Title, Content
FROM Notes
WHERE Author_id = 1;