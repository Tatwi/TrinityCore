-- Solozeroth customizations for TrinityForce vendors
-- Located in Faldir's Cove, Arathi Highlands

-- Spawn characters
DELETE FROM creature WHERE guid BETWEEN 15000210 AND 15000220;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) 
VALUES
-- Leather
('15000210','500054','0','1','1','0','0','-2092.5','-1990.04','0.3884','3.371439','300','0','0','24009944','0','0');

-- Adjust prices of items
-- Leather
UPDATE `item_template` SET `BuyPrice`='100' WHERE `entry`='2318'; -- Light Leather 1s
UPDATE `item_template` SET `BuyPrice`='40000' WHERE `entry`='38558'; -- Nerubian Chitin 4g
UPDATE `item_template` SET `BuyPrice`='20000' WHERE `entry`='29548'; -- Netherdragon Scales 2g
UPDATE `item_template` SET `BuyPrice`='15000' WHERE `entry`='29547'; -- Wind Scales 1.5g
UPDATE `item_template` SET `BuyPrice`='15000' WHERE `entry`='29539'; -- Cobra Scales 1.5g
UPDATE `item_template` SET `BuyPrice`='12500' WHERE `entry`='25700'; -- Fel Scales 1.25g
UPDATE `item_template` SET `BuyPrice`='20000' WHERE `entry`='25699'; -- Crystal Infused Leather 2g

-- Modify character appearances
UPDATE `creature_template` SET `modelid1`='3277', `scale`='1' WHERE `entry`='500054'; -- Leather
