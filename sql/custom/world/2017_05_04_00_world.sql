-- Solozeroth
-- Add some NPC "followers", tied to Heirloom trinkets, that work like Hunter pets. They're fans of the player and will find him/her on their own (random world drops).
-- Making use of some existing "Summon Tamed ____" spells that weren't being used.
-- Required some C++ in src/server/scripts/Custom/solo_followers.cpp

-- =  =  =  =  =  =  =  =  =  =  =  =  =
-- Ahurgle Blurg (Murloc)
-- Spells: Psychic Scream, Baby Murloc
-- Flag: 128 + 134217728 (no equip cooldown, bind to account)
-- =  =  =  =  =  =  =  =  =  =  =  =  =
-- Create item that spawns the character
DELETE FROM `item_template` WHERE (`entry`=13342);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) 
VALUES ('13342', '15', '2', '-1', 'Ahurgle Blurg', '24020', '7', '134217856', '0', '1', '150000', '0', '12', '-1', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '65', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4946', '0', '0', '0', '180000', '1193', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Your best friend in the whole wide world! If you\'re lucky, you\'ll find more folks like him.', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '1');
-- Add as a starting item
DELETE FROM `playercreateinfo_item` WHERE `itemid` IN (13342);
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) 
VALUES ('0', '0', '13342', '1');
-- Modify "Tamed Wolf" template
DELETE FROM `creature_template` WHERE (`entry`=5449);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES ('5449', '0', '0', '0', '0', '0', '617', '0', '0', '0', 'Ahurgle Blurg', '', '58005', '1', '1', '0', '1961', '1', '1.2', '1.14286', '1', '0', '0', '1510', '1661', '1', '1', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8122', '24985', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', '1', '1.25', '1', '1.25', '10', '1', '0', '0', '1', '0', '0', 'soloFollowers', '12340');

-- Aura spells, etc
DELETE FROM `creature_template_addon` WHERE (`entry`=5449);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) 
VALUES ('5449', '0', '0', '0', '0', '0', '465 '); -- Devotion Aura
-- Equipment
DELETE FROM `creature_equip_template` WHERE (`CreatureID`=5449);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) 
VALUES ('5449', '1', '44091', '0', '0', '0');
-- Gossip
DELETE FROM `gossip_menu` WHERE (`entry`=58005);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('58005', '15404'); -- All this talk about food is making me hungry!
