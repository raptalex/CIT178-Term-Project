USE MultiplayerGame;
CREATE INDEX idx_CharID ON Players(CharID);
CREATE INDEX idx_SubscriberID ON Players(SubscriberID);
CREATE INDEX idx_Type ON Subscribers(Type);
CREATE INDEX idx_CurrentJoinedWorld ON Characters(CurrentJoinedWorld);
CREATE INDEX idx_PossessionID ON CharacterPossessions(PossessionID);
CREATE INDEX idx_CharacterID ON CharacterPossessions(CharacterID);