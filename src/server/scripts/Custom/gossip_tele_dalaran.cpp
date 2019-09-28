// Solozeroth
// NPC teleports the player using a gossip conversation trigger.

#include "Define.h"
#include "ScriptMgr.h"
#include "SharedDefines.h"
#include "Unit.h"
#include "ScriptedGossip.h"
#include "Chat.h"
#include "Language.h"
 
class gossip_tele_dalaran: UnitScript
{
public:
    gossip_tele_dalaran() : UnitScript("gossipTeleDalaran") {}
 
    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
    {
		if (pPlayer->IsInCombat())
		{
			pPlayer->PlayerTalkClass->SendCloseGossip();
			ChatHandler(pPlayer->GetSession()).PSendSysMessage(LANG_YOU_IN_COMBAT);

			return true;
		}
		
		pPlayer->TeleportTo(571, 5804.85f, 621.71f, 647.90f, 1.75f);
		
		return true;
    }
};
  
void AddSC_gossipTeleDalaran()
{
    new gossip_tele_dalaran();
} 
