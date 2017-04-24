-- Solozeroth
-- Sell Mark of Honor Hold and Mark of Thrallmar on their respective vendors.

-- Add sell prices for marks
UPDATE `world`.`item_template` SET `BuyPrice`='1500' WHERE `entry`='24579'; -- Honor Hold  15s
UPDATE `world`.`item_template` SET `BuyPrice`='1500' WHERE `entry`='24581'; -- Thrallmar  15s

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`)
VALUES
-- Mark of Honor Hold
('18581', '0', '24579', '0', '0', '0', '0'), -- Alliance Field Scout
('18266', '0', '24579', '0', '0', '0', '0'), -- Warrant Officer Tracy Proudwell
-- Mark of Thrallmar
('18564', '0', '24581', '0', '0', '0', '0'), -- Horde Field Scout
('18267', '0', '24581', '0', '0', '0', '0'); -- Battlecryer Blackeye
