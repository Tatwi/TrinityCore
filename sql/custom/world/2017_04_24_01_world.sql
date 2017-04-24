-- Solozeroth
-- Add a welcome letter to a new character's inventory

-- Create the new item
DELETE FROM `item_template` WHERE `entry` IN (1536);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) 
VALUES 
('1536', '9', '0', '-1', 'Welcome to Solozeroth', '1155', '4', '0', '0', '1', '0', '42', '0', '-1', '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '1', 
'A letter full of handy information!', -- Description
'4001', -- `page_text`.`ID` is the first page of the letter.
'0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0');

-- Create the pages of the letter
DELETE FROM `page_text` WHERE `ID` IN (4001);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `VerifiedBuild`) 
VALUES ('4001', 
'Welcome!

In case you were not aware, the magical city of Dalaran was recently transported to Northrend and opened to the general public, to aid in the fight against the Lich King. In Dalaran you will find many amazing things to spend your gold on, as well as other conveniences and resources. Alliance members wishing to visit Dalaran should speak to Bob Rasket in Stormwind Castle, while Horde Members should speak to Wi Nuggit at the castle in the Valley of Wizdom in Orgrimmar.

Use your money wisely, you can buy darn near anything with it - including badges and honor!', 
'4002', '0');

DELETE FROM `page_text` WHERE `ID` IN (4002);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `VerifiedBuild`) 
VALUES ('4002', 
'In these troubled times, you will find that the Horde and Alliance are more willing to work together. As a result, cross faction chat, guilds, grouping, and trade are all possible.

Speaking of guilds, you can create your own by simply purchasing a charter and speaking to the Guild Master again. You do not need to collect signatures.

To invite your other characters, type the following:

.guild invite CharacterName "Guild Name"', 
'4003', '0');

DELETE FROM `page_text` WHERE `ID` IN (4003);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `VerifiedBuild`) 
VALUES ('4003', 
'Quick Info:

+25% XP from quests and killing monsters.
+25% money from creatures.
+25% money from quests (+50% at level 80).

All flight paths are known.

May create a Death Knight at any time.

Dual-spec is available at level 15 for 150 gold.

You can learn 3 primary professions.

You can enter dungeons and raids without a group and at any level.
', 
'0', '0');

-- Add the letter as starting item
DELETE FROM `playercreateinfo_item` WHERE `itemid` IN (1536);
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) 
VALUES ('0', '0', '1536', '1');
