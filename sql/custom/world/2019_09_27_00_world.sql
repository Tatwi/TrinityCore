-- Solozeroth
-- Add more bags to vendors and adjust prices
-- Note: The tooltip for selling these back to the vendor will be wrong, but the price in the buyback window will be correct.

-- Set prices for bags
-- 6 slot
UPDATE `item_template` SET `BuyPrice`='100' WHERE `item_template`.`entry` = 4496; -- 1s
UPDATE `item_template` SET `SellPrice`='50' WHERE `item_template`.`entry` = 4496; -- 50c
-- 8 slot
UPDATE `item_template` SET `BuyPrice`='700' WHERE `item_template`.`entry` = 4498; -- 7s
UPDATE `item_template` SET `SellPrice`='250' WHERE `item_template`.`entry` = 4498; -- 2s 50c
-- 10 slot
UPDATE `item_template` SET `BuyPrice`='5000' WHERE `item_template`.`entry` = 4497; -- 50s
UPDATE `item_template` SET `SellPrice`='1500' WHERE `item_template`.`entry` = 4497; -- 15s
-- 12 slot
UPDATE `item_template` SET `BuyPrice`='20000' WHERE `item_template`.`entry` = 4499; -- 2g
UPDATE `item_template` SET `SellPrice`='10000' WHERE `item_template`.`entry` = 4499; -- 1g
-- 14 slot Runecloth Bag
UPDATE `item_template` SET `BuyPrice`='80000' WHERE `item_template`.`entry` = 14046; -- 8g
UPDATE `item_template` SET `SellPrice`='30000' WHERE `item_template`.`entry` = 14046; -- 3g
-- 16 slot Netherweave Bag
UPDATE `item_template` SET `BuyPrice`='160000' WHERE `item_template`.`entry` = 21841; -- 16g
UPDATE `item_template` SET `SellPrice`='40000' WHERE `item_template`.`entry` = 21841; -- 4g
-- 18 slot Bottomless Bag
UPDATE `item_template` SET `BuyPrice`='320000' WHERE `item_template`.`entry` = 14156; -- 32g
UPDATE `item_template` SET `SellPrice`='50000' WHERE `item_template`.`entry` = 14156; -- 5g
-- 20 slot Frostweave Bag
UPDATE `item_template` SET `BuyPrice`='640000' WHERE `item_template`.`entry` = 41599; -- 64g
UPDATE `item_template` SET `SellPrice`='60000' WHERE `item_template`.`entry` = 41599; -- 6g


-- Stormwind (Alyssa Griffith)
DELETE FROM `npc_vendor` WHERE (`entry`=1321);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('1321', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('1321', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('1321', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('1321', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('1321', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('1321', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('1321', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('1321', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag

-- Orgimmar (Gotri)
DELETE FROM `npc_vendor` WHERE (`entry`=3369);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('3369', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('3369', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('3369', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('3369', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('3369', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('3369', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('3369', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('3369', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag

-- Darnassus (Yldan)
DELETE FROM `npc_vendor` WHERE (`entry`=4230);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('4230', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('4230', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('4230', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('4230', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('4230', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('4230', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('4230', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('4230', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag

-- Undercity (Jonathan Chambers)
DELETE FROM `npc_vendor` WHERE (`entry`=4590);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('4590', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('4590', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('4590', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('4590', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('4590', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('4590', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('4590', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('4590', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag

-- Ironforge (Pithwick)
DELETE FROM `npc_vendor` WHERE (`entry`=5132);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('5132', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('5132', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('5132', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('5132', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('5132', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('5132', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('5132', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('5132', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag

-- Thunderbluff (Pakwa)
DELETE FROM `npc_vendor` WHERE (`entry`=8364);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('8364', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('8364', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('8364', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('8364', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('8364', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('8364', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('8364', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('8364', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag

-- Silvermoon City (Rathin)
DELETE FROM `npc_vendor` WHERE (`entry`=16690);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('16690', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('16690', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('16690', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('16690', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('16690', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('16690', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('16690', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('16690', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag

-- The Exodar (Cuzi)
DELETE FROM `npc_vendor` WHERE (`entry`=16709);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('16709', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('16709', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('16709', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('16709', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('16709', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('16709', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('16709', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('16709', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag

-- Eversong Woods (Solanin)
DELETE FROM `npc_vendor` WHERE (`entry`=18947);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('18947', '0', '4496', '0', '0', '0', '0'), -- 6 slot
('18947', '0', '4498', '0', '0', '0', '0'), -- 8 slot
('18947', '0', '4497', '0', '0', '0', '0'), -- 10 slot
('18947', '0', '4499', '0', '0', '0', '0'), -- 12 slot
('18947', '0', '14046', '0', '0', '0', '0'), -- 14 slot Runecloth Bag
('18947', '0', '21841', '0', '0', '0', '0'), -- 16 slot Netherweave Bag
('18947', '0', '14156', '0', '0', '0', '0'), -- 18 slot Bottomless Bag
('18947', '0', '41599', '0', '0', '0', '0'); -- 20 slot Frostweave Bag
