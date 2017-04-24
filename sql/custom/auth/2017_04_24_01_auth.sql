-- Solozeroth
-- Allow the player to use .guild invite
-- **WARNING** DO NOT USE ON A PUBLIC SERVER!

-- .guild (Required to show the command in the .help list)
DELETE FROM `rbac_linked_permissions` WHERE `id`='195' and`linkedId`='401';
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES ('195', '401');

-- .guild invite
DELETE FROM `rbac_linked_permissions` WHERE `id`='195' and`linkedId`='404';
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES ('195', '404');
