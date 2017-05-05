// Solozeroth
// Simple NPC "pets" for any class, making use of some existing commands that attach a pet with a toolbar to player.
// Not normal Hunter pets, so this C++ fixes a few things.

#include "ScriptPCH.h"
#include "ScriptedGossip.h"

class solo_followers: CreatureScript
{
public:
    solo_followers() : CreatureScript("soloFollowers") {}
    
	struct solo_followersAI : public ScriptedAI
	{
		
		Player* owner = nullptr;
		
		solo_followersAI(Creature* creature) : ScriptedAI(creature) 
		{
			me->SetReactState(REACT_DEFENSIVE);
			
			owner = me->SelectNearestPlayer(1.0f);
			if (!owner)
				me->setDeathState(CORPSE);
		}
			
		void Reset() // On spawn, evade, end of combat
		{
			// Set reasonable weapon damage, as the equipped weapon and other stats seem to be ignored.
			float myDamage = me->getLevel() * frand(7.5f, 12.5f); // Mix it up a bit every reset (600-1,000 at level 80)
            me->SetBaseWeaponDamage(BASE_ATTACK, MAXDAMAGE, (myDamage * 0.75f));
			me->SetBaseWeaponDamage(BASE_ATTACK, MAXDAMAGE, myDamage);
		}
/*		
		void JustSummoned(Creature* summon) override
		{
			
		}
		
		void EnterCombat(Unit* victim)
		{
			
		}
*/		
		void UpdateAI(const uint32 uiDiff)
		{
			if (!me->GetVictim())
			{	
				// Dismiss if not in combat and player isn't in range
				if (!me->IsWithinDistInMap(owner, me->GetMap()->GetVisibilityRange()))
					me->setDeathState(CORPSE);
			
				// Guard - Only needed becuase UpdateAI() over-rides the default functionality
				if (me->GetReactState() != REACT_PASSIVE && owner->IsInCombat())
					me->Attack(owner->getAttackerForHelper(), true);
			}
			
			if (!UpdateVictim())
				return;
			
			DoMeleeAttackIfReady(); // Only needed becuase UpdateAI() over-rides the default functionality
			
			return;
		}

	};
	
	CreatureAI* GetAI(Creature* creature) const
	{
		return new solo_followersAI(creature);
	}
/*	
	CreatureAI* GetAI(Creature* creature) const
	{
		return new solo_followersAI(creature);
	}
	
	bool OnGossipHello(Player* player, Creature* creature)
	{
		return true;
	}
	
	bool OnGossipSelect(Player* player, Creature* creature, uint32 uiSender, uint32 uiAction)
    {
		
		return true;
    }
*/
};
  
void AddSC_soloFollowers()
{
    new solo_followers();
} 
