-- Solozeroth customizations for TrinityForce vendors
-- Located in Faldir's Cove, Arathi Highlands

-- Spawn characters
DELETE FROM creature WHERE guid BETWEEN 15000210 AND 15000220;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) 
VALUES
-- Leather
('15000210','500054','0','1','1','0','0','-2092.5','-1990.04','0.3884','3.371439','300','0','0','24009944','0','0'),
-- Metal & Stone
('15000211','500060','0','1','1','0','0','-2091.96','-1992.37','0.3674','3.371439','300','0','0','24009944','0','0'),
-- Herbs
('15000212','500043','0','1','1','0','0','-2091.68','-1994.56','0.3357','3.054728','300','0','0','24009944','0','0'),
-- Gems, Raw
('15000213','500040','0','1','1','0','0','-2091.92','-1998.26','0.2859','2.866236','300','0','0','24009944','0','0');


-- Adjust prices of items
-- Leather
UPDATE `item_template` SET `BuyPrice`='100' WHERE `entry`='2318'; -- Light Leather 1s
UPDATE `item_template` SET `BuyPrice`='40000' WHERE `entry`='38558'; -- Nerubian Chitin 4g
UPDATE `item_template` SET `BuyPrice`='20000' WHERE `entry`='29548'; -- Netherdragon Scales 2g
UPDATE `item_template` SET `BuyPrice`='15000' WHERE `entry`='29547'; -- Wind Scales 1.5g
UPDATE `item_template` SET `BuyPrice`='15000' WHERE `entry`='29539'; -- Cobra Scales 1.5g
UPDATE `item_template` SET `BuyPrice`='12500' WHERE `entry`='25700'; -- Fel Scales 1.25g
UPDATE `item_template` SET `BuyPrice`='20000' WHERE `entry`='25699'; -- Crystal Infused Leather 2g
-- Metal & Stone
UPDATE `item_template` SET `BuyPrice`='20000' WHERE `entry`='36915'; -- Froststeel Bar 2g
UPDATE `item_template` SET `BuyPrice`='30000' WHERE `entry`='36914'; -- Azurite Bar 3g
-- Gems, Raw
UPDATE `item_template` SET `BuyPrice`='3000' WHERE `entry`='45054'; -- Prismatic Black Diamond
UPDATE `item_template` SET `BuyPrice`='50000' WHERE `entry`='42225'; -- Dragon's Eye
UPDATE `item_template` SET `BuyPrice`='250000' WHERE `entry`='36934'; -- Eye of Zul
UPDATE `item_template` SET `BuyPrice`='300000' WHERE `entry`='36933'; -- Forest Emerald
UPDATE `item_template` SET `BuyPrice`='300000' WHERE `entry`='36931'; -- Ametrine
UPDATE `item_template` SET `BuyPrice`='180000' WHERE `entry`='36930'; -- Monarch Topaz
UPDATE `item_template` SET `BuyPrice`='300000' WHERE `entry`='36928'; -- Dreadstone
UPDATE `item_template` SET `BuyPrice`='180000' WHERE `entry`='36927'; -- Twilight Opal
UPDATE `item_template` SET `BuyPrice`='300000' WHERE `entry`='36925'; -- Majestic Zircon
UPDATE `item_template` SET `BuyPrice`='180000' WHERE `entry`='36924'; -- Sky Sapphire
UPDATE `item_template` SET `BuyPrice`='300000' WHERE `entry`='36922'; -- King's Amber
UPDATE `item_template` SET `BuyPrice`='180000' WHERE `entry`='36921'; -- Autumn's Glow
UPDATE `item_template` SET `BuyPrice`='300000' WHERE `entry`='36919'; -- Cardinal Ruby
UPDATE `item_template` SET `BuyPrice`='180000' WHERE `entry`='36918'; -- Scarlet Ruby
UPDATE `item_template` SET `BuyPrice`='180000' WHERE `entry`='36784'; -- Siren's Tear
UPDATE `item_template` SET `BuyPrice`='50000' WHERE `entry`='36783'; -- Northsea Pearl
UPDATE `item_template` SET `BuyPrice`='160000' WHERE `entry`='32249'; -- Seaspray Emerald
UPDATE `item_template` SET `BuyPrice`='160000' WHERE `entry`='32231'; -- Pyrestone
UPDATE `item_template` SET `BuyPrice`='160000' WHERE `entry`='32230'; -- Shadowsong Amethyst
UPDATE `item_template` SET `BuyPrice`='160000' WHERE `entry`='32229'; -- Lionseye
UPDATE `item_template` SET `BuyPrice`='160000' WHERE `entry`='32228'; -- Empyrean Sapphire
UPDATE `item_template` SET `BuyPrice`='160000' WHERE `entry`='32227'; -- Crimson Spinel


-- Modify character appearances
UPDATE `creature_template` SET `modelid1`='3277', `scale`='1' WHERE `entry`='500054'; -- Leather
UPDATE `creature_template` SET `modelid1`='4637', `scale`='1' WHERE `entry`='500060'; -- Metal & Stone
UPDATE `creature_template` SET `modelid1`='9272', `scale`='1' WHERE `entry`='500043'; -- Herbs
UPDATE `creature_template` SET `modelid1`='17160', `scale`='1' WHERE `entry`='500040'; -- Gems, Raw
