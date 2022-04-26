USE MultiplayerGame;
/* Primary Keys */
GO
ALTER TABLE Players
ADD CONSTRAINT PK_PlayerID
PRIMARY KEY (PlayerID);
ALTER TABLE Subscribers
ADD CONSTRAINT PK_SubscriberID
PRIMARY KEY (SubscriberID);
ALTER TABLE Characters
ADD CONSTRAINT PK_CharID
PRIMARY KEY (CharID);
ALTER TABLE Items
ADD CONSTRAINT PK_ItemID
PRIMARY KEY (ItemID);
ALTER TABLE CharacterPossessions
ADD CONSTRAINT PK_CharacterPossessions
PRIMARY KEY (PossessionID, CharacterID);
ALTER TABLE SubscriberTiers
ADD CONSTRAINT PK_TierID
PRIMARY KEY (TierID);
ALTER TABLE Worlds
ADD CONSTRAINT PK_WorldID
PRIMARY KEY (WorldID);
/* Foreign Keys */
GO
ALTER TABLE Players
ADD CONSTRAINT FK_CharID
FOREIGN KEY (CharID) REFERENCES Characters(CharID);
ALTER TABLE Players
ADD CONSTRAINT FK_SubscriberID
FOREIGN KEY (SubscriberID) REFERENCES Subscribers(SubscriberID);
ALTER TABLE Subscribers
ADD CONSTRAINT FK_SubscriberType
FOREIGN KEY (Type) REFERENCES SubscriberTiers(TierID);
ALTER TABLE Characters
ADD CONSTRAINT FK_WorldID
FOREIGN KEY (CurrentJoinedWorld) REFERENCES Worlds(WorldID);
ALTER TABLE CharacterPossessions
ADD CONSTRAINT FK_Character
FOREIGN KEY (CharacterID) REFERENCES Characters(CharID);
ALTER TABLE CharacterPossessions
ADD CONSTRAINT FK_Item
FOREIGN KEY (PossessionID) REFERENCES Items(ItemID);