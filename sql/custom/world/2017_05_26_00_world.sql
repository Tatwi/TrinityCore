-- Solozeroth Outland Gear Adjustments
-- Documentation located in doc/Solozeroth/mod-outland-gear-adjustment.md

-- Badge of Justice 
UPDATE `item_template` SET `RequiredLevel`='60' WHERE `entry`='29434';

-- Level 61 - 70 rares gear to level 60
UPDATE `item_template` SET `RequiredLevel`='60'
WHERE `item_template`.`RequiredLevel` > 60 AND `item_template`.`RequiredLevel` <= 70 AND `item_template`.`Quality` = 3 AND `item_template`.`InventoryType` > 0;

-- Level 70 epic gear to level 65
UPDATE `item_template` SET `RequiredLevel`='65'
WHERE `item_template`.`RequiredLevel` = 70 AND `item_template`.`Quality` = 4 AND `item_template`.`InventoryType` > 0;

-- Tier 4 raid token costs to Badge of Justice 100 (ExtendedCost 2333)
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1235;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1200;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1215;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1216;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1203;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1237;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1217;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1206;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1239;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1219;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1212;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1243;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1218;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1209;
UPDATE `npc_vendor` SET `ExtendedCost` = 2333 WHERE `npc_vendor`.`ExtendedCost` = 1241;

-- Tier 5 raid token costs to Badge of Justice 150 (ExtendedCost 2329)
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1342;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1332;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1357;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1343;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1333;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1358;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1344;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1334;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1359;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1345;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1335;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1360;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1346;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1336;
UPDATE `npc_vendor` SET `ExtendedCost` = 2329 WHERE `npc_vendor`.`ExtendedCost` = 1361;

-- Allow Death Knight to use Warrior raid tier 4 and 5 sets
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29011; -- T4 Tank
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29012;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29015;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29016;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29017;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29019; -- T4 DPS
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29020;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29021;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29022;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 29023;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30113; -- T5 DPS
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30114;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30115;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30116;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30117;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30118; -- T5 Tank
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30119;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30120;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30121;
UPDATE `world`.`item_template` SET `AllowableClass`= 33 WHERE `entry` = 30122;

-- Reduce some faction standing requirements to a point that is attainable while leveling solo in Outland
-- Aldor
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 932 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Cenarion Expidition
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 942 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Consortium
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 933 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Honor Hold
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 946 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Keepers of Time
UPDATE `item_template` SET `RequiredReputationRank`='3'
WHERE `item_template`.`RequiredReputationFaction` = 989 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 3 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Kurenai
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 978 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Lower City
UPDATE `item_template` SET `RequiredReputationRank`='4'
WHERE `item_template`.`RequiredReputationFaction` = 1011 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 4 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Mag'har
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 941 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Scryer
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 934 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Sha'tar
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 935 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Sporeggar
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 970 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';
-- Thrallmar
UPDATE `item_template` SET `RequiredReputationRank`='5'
WHERE `item_template`.`RequiredReputationFaction` = 947 AND `item_template`.`InventoryType` > 0 AND `item_template`.`RequiredReputationRank` > 5 AND `item_template`.`name` NOT LIKE '%tabard%';

-- Any creature that gives rep up to Neutral will now give rep up to Honored
UPDATE `creature_onkill_reputation` SET `MaxStanding1`='5'
WHERE `creature_onkill_reputation`.`MaxStanding1` = 3;
-- Any creature that gives rep up to Friendly will now give rep up to Honored
UPDATE `creature_onkill_reputation` SET `MaxStanding1`='5'
WHERE `creature_onkill_reputation`.`MaxStanding1` = 4;

-- Lower level on Aldor and Scryer item hand in quests
UPDATE `quest_template` SET `MinLevel`= 60 WHERE `quest_template`.`ID` = 10325; -- Marks of Kil'jaeden
UPDATE `quest_template` SET `MinLevel`= 60 WHERE `quest_template`.`ID` = 10326; -- More Marks of Kil'jaeden
UPDATE `quest_template` SET `MinLevel`= 60 WHERE `quest_template`.`ID` = 10327; -- Single Marks of Kil'jaeden
UPDATE `quest_template` SET `MinLevel`= 60 WHERE `quest_template`.`ID` = 10412; -- Firewing Signets
UPDATE `quest_template` SET `MinLevel`= 60 WHERE `quest_template`.`ID` = 10415; -- More Firewing Signets
UPDATE `quest_template` SET `MinLevel`= 60 WHERE `quest_template`.`ID` = 10414; -- Single Firewing Signets

-- Lower level and item requirement Lower City quests
UPDATE `quest_template` SET `MinLevel`= 60 WHERE `quest_template`.`ID` = 10917; -- The Outcast's Plight
UPDATE `quest_template` SET `RequiredItemCount1`= 10 WHERE `quest_template`.`ID` = 10917;
UPDATE `quest_template` SET `LogDescription`= 'Bring 10 Arakkoa Feathers to Vekax in Lower City.' WHERE `quest_template`.`ID` = 10917;
UPDATE `quest_template` SET `MinLevel`= 60 WHERE `quest_template`.`ID` = 10918; -- More Feathers
UPDATE `quest_template` SET `RequiredItemCount1`= 10 WHERE `quest_template`.`ID` = 10918;
UPDATE `quest_template` SET `LogDescription`= 'Bring 10 Arakkoa Feathers to Vekax in Lower City.' WHERE `quest_template`.`ID` = 10918;

-- Add Akkora Feathers to some creatures in Hellfire
DELETE FROM `creature_loot_template` WHERE `Entry` = 16966 AND `Item` = 25719;
DELETE FROM `creature_loot_template` WHERE `Entry` = 16967 AND `Item` = 25719;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES 
('16966', '25719', '0', '30', '0', '1', '0', '1', '1'),
('16967', '25719', '0', '30', '0', '1', '0', '1', '1');

-- Reduce level of Shattered Hand troops in the Path of Glory (Hellfire Peninsula) to aid in Honor Hold / Thrallmar rep gain
UPDATE `creature_template` SET `minlevel` = 58 WHERE `creature_template`.`entry` = 16867; -- Grunt
UPDATE `creature_template` SET `maxlevel` = 60 WHERE `creature_template`.`entry` = 16867; 
UPDATE `creature_template` SET `minlevel` = 58 WHERE `creature_template`.`entry` = 16870; -- Captain
UPDATE `creature_template` SET `maxlevel` = 60 WHERE `creature_template`.`entry` = 16870;
UPDATE `creature_template` SET `minlevel` = 58 WHERE `creature_template`.`entry` = 19411; -- Warlock
UPDATE `creature_template` SET `maxlevel` = 60 WHERE `creature_template`.`entry` = 19411;
UPDATE `creature_template` SET `minlevel` = 58 WHERE `creature_template`.`entry` = 19410; -- Neophyte
UPDATE `creature_template` SET `maxlevel` = 60 WHERE `creature_template`.`entry` = 19410; 

-- Add Aldor and Scryer hand in items to Path of Glory troops
DELETE FROM `creature_loot_template` WHERE `Entry` = 16867 AND `Item` = 29425;
DELETE FROM `creature_loot_template` WHERE `Entry` = 16867 AND `Item` = 29426;
DELETE FROM `creature_loot_template` WHERE `Entry` = 16870 AND `Item` = 29425;
DELETE FROM `creature_loot_template` WHERE `Entry` = 16870 AND `Item` = 29426;
DELETE FROM `creature_loot_template` WHERE `Entry` = 19411 AND `Item` = 29425;
DELETE FROM `creature_loot_template` WHERE `Entry` = 19411 AND `Item` = 29426;
DELETE FROM `creature_loot_template` WHERE `Entry` = 19410 AND `Item` = 29425;
DELETE FROM `creature_loot_template` WHERE `Entry` = 19410 AND `Item` = 29426;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) 
VALUES 
('16867', '29425', '0', '30', '0', '1', '0', '1', '1'),
('16867', '29426', '0', '30', '0', '1', '0', '1', '1'),
('16870', '29425', '0', '30', '0', '1', '0', '1', '1'),
('16870', '29426', '0', '30', '0', '1', '0', '1', '1'),
('19411', '29425', '0', '30', '0', '1', '0', '1', '1'),
('19411', '29426', '0', '30', '0', '1', '0', '1', '1'),
('19410', '29425', '0', '30', '0', '1', '0', '1', '1'),
('19410', '29426', '0', '30', '0', '1', '0', '1', '1');

-- Change dungeon quest "Weaken the Ramparts" into an open world quest in the Path of Glory
-- Alliance
DELETE FROM `quest_template` WHERE `ID` IN (9575);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) 
VALUES ('9575', '2', '62', '58', '3535', '81', '0', '0', '0', '0', '0', '9607', '8', '54000', '12000', '0', '0', '0', '0', '0', '136', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25716', '1', '25715', '1', '25718', '1', '25717', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '946', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1101', 'Weaken the Ramparts', 'Kill fel orc troops who are occupying The Path of Glory between Hellfire Citadel and the Dark Portal.', 'Quick, $c, there isn\'t much time.  Honor Hold\'s existence balances on the razor\'s edge!$B$BWe\'re caught between Hellfire Citadel in the west and the forces of the Burning Legion to the east.  With the Legion\'s attention turned toward the Dark Portal we must take this opportunity to strike at the fel orcs of Hellfire Citadel.  The key to this is to first break through their ramparts!$B$BGo there, slay as many as you can and return to Gunny across the hall here from me!', '', 'Return to Gunny at Honor Hold in Hellfire Peninsula.', '16867', '16870', '19411', '19410', '30', '25', '15', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '12340');
-- Horde'
DELETE FROM `quest_template` WHERE `ID` IN (9572);
INSERT INTO `world`.`quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) 
VALUES ('9572', '2', '62', '59', '3535', '81', '0', '0', '0', '0', '0', '9608', '8', '54000', '48300', '0', '0', '0', '0', '0', '136', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25716', '1', '25715', '1', '25718', '1', '25717', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '947', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '690', 'Weaken the Ramparts', 'Kill fel orc troops who are occupying The Path of Glory between Hellfire Citadel and the Dark Portal.', 'Quick, there isn\'t much time.  Thrallmar\'s existence balances on the razor\'s edge!$B$BWe\'re caught between Hellfire Citadel in the west and the Burning Legion to the east.  With the Legion\'s attention turned toward the Dark Portal we must take this opportunity to strike at the fel orcs of Hellfire Citadel.  The key to this is to first break through their ramparts!$B$BGo there, slay their leaders, and then bring back proof to Caza\'rez across the room from me!', '', 'Return to Caza\'rez at Thrallmar in Hellfire Peninsula.', '16867', '16870', '19411', '19410', '30', '25', '15', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '12340');

-- Change Path of Glory group quest elites into normals'
-- "Dispatching the Commander" (A/H)
DELETE FROM `creature_template` WHERE `entry` IN (19264);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES ('19264', '0', '0', '0', '0', '0', '18686', '0', '0', '0', 'Force-Commander Gorax', '0', '61', '61', '1', '1662', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '32832', '2048', '0', '0', '7', '0', '19264', '19264', '0', '0', '0', '1039', '1362', 'SmartAI', '1', '1', '4', '1', '1', '4.6', '1', '0', '121', '1', '0', '0', '', '12340');
-- "Drill the Drillmaster" (A)
DELETE FROM `creature_template` WHERE `entry` IN (19312);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES ('19312', '0', '0', '0', '22334', '0', '18725', '0', '0', '0', 'Drillmaster Zurok', '0', '61', '61', '1', '1662', '0', '1', '1.14286', '1', '0', '0', '2000', '2000', '1', '1', '1', '64', '2048', '0', '0', '7', '0', '19312', '19312', '0', '0', '0', '995', '1304', 'SmartAI', '1', '1', '4', '1', '1', '4.6', '1', '0', '0', '1', '0', '0', '', '12340');

