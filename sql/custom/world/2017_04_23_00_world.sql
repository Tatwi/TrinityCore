-- Solozeroth
-- Add a currency vendor in Dalaran

-- Character Template
DELETE FROM `creature_template` WHERE `entry` IN (251001);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
VALUES ('251001', '0', '0', '0', '0', '0', '14774', '0', '0', '0', 'Totes Morty', 'Badge and Honor Vendor', '', '0', '75', '75', '2', '35', '128', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '32768', '2048', '0', '0', '0', '0', '0', '0', '7', '4096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');

-- Vendor Items
DELETE FROM `npc_vendor` WHERE `entry` IN (251001);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
('251001', '0', '29434', '0', '0', '0', '0'), -- Badge of Justice
('251001', '1', '40752', '0', '0', '0', '0'), -- Emblem of Heroism
('251001', '2', '40753', '0', '0', '0', '0'), -- Emblem of Valor
('251001', '3', '45624', '0', '0', '0', '0'), -- Emblem of Conquest
('251001', '4', '47241', '0', '0', '0', '0'), -- Emblem of Triumph
('251001', '5', '49426', '0', '0', '0', '0'), -- Emblem of Frost
('251001', '6', '45706', '0', '0', '0', '0'); -- Commendation of Bravery (2000 Honor)

-- Add sell prices for emblems
UPDATE `world`.`item_template` SET `BuyPrice`='2500' WHERE `entry`='29434'; -- Justice 25s
UPDATE `world`.`item_template` SET `BuyPrice`='10000' WHERE `entry`='40752'; -- Heroism 1g
UPDATE `world`.`item_template` SET `BuyPrice`='20000' WHERE `entry`='40753'; -- Valor 2g
UPDATE `world`.`item_template` SET `BuyPrice`='30000' WHERE `entry`='45624'; -- Conquest 3g
UPDATE `world`.`item_template` SET `BuyPrice`='50000' WHERE `entry`='47241'; -- Triumph 5g
UPDATE `world`.`item_template` SET `BuyPrice`='100000' WHERE `entry`='49426'; -- Frost 10g
UPDATE `world`.`item_template` SET `BuyPrice`='50000' WHERE `entry`='45706'; -- 2000 Honor 5g

-- Location In World (position/guid/id generated using .npc command in game)
DELETE FROM `creature` WHERE `guid` IN (213820);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`)
VALUES ('213820', '251001', '571', '0', '0', '1', '1', '0', '0', '5786.12', '633.124', '647.792', '0.116322', '300', '0', '0', '10635', '0', '0', '0', '0', '0', '', '0');
