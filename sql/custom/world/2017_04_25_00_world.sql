-- Solozeroth
-- DISABLED 2019.09.30: The teleport script stopped working, so I replaced the characters with portals.
-- Add NPCs in Stormwind and Orgrimmar who port the player to Dalaran
-- Teleport command gossipTeleDalaran in src/server/scripts/Custom/gossip_tele_dalaran.cpp

-- Common Gossip option player clicks to travel
DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (58001);
INSERT INTO `gossip_menu_option` (`MenuID`,`OptionID`,`OptionIcon`,`OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) 
VALUES (58001,0,0,'','71166', '1', '1', '0', '0', '0', '0', NULL, '0', '0'); -- 71166 = "I need a portal to Dalaran"

-- Alliance Character Template
DELETE FROM `creature_template` WHERE `entry` IN (251002);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
VALUES ('251002', '0', '0', '0', '0', '0', '17191', '0', '0', '0', 'Bob Rasket', 'Dalaran Portal Expert', 'Directions', '58001', '80', '80', '2', '35', '1', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '32768', '2048', '0', '0', '7', '4096', '0', '0', '0', '0', '0', '0', '0', 'SmartAI', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');

-- Alliance Character Placement
DELETE FROM `creature` WHERE `guid` IN (213824);
-- INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) 
-- VALUES ('213824', '251002', '0', '0', '0', '1', '1', '0', '0', '-8444.34', '327.275', '122.163', '5.08812', '300', '0', '0', '10635', '0', '0', '0', '0', '0', '', '0');

-- Horde Character Template
DELETE FROM `creature_template` WHERE `entry` IN (251003);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`)
VALUES ('251003', '0', '0', '0', '0', '0', '25619', '0', '0', '0', 'Wi Nuggit', 'Dalaran Portal Expert', 'Directions', '58001', '80', '80', '2', '35', '1', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '32768', '2048', '0', '0', '7', '4096', '0', '0', '0', '0', '0', '0', '0', 'SmartAI', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '', '12340');

-- Horde Character Placement
DELETE FROM `creature` WHERE `guid` IN (213827);
-- INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) 
-- VALUES ('213827', '251003', '1', '0', '0', '1', '1', '0', '0', '1901.77', '-4137.68', '41.1506', '5.76323', '300', '0', '0', '12600', '0', '0', '0', '0', '0', '', '0');
