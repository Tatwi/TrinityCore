// Solozeroth
// Basic "dumb" combat helpers for level 80, called using the Dial-A-Mage trinket. 
// Elite version is less likely to cast a healing spell, but can cast chain lightning. 

#include "ScriptPCH.h"
#include "ScriptedCreature.h"

enum Spells
{
    SPELL_HEAL = 55459,         // Chain Heal
    SPELL_PROTECTION_A = 49284, // Earth Shield
    SPELL_PROTECTION_B = 48952, // Holy Shield
    SPELL_BUFF_A = 20135,       // Redoubt
    SPELL_BUFF_B = 20261,		// Divine Intelect
    SPELL_BUFF_C = 20217,		// Blessing of Kings
    SPELL_BUFF_D = 10060,       // Power Infusion
    SPELL_DAMAGE_A = 53385,     // Divine Storm
    SPELL_DAMAGE_B = 53595,     // Hammer of the Righteous
    SPELL_DAMAGE_C = 36835,     // Warstomp
    SPELL_ELITE_A = 41367,      // Divine Shield
    SPELL_ELITE_B = 59159,		// Thunderstorm
    SPELL_ELITE_C = 48171,		// Resurection
    THREAT_FACTOR = 10000,      // Taunt per swing
};

class solo_helper: CreatureScript
{
public:
    solo_helper() : CreatureScript("soloHelper") {}
    
	struct solo_helperAI : public ScriptedAI
	{
		solo_helperAI(Creature* creature) : ScriptedAI(creature) {}
		
		uint32 cooldownDuration = 100; // When on cooldown, count up to this number every server tick
		uint32 cooldownTimer = 0;
		bool onCoolDown = false;
		Unit* player = NULL;
		
		void Reset() // On spawn, evade, end of combat
		{
			DoCast(me, SPELL_PROTECTION_A);
			DoCast(me, SPELL_BUFF_B);
			DoCast(me, SPELL_BUFF_C);

		}
		
		void impressiveTaunt()
		{
			Unit* victim = me->GetVictim();
			me->AddThreat(victim, (float)THREAT_FACTOR);
		}
		
		void EnterCombat(Unit* who)
		{
			impressiveTaunt();
		}
		
		void UpdateAI(const uint32 uiDiff)
		{
			player = me->SelectNearestPlayer(5000.0f);
			
			// Not in combat:
			if (!me->GetVictim())
			{
				if (player != NULL)
				{
					if (!me->isMoving())
						me->SetHomePosition(player->GetPositionX() + frand(-3.0f, 3.0f), player->GetPositionY() + frand(-3.0f, 3.0f), player->GetPositionZ(), me->GetFollowAngle());
					
					me->GetMotionMaster()->MoveFollow(player, frand(-3.0f, 3.0f), me->GetFollowAngle());
				}
			}
			
			if (!UpdateVictim())
				return;
				
			// In combat 
			Unit* victim = me->GetVictim();
			
			if (!onCoolDown)
			{
				cooldownTimer = 0;
				onCoolDown = true;
				
				uint32 rng = urand(0,100);
				
				// If Eilte, enable chance for special attack and cooldown reduction
				if (me->GetCreatureTemplate()->rank == 1)
					rng += 10;

				if (rng > 100){
					// Elite Only Attack
					DoCast(victim, SPELL_ELITE_A);
					DoCast(victim, SPELL_ELITE_B);
					cooldownTimer = 20;
				} else if (rng > 95){
					DoCast(me, SPELL_PROTECTION_B);
				} else if (rng > 90){
					DoCast(me, SPELL_PROTECTION_A);
				} else if (rng > 70){
					DoCast(victim, SPELL_DAMAGE_A);
				} else if (rng > 45){
					DoCast(victim, SPELL_DAMAGE_B);
				} else if (rng > 20){
					DoCast(victim, SPELL_DAMAGE_C);
				} else if (rng > 15){
					DoCast(victim, SPELL_BUFF_D); 
				} else if (rng > 0){
					DoCast(me, SPELL_HEAL);
				}
				
			} 
			
			DoMeleeAttackIfReady();
			impressiveTaunt();

			cooldownTimer++; // Server "tick" approx every 55ms
			
			if (cooldownTimer > cooldownDuration){
				onCoolDown = false;
			}
		}
	};
	
	CreatureAI* GetAI(Creature* creature) const
	{
		return new solo_helperAI(creature);
	}
	
	bool OnGossipSelect(Player* player, Creature* creature, uint32 uiSender, uint32 uiAction)
    {
		player->PlayerTalkClass->ClearMenus();
		player->PlayerTalkClass->SendCloseGossip();
		
		creature->Say("Walking down the street! Looking at my feet! Watching the leaves, fall off of the trees!", LANG_UNIVERSAL);
		creature->CleanupsBeforeDelete();
		delete creature;
		
		return true;
    }
};
  
void AddSC_soloHelper()
{
    new solo_helper();
} 
