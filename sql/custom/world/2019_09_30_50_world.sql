-- Dalaran portal in Origrimmar and Stormwind 
DELETE FROM gameobject WHERE guid BETWEEN 500021 AND 500022;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) 
VALUES 
('500021','202079','1','1','1','1449.53','-4179.2','61.56','1.10966','0','0','0.526798','0.84999','300','0','1'),
('500022','202079','0','1','1','-9007.04','871.76','148.617','1.10966','0','0','0.526798','0.84999','300','0','1');
