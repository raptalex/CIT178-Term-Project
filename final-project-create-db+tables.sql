CREATE DATABASE MultiplayerGame;
GO
USE MultiplayerGame;
CREATE TABLE Players (
	PlayerID INT NOT NULL,
	Username VARCHAR(16) NOT NULL,
	/* max length is 320 for an email including everything before and after the @ */
	Email VARCHAR(320) NOT NULL,
	CharID INT NOT NULL,
	SubscriberID INT NOT NULL,
);
GO
CREATE TABLE Subscribers (
	SubscriberID INT NOT NULL,
	Type INT NOT NULL,
	RegisterDate DATE NOT NULL,
	ExpireDate DATE NOT NULL,
);
GO
CREATE TABLE Characters (
	CharID INT NOT NULL,
	Name VARCHAR(64) NOT NULL,
	Level INT DEFAULT 1 NOT NULL,
	XP INT DEFAULT 1 NOT NULL,
	Race VARCHAR(64) NOT NULL,
	CurrencyAmt INT DEFAULT 500 NOT NULL,
	Health INT DEFAULT 1000 NOT NULL,
	CurrentJoinedWorld INT NOT NULL,
);
GO
CREATE TABLE Items (
	ItemID INT NOT NULL,
	ItemName VARCHAR(64) NOT NULL,
	ItemType VARCHAR(64) NOT NULL,
	ItemValue INT DEFAULT 1 NOT NULL,
	ItemDesc VARCHAR(4096) NOT NULL,
);	
GO
CREATE TABLE CharacterPossessions (
	PossessionID INT NOT NULL,
	CharacterID INT NOT NULL,
	ItemQty INT NOT NULL,
);
GO
CREATE TABLE SubscriberTiers (
	TierID INT NOT NULL,
	Name VARCHAR(32) NOT NULL,
	Price MONEY NOT NULL,
	Time VARCHAR(16) NOT NULL,
);
GO
CREATE TABLE Worlds (
	WorldID INT NOT NULL,
	Name VARCHAR(64) NOT NULL,
	Description VARCHAR(1024) NOT NULL,
	MaxPlayers INT DEFAULT 20 NOT NULL,
);