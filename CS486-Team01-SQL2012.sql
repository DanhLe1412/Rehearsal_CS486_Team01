-- CS486-Team01

CREATE DATABASE CS486_Team01_DB
GO 


USE CS486_Team01_DB
GO 

CREATE TABLE Region (
    [Name] NVARCHAR(100),

    PRIMARY KEY ([Name])
)

CREATE TABLE [Type](
    [Name] NVARCHAR(100) NOT NULL,
	Region NVARCHAR(100) NOT NULL,

	PRIMARY KEY([Name], Region)
)

CREATE TABLE Song(
	SongID INT NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	ReleaseTime DATETIME NOT NULL DEFAULT GETDATE(),
	NumOfListen INT NOT NULL DEFAULT 0,

	PRIMARY KEY(SongID)
)

CREATE TABLE SongToType(
	SongID INT NOT NULL,
	[Type] NVARCHAR(100) NOT NULL,

	PRIMARY KEY(SongID, [Type])
)

CREATE TABLE Artist(
	ArtistID INT NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,

	 PRIMARY KEY(ArtistID)
)

CREATE TABLE ArtistToSong(
	SongID INT NOT NULL,
	ArtistID INT NOT NULL,

	PRIMARY KEY(SongID, ArtistID)
)


/*
USE MASTER
DROP DATABASE CS486_Team01_DB
*/