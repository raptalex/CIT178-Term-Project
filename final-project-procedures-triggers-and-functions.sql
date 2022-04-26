/* Alexander Raptis */
/* Final Project Procedures */
/*
-- Retrieves and displays data
USE MultiplayerGame;
GO
CREATE PROC spPlayers
AS
SELECT PlayerID, Username, Email FROM Players
ORDER BY Username;
GO
EXEC spPlayers;

-- Takes 1 input parameter
USE MultiplayerGame;
GO
DROP PROC spGetItemByName;
GO
CREATE PROC spGetItemByName
	@ItemName varchar(64)
AS
BEGIN
	SELECT * FROM Items
	WHERE @ItemName = ItemName;
END
GO
EXEC spGetItemByName 'Common Arrow';

-- Takes 1 input parameters and returns 3 output parameters
USE MultiplayerGame;
GO
CREATE PROC spGetCharOfRace
	@Race varchar(64),
	@ID int OUTPUT,
	@Name varchar(64) OUTPUT,
	@Level int OUTPUT
AS
SELECT TOP 1
@ID = c.CharID,
@Name = c.[Name],
@Level = c.[Level]
FROM Characters AS c
WHERE c.Race = @Race;
GO
DECLARE @CharID int;
DECLARE @Name varchar(64);
DECLARE @Level int;
EXEC spGetCharOfRace 'Human', @CharID OUTPUT, @Name OUTPUT, @Level OUTPUT;
SELECT @CharID AS 'ID',
@Name AS 'Character Name',
@Level AS 'Character Level';

-- Stored procedure with return value
USE MultiplayerGame;
GO
CREATE PROC spTotalMoney
AS
DECLARE @Total int;
SELECT @Total =
SUM(c.CurrencyAmt) + SUM((i.ItemValue*cp.ItemQty))
FROM Items AS i 
JOIN CharacterPossessions AS cp ON cp.PossessionID = i.ItemID
JOIN Characters AS c ON c.CharID = cp.CharacterID;
RETURN @Total;
GO
DECLARE @TotalMoney int;
EXEC @TotalMoney = spTotalMoney;
SELECT @TotalMoney AS 'Total Money';
*/
/* Final Project User Defined Functions */
/*
-- Scalar function that takes an argument
USE MultiplayerGame;
GO
CREATE FUNCTION fnGetHighValueChar
	(@Money int = 1000)
	RETURNS int
BEGIN
	RETURN (SELECT TOP 1 CharID FROM Characters WHERE CurrencyAmt >= @Money);
END;
GO
SELECT
c.CharID, c.[Name],
c.XP, c.[Level] FROM Characters AS c
WHERE c.CharID = dbo.fnGetHighValueChar(1000);

-- Table function that takes an argument
USE MultiplayerGame;
GO
CREATE FUNCTION fnHighValueCharacters
	(@Money int = 1000)
	RETURNS table
	RETURN (SELECT * FROM Characters WHERE CurrencyAmt >= @Money);
GO
SELECT * FROM dbo.fnHighValueCharacters(1000);
*/
/* Final Project Triggers */
/*
USE MultiplayerGame;
GO
SELECT * INTO ItemsCopy FROM Items;

CREATE TABLE ItemsLog (
	ItemID int,
	[status] varchar(42),
	modified datetime
);
GO
-- Insert trigger
CREATE TRIGGER Items_INSERT ON ItemsCopy
	AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ItemID int
	SELECT @ItemID = INSERTED.ItemID
	FROM INSERTED;

	INSERT INTO ItemsLog VALUES
	(@ItemID, 'inserted', GETDATE())
END
GO
-- Inserting records
INSERT INTO ItemsCopy VALUES (6, 'Green Orb', 'Object', 70, 'A green orb.');
INSERT INTO ItemsCopy VALUES (7, 'Pink Orb', 'Object', 160, 'A pink orb.');
INSERT INTO ItemsCopy VALUES (8, 'Common Leather', 'Material', 15, 'A sheet of cow leather.');

-- View log and new table
SELECT * FROM ItemsLog;
SELECT * FROM ItemsCopy;
*/
-- Delete trigger
USE MultiplayerGame;
GO
CREATE TRIGGER Items_DELETE ON ItemsCopy
	AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ItemID int
	SELECT @ItemID = DELETED.ItemID
	FROM DELETED;

	INSERT INTO ItemsLog VALUES
	(@ItemID, 'deleted', GETDATE())
END
GO
DELETE FROM ItemsCopy WHERE ItemId = 4;

SELECT * FROM ItemsLog;
SELECT * FROM ItemsCopy;
/*
-- Update trigger
USE MultiplayerGame;
GO
CREATE TRIGGER Items_UPDATE ON ItemsCopy
	AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ItemID int
	SELECT @ItemID = INSERTED.ItemID
	FROM INSERTED;

	INSERT INTO ItemsLog VALUES
	(@ItemID, 'updated', GETDATE())
END
GO
UPDATE ItemsCopy SET ItemValue = 20
WHERE ItemId = 2;

SELECT * FROM ItemsLog;
*/