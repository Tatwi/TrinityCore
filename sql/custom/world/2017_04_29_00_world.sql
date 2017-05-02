-- Solozeroth
-- Add a level 80 trinket that has useful generic stats and spawns a character that has several handy functions. 

-- Create item that spawns the character
DELETE FROM `item_template` WHERE (`entry`=759);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) 
VALUES ('759', '0', '0', '-1', 'Dial-A-Mage', '942', '4', '0', '2', '1', '150000', '0', '12', '-1', '-1', '200', '40', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '4', '7', '101', '31', '101', '32', '101', '46', '101', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '897', '0', '0', '0', '300000', '1193', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Summons a non-combat Wizard who will help you for 2 minutes.', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '1');

-- Sell item on existing trinket vendor in Dalaran (Debbi Moore)
DELETE FROM `npc_vendor` WHERE (`item`=759);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES('29528', '0', '759', '0', '0', '2538', '0'); -- Costs 75 Badges of Valor (150g)

-- Create the character template so the character can be spawned
DELETE FROM `creature_template` WHERE (`entry`=128);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES ('128', '0', '0', '0', '0', '0', '28173', '0', '0', '0', 'Homer Iliadus', 'Retired High Wizard of Dalaran', 'Speak', '58002', '12', '12', '0', '7', '1', '0.97', '1.14286', '1.24', '2', '0', '1890', '2079', '1', '1', '1', '2', '2048', '0', '7', '0', '0', '0', '0', '1', '138936390', '0', '0', '100001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '14', 'SmartAI', '0', '3', '1', '1.25', '1', '1', '1', '1', '0', '0', '1', '0', '2', '', '12340');

-- Gossip Menu Step 1
-- = = = = = = = = = = = 
-- gossip_menu_id in the creature template points to the `gossip_menu` table, which as two fields:
-- entry: links to the gossip_menu_id value in the creature template and also groups the options from gossip_menu_option, so all options associated with this ID will display in the conversation window.
-- text_id: links to the table `npc_text`.`ID` for the gossip you want to be initially displayed. Also this tells the NPC what to say at the top of the options menu when it is displayed. These enable various emotes as well.
DELETE FROM `gossip_menu` WHERE (`entry`=58002);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('58002', '2'); -- Hey there, $N. How can I help you?

-- Gossip Menu Step 2
-- = = = = = = = = = = = 
-- Create the menu options for when talking to the character
-- OptionBroadcastTextID and BoxBroadcastTextID are both the text entries from `broadcast_text`.`ID`
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=58002);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `BoxBroadcastTextID`, `VerifiedBuild`) 
VALUES 
('58002', '0', '0', '', '71166', '1', '1', '50000', '0', '0', '50000', '42373', '0'), -- Port to Dalaran for 5g
('58002', '1', '0', 'I would like to check my mail.', '', '1', '1', '50000', '0', '0', '20000', '42373', '0'), -- Summon mail box for 2g
('58002', '2', '0', 'I need to hire a soldier.', '', '1', '1', '50000', '0', '0', '500000', '42373', '0'), -- Summon one guard NPC at a time for 50g each, no max.
('58002', '3', '0', 'I need to hire an elite soldier.', '', '1', '1', '50000', '0', '0', '2250000', '42373', '0'); -- Summon one guard NPC at a time for 225g each, no max.

-- Gossip Menu Step 3
-- = = = = = = = = = = = 
-- Create the smart_scripts that will run when character is spawned and when item menus are clicked by the player
DELETE FROM `smart_scripts` WHERE (`entryorguid`=128);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES
-- Start a despawn countdown of 2 min, otherwise he stays spawned a very long time.
('128', '0', '0', '0', '54', '0', '100', '256', '0', '0', '0', '0', '41', '120000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Homer Iliadus - On Script - Despawn In 120000 ms'),
-- Option 1: Teleport to Dalaran (existing spell)
('128', '0', '1', '0', '62', '0', '100', '0', '58002', '0', '0', '0', '11', '30719', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Homer Iliadus - On Gossip Option 0 Selected - Cast \'Teleport to Dalaran\''),
-- Option 2: Open Mail (existing spell)
('128', '0', '2', '0', '62', '0', '100', '0', '58002', '1', '0', '0', '11', '30524', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Homer Iliadus - On Gossip Option 1 Selected - Cast \'Remote Mail Terminal\''),
-- Option 5: Summon an guard NPC
('128', '0', '3', '0', '62', '0', '100', '0', '58002', '2', '0', '0', '12', '251004', '5', '300000', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Homer Iliadus - On Gossip Option 1 Selected - Summon Creature \'Valiant Soldier\''),
-- Option 5: Summon an guard NPC
('128', '0', '4', '0', '62', '0', '100', '0', '58002', '3', '0', '0', '12', '251005', '5', '300000', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Homer Iliadus - On Gossip Option 1 Selected - Summon Creature \'Elite Soldier\'');


-- Create Helper NPCs
-- = = = = = = = = = = = 
-- Shared gossip menu
DELETE FROM `gossip_menu` WHERE (`entry`=58003);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('58003', '2'); -- Hey there, $N. How can I help you?
-- And the part the player clicks on (handled in C++ script)
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=58003);
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=58004);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `BoxBroadcastTextID`, `VerifiedBuild`) 
VALUES 
('58003', '0', '0', 'Please join my party. (Add/Create Party)', '', '1', '1', '50000', '0', '0', '0', '', '0'), -- Add the NPC to the party (handled in C++)
('58004', '1', '0', 'Thanks for your help! Have a safe trip home. (Dismiss)', '', '1', '1', '50000', '0', '0', '0', '', '0'); -- Dismiss the character

-- Normal level soldier
DELETE FROM `creature_template` WHERE (`entry`=251004);
INSERT INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES ('251004', '0', '0', '0', '0', '0', '25059', '25060', '25061', '25062', 'Valiant Soldier', 'Argent Crusade', '', '58003', '80', '80', '2', '1', '1', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '2', '2048', '2048', '0', '0', '0', '0', '0', '0', '7', '4096', '0', '0', '0', '50', '5', '5', '5', '25', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1.65', '12', '0.7', '2', '1', '0', '0', '1', '0', '0', 'soloHelper', '12340');
-- Add equipment
DELETE FROM `creature_equip_template` WHERE (`CreatureID`=251004);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) 
VALUES ('251004', '1', '29668', '38554', '0', '-18019');

-- Elite level soldier
DELETE FROM `creature_template` WHERE (`entry`=251005);
INSERT INTO `world`.`creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES ('251005', '0', '0', '0', '0', '0', '26224', '26225', '26226', '26227', 'Elite Soldier', 'Argent Crusade', '', '58003', '80', '80', '2', '1', '1', '1', '1.14286', '1.06', '1', '1', '1500', '2000', '1', '1', '2', '2048', '2048', '0', '0', '0', '0', '0', '0', '7', '4096', '0', '0', '0', '50', '10', '10', '10', '50', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '3.4', '14', '1.5', '4.2', '1', '0', '0', '1', '0', '0', 'soloHelper', '12340');
-- Add equipment
DELETE FROM `creature_equip_template` WHERE (`CreatureID`=251005);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) 
VALUES ('251005', '1', '40595', '40596', '0', '-18019');

-- Helper follow and combat logic (indluding spells/attacks) handled using C++ script src/server/scripts/Custom/solo_helper.cpp


