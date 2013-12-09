#include "Setup.h"


				
class GossipPortItem: public Arcemu::Gossip::Script
{
public:

	void OnHello(Object* pObject, Player* Plr)
		{
		Arcemu::Gossip::Menu menu(pObject->GetGUID(),	1);
		menu.AddItem( Arcemu::Gossip::ICON_CHAT, "Playertreff", 1);
		menu.AddItem( Arcemu::Gossip::ICON_CHAT, "Chillzone", 2);
		menu.AddItem( Arcemu::Gossip::ICON_CHAT, "Levelarena", 3);
		menu.AddItem( Arcemu::Gossip::ICON_CHAT, "Staedte", 4);
		menu.AddItem( Arcemu::Gossip::ICON_BATTLE,"Gurubashi Arena", 5);
		menu.AddItem( Arcemu::Gossip::ICON_BATTLE,"Custom Inis", 6);
		menu.AddItem( Arcemu::Gossip::ICON_INTERACT_1, "Wiederbelebungsnachwirkungen entfernen", 7);
		menu.AddItem( Arcemu::Gossip::ICON_BATTLE, "Heilen", 8);
		menu.AddItem( Arcemu::Gossip::ICON_INTERACT_2, "Buffen", 9);
		menu.Send(Plr);
		}
	void OnSelectOption(Object* pObject, Player* Plr, uint32 Id, const char * Code)
	{	 printf("Id is %d \n", Id);
		if (1 == Id){
			Plr->SafeTeleport( 1, 0, -11821.4f, -4760.38f, 7.011f, 2.3f);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 2){
			Plr->SafeTeleport(530, 0, -1844.81f, 8481.88f, -20.7f, 4.7f);
			Arcemu::Gossip::Menu::Complete(Plr);
			}
		if (Id == 3){
			Plr->SafeTeleport(1,0, -4474.75f, -778.4f, -41.5f, 1.88f);
			Arcemu::Gossip::Menu::Complete(Plr);
			}
		if (Id == 4){
			Arcemu::Gossip::Menu menu1(pObject->GetGUID(), 1);
			if (Plr->getRace() == 1 || Plr->getRace() == 3 || Plr->getRace() == 4 || Plr->getRace() == 7 || Plr->getRace() == 11)
			{	Arcemu::Gossip::Menu menu1(pObject->GetGUID(), 1);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Sturmwind", 50);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Eisenschmiede", 51);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Darnassus", 52);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Exodar", 53);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Shattrath", 54);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Dalaran", 55);
				menu1.AddItem( Arcemu::Gossip::ICON_MONEY_BAG, "Zurueck", 999);
				menu1.Send(Plr);		
			
			
			
			}

			if (Plr->getRace() == 2 || Plr->getRace() == 5 || Plr->getRace() == 6 || Plr->getRace() == 8 || Plr->getRace() == 10)
			{	Arcemu::Gossip::Menu menu1(pObject->GetGUID(), 1);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Orgrimmar", 56);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Donnerfels", 57);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Unterstadt", 58);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Silbermond", 59);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Shattrath", 54);
				menu1.AddItem( Arcemu::Gossip::ICON_CHAT, "Dalaran", 55);
				menu1.AddItem( Arcemu::Gossip::ICON_MONEY_BAG, "Zurueck", 999);
				menu1.Send(Plr);
			}

				
		}

		if (Id == 5){
			Plr->SafeTeleport(0, 0, -13255.29f, 171.114f, 34.001f, 1.1f);
			Arcemu::Gossip::Menu::Complete(Plr);		
		}
		if (Id == 6){
			Arcemu::Gossip::Menu	menu2 (pObject->GetGUID(), 1);
			menu2.AddItem( Arcemu::Gossip::ICON_BATTLE, "T11 Instanz", 10);
			menu2.AddItem( Arcemu::Gossip::ICON_BATTLE, "T11,5 Instanz", 11);
			menu2.AddItem( Arcemu::Gossip::ICON_BATTLE, "Worldboss 1", 12);
			menu2.AddItem( Arcemu::Gossip::ICON_BATTLE, "Worldboss 2", 13);
			menu2.Send(Plr);
		
		}
		if (Id == 7){
			Plr->addSpell(15007);
			Plr->removeSpell(15007, false, false, 0);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 8){
			Plr->SetHealthPct(100);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 9){
			Plr->CooldownCheat = true;
			Plr->CastTimeCheat = true;
			Plr->CastSpell(Plr, 56520, false);
			Plr->CastSpell(Plr, 58054, false);
			Plr->CastSpell(Plr, 56521, false);
			Plr->CastSpell(Plr, 48469, false);
			Plr->CastSpell(Plr, 42995, false);
			Plr->CastSpell(Plr, 48161, false);
			Plr->CooldownCheat = false;
			Plr->CastTimeCheat = false;
		}
		if (Id == 10){
			
			Plr->SafeTeleport(0, 0, -7525.8f, -1226.01f, 286.001f, 1.1f);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 11){
			Plr->SafeTeleport(571,0, 3897.2f, 6985.001f, 70.001f, 0);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 12){
			if (Plr->HasFinishedQuest(80515) == true){
				Plr->SafeTeleport(571,0, 3860, 6989, 153, 0);		
			}
		}
		if (Id == 13){
			if (Plr->HasFinishedQuest(80515) == true){
				Plr->SafeTeleport(0, 0, -10705.509766f, -419.256134f, 126.1f, 0);	
			}
		}
		if (Id == 50){
			Plr->SafeTeleport(0,0, -8913.23f, 554.63f, 93.79f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		
		if (Id == 51){
			Plr->SafeTeleport(0,0, -4982.16f, -880.75f, 501.65f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 52){
			Plr->SafeTeleport(1,0, 9945.49f, 2609.89f, 1316.26f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 53){
			Plr->SafeTeleport(530, 0, -4002.67f, -11875.54f, -0.71f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 54){
			Plr->SafeTeleport(530,0, -1817.82f, 5453.04f, -12.42f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 55){
			Plr->SafeTeleport(571, 0, 5804.75f, 615, 651.2f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 56){
			Plr->SafeTeleport(1,0, 1502.71f, -4415.41f, 21.77f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 57){
			Plr->SafeTeleport(1,0, -1285.23f, 117.86f, 132.99f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 58){
			Plr->SafeTeleport(0,0, 1831.26f, 238.52f, 60.52f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
		if (Id == 59){
			Plr->SafeTeleport(530,0, 9398.75f, -7277.41f, 14.21f, 1);
			Arcemu::Gossip::Menu::Complete(Plr);
		}
	}
	void Destroy() { delete this; }
};

void SetupPortItem(ScriptMgr * mgr)
{
	mgr->register_item_gossip(85666, new GossipPortItem);		// PortNPC
}