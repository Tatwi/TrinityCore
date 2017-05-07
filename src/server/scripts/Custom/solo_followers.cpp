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
			owner = me->SelectNearestPlayer(1.0f);
			if (!owner)
				me->setDeathState(CORPSE);
			
			me->SetReactState(REACT_DEFENSIVE);
			
			if (me->GetEntry() == 5436)
				me->SetCanDualWield(true);
		}
			
		void Reset() // On spawn, evade, end of combat
		{
			/* Set my own consistent (and functional) follower damage.
			 * Factors used to differentiate the characters are
			 * creature_template: BaseAttackTime, dmgschool, spells
			 * creature_template_addon: aura spells/abilities
			 */ 
			float myDamage = me->getLevel() * frand(7.5f, 12.5f); // Mix it up a bit every reset (600-1,000 at level 80)
            me->SetBaseWeaponDamage(BASE_ATTACK, MINDAMAGE, (myDamage * 0.75f));
			me->SetBaseWeaponDamage(BASE_ATTACK, MAXDAMAGE, myDamage);
			me->UpdateDamagePhysical(BASE_ATTACK);
			
			/* Off-hand damage seems to stick at 1-5 even with the dual wield aura AND level 80 min/max set in the database. 
			 * I tried manually setting it below too, but that also did not have an effect.
			 * So, I kept dual wielding on some followers for looks and made up for the off hand damage by increasing attack speed and the use of auras/spells.
			me->SetBaseWeaponDamage(OFF_ATTACK, MINDAMAGE, (myDamage * 0.45f));
			me->SetBaseWeaponDamage(OFF_ATTACK, MAXDAMAGE, myDamage * 0.75f);
			me->UpdateDamagePhysical(OFF_ATTACK);
			*/
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
			
			if (!me->IsMounted())
				me->SetSpeedRate(MOVE_RUN, 1.14286f); // Without this mount speed can persist after dismounting due to combat
				
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
