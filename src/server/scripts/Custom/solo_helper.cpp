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
    SPELL_TAUNT = 355,          // Taunt
    SPELL_DAMAGE_A = 53385,     // Divine Storm
    SPELL_DAMAGE_B = 53595,     // Hammer of the Righteous
    SPELL_DAMAGE_C = 36835,     // Warstomp
    SPELL_FEAR = 16508,     	// Intimidating Roar
    SPELL_ELITE_A = 41367,      // Divine Shield
    SPELL_ELITE_B = 59159,		// Thunderstorm
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
		
		void Reset()
		{
			DoCast(me, SPELL_PROTECTION_A);
			DoCast(me, SPELL_BUFF_B);
			DoCast(me, SPELL_BUFF_C);

		}
		
		void EnterCombat(Unit* who)
		{
			Unit* victim = me->GetVictim();
			DoCast(victim, SPELL_TAUNT);
		}
		
		void UpdateAI(const uint32 uiDiff)
		{
			// If not in combat, follow player. frand(-3.0f, 3.0f) is help prevent multiple helpers from overlapping.
			if (!me->GetVictim())
			{
				Unit* player = me->SelectNearestPlayer(5000.0f);
				
				// Player dead or too far away?
				if (player == NULL || player->isDead())
				{
					me->CleanupsBeforeDelete();
					delete me;
					
					return;
				}
				
				if (!me->isMoving())
					me->SetHomePosition(player->GetPositionX() + frand(-3.0f, 3.0f), player->GetPositionY() + frand(-3.0f, 3.0f), player->GetPositionZ(), me->GetFollowAngle());
				
				me->GetMotionMaster()->MoveFollow(player, frand(-3.0f, 3.0f), me->GetFollowAngle());	
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
					DoCast(me, SPELL_PROTECTION_B);
					cooldownTimer = 20;
				} else if (rng > 95){
					DoCast(me, SPELL_PROTECTION_B);
				} else if (rng > 90){
					DoCast(victim, SPELL_TAUNT);
				} else if (rng > 70){
					DoCast(victim, SPELL_DAMAGE_A);
				} else if (rng > 45){
					DoCast(victim, SPELL_DAMAGE_B);
				} else if (rng > 20){
					DoCast(victim, SPELL_DAMAGE_C);
				} else if (rng > 15){
					DoCast(victim, SPELL_FEAR); 
				} else if (rng > 0){
					DoCast(me, SPELL_HEAL);
				}
				
			} 
			
			DoMeleeAttackIfReady();

			cooldownTimer++; // Approx every 55ms
			
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
		// delete creature
		creature->CleanupsBeforeDelete();
        delete creature;
        
		player->PlayerTalkClass->SendCloseGossip();
		
		return true;
    }
};
  
void AddSC_soloHelper()
{
    new solo_helper();
} 
