USE MultiplayerGame;
GO
INSERT INTO Items VALUES (1, 'Common Arrow', 'Projectile', 10, 'A simple arrow with a flint tip.');
INSERT INTO Items VALUES (2, 'Small Stone', 'Projectile', 1, 'A pebble that could be used in a sling.');
INSERT INTO Items VALUES (3, 'Small Bottle', 'Material', 5, 'An empty glass bottle of pitiful size.');
INSERT INTO Items VALUES (4, 'White Feather', 'Material', 5, 'A white feather that could be used for creating arrows.');
INSERT INTO Items VALUES (5, 'Common Shortsword', 'Weapon', 100, 'A shortsword make out of steel. Quite shoddy but it works.');
GO
INSERT INTO Worlds VALUES (1, 'Fantasia', 'A generic fantasy world.', 20);
INSERT INTO Worlds VALUES (2, 'Magica', 'Another generic fantasy world.', 20);
INSERT INTO Worlds VALUES (3, 'Unterworlt', 'A world that is perpetually shrouded in darkness.', 20);
INSERT INTO Worlds VALUES (4, 'The Aqua', 'A world that is an endless sea.', 20);
INSERT INTO Worlds VALUES (5, 'Surrealia', 'A world that is made up of mazes.', 20);
GO
INSERT INTO SubscriberTiers VALUES (1, 'Platinum', 119.99, '5 years');
INSERT INTO SubscriberTiers VALUES (2, 'Gold', 59.99, '2 years');
INSERT INTO SubscriberTiers VALUES (3, 'Silver', 29.99, '1 year');
INSERT INTO SubscriberTiers VALUES (4, 'Bronze', 14.99, '6 months');
INSERT INTO SubscriberTiers VALUES (5, 'Iron', 4.99, '3 months');
GO
INSERT INTO Characters VALUES (1, 'Galaxor The II', 65, 7892, 'Orc', 5000, 1000, 5);
INSERT INTO Characters VALUES (2, 'Frinigan', 31, 3420, 'Human', 150, 1000, 5);
INSERT INTO Characters VALUES (3, 'Deftpho', 85, 10291, 'Dark Elf', 12070, 1200, 5);
INSERT INTO Characters VALUES (4, 'Jestus The Fearless', 25, 2040, 'Dragonborn', 500, 1000, 5);
INSERT INTO Characters VALUES (5, 'Michael', 10, 1200, 'Human', 30, 1000, 5);
GO
INSERT INTO Subscribers VALUES (1, 2, '5/1/2020', '5/1/2022');
INSERT INTO Subscribers VALUES (2, 4, '2/4/2020', '8/4/2020');
INSERT INTO Subscribers VALUES (3, 4, '3/12/2020', '11/12/2020');
INSERT INTO Subscribers VALUES (4, 2, '3/14/2020', '3/14/2022');
INSERT INTO Subscribers VALUES (5, 3, '7/22/2020', '7/22/2021');
GO
INSERT INTO Players VALUES (1, 'zoomley', 'zee@fastmail.net', 1, 2);
INSERT INTO Players VALUES (2, 'chester', 'c12@freemail.net', 3, 3);
INSERT INTO Players VALUES (3, 'daniel', 'dan@fastmail.net', 2, 4);
INSERT INTO Players VALUES (4, 'marg34', 'm32@hotmail.net', 5, 1);
INSERT INTO Players VALUES (5, 'jake223', 'jake@fastmail.net', 4, 5);
GO
INSERT INTO CharacterPossessions VALUES(1, 5, 10);
INSERT INTO CharacterPossessions VALUES(1, 2, 5);
INSERT INTO CharacterPossessions VALUES(2, 5, 25);
INSERT INTO CharacterPossessions VALUES(4, 2, 2);
INSERT INTO CharacterPossessions VALUES(5, 1, 1);