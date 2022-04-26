/* Final Project Views */
/* Alexander Raptis */
USE MultiplayerGame;
GO

/* View #1 */
-- Updatable View
CREATE VIEW PlayerItems
AS
SELECT c.[Name], c.Level, c.CurrencyAmt,
i.ItemName, ItemValue
FROM Characters AS c
JOIN Items AS i ON i.ItemID = c.CharID;
GO
SELECT * FROM PlayerItems;

-- Displaying new data
SELECT * FROM PlayerItems;
/* View #2 */
CREATE VIEW FastMailPlayers
AS
SELECT PlayerID, Username, Email
FROM Players
WHERE SUBSTRING(Email, CHARINDEX('@', Email)+1, LEN('fastmail')) = 'fastmail';
GO

-- Viewing data
SELECT * FROM FastMailPlayers;
/* View #3 */
CREATE VIEW MarchSubscribers ([name], [type], email, [joined], [expires])
AS
SELECT p.Username, st.[Name], p.Email, s.RegisterDate, 
s.[ExpireDate] 
FROM Subscribers AS s
JOIN Players as p ON p.SubscriberID = s.SubscriberID
JOIN SubscriberTiers as st ON st.TierID = s.[Type]
WHERE MONTH(s.RegisterDate) = 3;
GO

-- Viewing data
SELECT * FROM MarchSubscribers;
/* View #4 */
CREATE VIEW ProjectileItems
AS
SELECT * FROM Items
WHERE ItemType = 'Projectile'
GO

-- Updating row
UPDATE ProjectileItems
SET ItemValue = ItemValue + 1
GO

-- Viewing data
SELECT * FROM ProjectileItems