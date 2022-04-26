USE MultiplayerGame;
GO
SELECT COUNT(CharID) AS [Number of Characters],
MAX(Level) AS [Highest Levelled Characters],
SUM(XP) AS [Total XP For All Characters]
FROM Characters;
GO
SELECT COUNT(ItemID) AS [Number of Material Items],
AVG(ItemValue) AS [Average Item Value]
FROM Items
WHERE ItemType = 'Material';
GO
SELECT COUNT(SubscriberID) AS [Number of Subscribers],
MIN(RegisterDate) AS [First Registration],
MAX(RegisterDate) AS [Last Registration]
FROM Subscribers;
GO
SELECT SUM(CurrencyAmt) AS [Total Currency Owned By Players],
MIN(CurrencyAmt) AS [Smallest Amount of Currency],
MAX(CurrencyAmt) AS [Largest Amount of Currency]
FROM Characters;