// Solozeroth
// Basic "dumb" combat helpers for level 80, called using the Dial-A-Mage trinket. 
// Elite version is less likely to cast a healing spell, but can cast chain lightning. 

#include "ScriptPCH.h"

enum Spells
{
    SPELL_HEAL = 55459,         // Chain Heal
    SPELL_PROTECTION_A = 49284, // Earth Shield
    SPELL_PROTECTION_B = 48952, // (E) Holy Shield
    SPELL_AURA_A = 7376,        // Deffensive Stance (threat)
    SPELL_AURA_B = 54043,       // Retribution Aura
    SPELL_AURA_C = 20135,		// Redoubt (shield use bonus)
    SPELL_AURA_D = 20105,       // Benediction (5% mana cost reduction on instant cast spells)
    SPELL_AURA_E = 31878,       // Judgement of the Wise (restore mana)
    SPELL_AURA_F = 45216,       // (E) +100 MP5
    SPELL_AURA_G = 53592,       // (E) Touched By The Light (+spell power and crit heals)
    SPELL_AURA_H = 69709,       // (E) +250 Spell Power
    SPELL_BUFF_A = 20217,		// Blessing of Kings
    SPELL_BUFF_B = 20166,		// Seal of Wizdom (restore mana)
    SPELL_DAMAGE_A = 53385,     // Divine Storm
    SPELL_DAMAGE_B = 20186,     // Judgement of Wizdom
    SPELL_DAMAGE_C = 36835,     // Warstomp
    SPELL_FEAR = 68950,         // Fear (Boss spell)
    SPELL_ELITE_A = 41367,      // Divine Shield
    SPELL_ELITE_B = 59159,		// Thunderstorm
    SPELL_ELITE_C = 32375,		// Mass Dispell
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
			if (!me->HasAura(SPELL_AURA_A))
				me->AddAura(SPELL_AURA_A, me);
			if (!me->HasAura(SPELL_AURA_B))
				me->AddAura(SPELL_AURA_B, me);
			if (!me->HasAura(SPELL_AURA_C))
				me->AddAura(SPELL_AURA_C, me);
			if (!me->HasAura(SPELL_AURA_D))
				me->AddAura(SPELL_AURA_D, me);
			if (!me->HasAura(SPELL_AURA_E))
					me->AddAura(SPELL_AURA_E, me);
			
			DoCast(me, SPELL_PROTECTION_A);
			DoCast(me, SPELL_BUFF_A);
			DoCast(me, SPELL_BUFF_B);
			
			// Elite only
			if (me->GetCreatureTemplate()->rank == 1)
			{	
				if (!me->HasAura(SPELL_AURA_F))
					me->AddAura(SPELL_AURA_F, me);
				if (!me->HasAura(SPELL_AURA_G))
					me->AddAura(SPELL_AURA_G, me);
				if (!me->HasAura(SPELL_AURA_H))
					me->AddAura(SPELL_AURA_H, me);
			}
		}
		
		void EnterCombat(Unit* victim)
		{
			Reset();
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
					rng += 15;

				if (rng > 100){
					// Elite Only Attack
					DoCast(victim, SPELL_ELITE_A);
					
					if (urand(0,100) > 20){
						DoCast(victim, SPELL_ELITE_B);
					} else {
						DoCast(victim, SPELL_ELITE_C);
					}
					
					cooldownTimer = 20;
				} else if (rng > 96){
					DoCast(me, SPELL_PROTECTION_B);
				} else if (rng > 92){
					DoCast(me, SPELL_PROTECTION_A);
				} else if (rng > 67){
					DoCast(victim, SPELL_DAMAGE_A);
				} else if (rng > 42){
					DoCast(victim, SPELL_DAMAGE_B);
				} else if (rng > 23){
					DoCast(victim, SPELL_DAMAGE_C);
				} else if (rng > 20){
					DoCast(victim, SPELL_FEAR); 
				} else if (rng > 0){
					DoCast(me, SPELL_HEAL);
				}
				
			} 
			
			DoMeleeAttackIfReady();

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
