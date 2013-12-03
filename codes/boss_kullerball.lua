--[[
	Waffenboss Kullerball
	Copyright by Prismatic-Network
	Copyright by Fabian Fassott aka Psykko
	
	ScriptComplete: 85%
	boss_kullerbro script missing in Phase 2
]]--

-- Local

local kullerball_id 	= 60000
local spell2ziel = Unit:RandomPlayer(0)


local npc_buffs 		= 	{
							["buffs"] = {48469,48161,20217,25898,56520}
							}
local player_buffs 		= 69127

local SPELL_FLAMMENSTOSS 	= 62998
local SPELL_METEORSCHLAG 	= 75877
local SPELL_SCHMETTERN	 	= 666683
local SPELL_WIRBELN		 	= 67345
local SPELL_AATEM		 	= 67345
local SPELL_KOPFSTOSS		= 66770
local SPELL_HEILEN			= 71131
local SPELL_KRAFT			= 82396


-- ####### Haupt Codebox Start

-- Funktion "OnCombat"
function Kullerball_OnCombat(Unit, Event, pPlayer) -- Funktion bei Kampf beginn.
	Unit:SendChatMessage(14, 0, "Endlich eine w\195\188rdige Herausforderung!")
		for _, npcbuff in ipairs[npc_buffs.buffs] do
		Unit:CastSpell(npcbuff)
		pPlayer:CastSpell(69127)
		end
	Unit:RegisterEvent("Kullerball_Phase1", 5000, 0)
end

-- Funktion "Phase1"
-- Phase 1 Start
function Kullerball_Phase1(Unit, Event)
Unit:RemoveEvents()
Unit:RegisterEvent("Kullerball_Meteorschlag", 10000, 0)
Unit:RegisterEvent("Kullerball_Aatem", 15000, 0)
Unit:RegisterEvent("Kullerball_Kopfstoss", 5000, 0)
Unit:RegisterEvent("Kullerball_Flammenstoss", 7000, 0)
Unit:RegisterEvent("Kullerball_Schmettern", 12000, 0)
Unit:RegisterEvent("Kullerball_Wirbeln", 30000, 0)
Unit:RegisterEvent("Kullerball_Phase2", 50000, 0)
end

-- Funktion "Kullerball_Meteorschlag"
function Kullerball_Meteorschlag(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_METEORSCHLAG, spell2ziel)
Unit:SendChatMessage(12, "FEUER FREI!")
end

-- Funktion "Kullerball_Aatem"
function Kullerball_Aatem(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_AATEM, spell2ziel)
Unit:SendChatMessage(12, "Werdet zu Eis!")
end

-- Funktion "Kullerball_Kopfstoss"
function Kullerball_Kopfstoss(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_KOPFSTOSS, spell2ziel)
Unit:SendChatMessage(12, "Wie gefällt euch das?")
end

-- Funktion "Kullerball_Flammenstoss"
function Kullerball_Flammenstoss(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_FLAMMENSTOSS, spell2ziel)
Unit:SendChatMessage(12, "BRENNT!")
end

-- Funktion "Kullerball_Schmettern"
function Kullerball_Schmettern(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_SCHMETTERN, spell2ziel)
Unit:SendChatMessage(12, "HUAAH!")
end

-- Funktion "Kullerball_Wirbeln"
function Kullerball_Wirbeln(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_WIRBELN, spell2ziel)
Unit:SendChatMessage(12, "Weg von mir!")
end
-- Phase 1 Ende

-- Funktion "Phase2"
-- Phase 2 Start
function Kullerball_Phase2(Unit, Event)
if Unit:GetHealthPct () > 60 then
end
Unit:RemoveEvents()
Unit:SendChatMessage(12, "Argh, Ich muss mir Hilfe holen, Bruder komme und helfe mir! Halte diese Kreaturen von mir fern wärend ich mich Heile!")
Unit:SpawnCreature(60001, x , y, z, o,  16,  350000)
Unit:RegisterEvent("Kullerball_Heilen", 5000, 0)
end

-- Funktion "Kullerball_Heilen"
function Kullerball_Heilen(Unit, Event)
Unit:CastSpell(SPELL_HEILEN)
Unit:SendChatMessage(12, "Capernian gib mir Kraft!")
Unit:RegisterEvent("Kullerball_Phase3", 50000, 0)
end
-- Phase 2 Ende

-- Funktion "Phase3"
-- Phase 3 Start
function Kullerball_Phase3(Unit, Event)
if Unit:GetHealthPct () > 40 then
end
Unit:RemoveEvents()
Unit:SendChatMessage(12, "Argh, ich verliere! CAPERNIAN!? GIB MIR DEINE KRAFT!")
Unit:RegisterEvent("Kullerball_KRAFT", 20000, 0)
end

-- Funktion "Kullerball_Kraft"
function Kullerball_KRAFT(Unit, Event)
Unit:CastSpell(SPELL_HEILEN)
Unit:SendChatMessage(12, "Capernian gib mir Kraft!")
Unit:RegisterEvent("Kullerball_Phase4", 50000, 0)
end
-- Phase 3 Ende


-- Funktion "Phase4"
-- Phase 4 Start
function Kullerball_Phase3(Unit, Event)
if Unit:GetHealthPct () > 20 then
end
Unit:RemoveEvents()
Unit:SendChatMessage(12, "Es ist an der Zeit das ich Richtig austeile!")
end
Unit:RegisterEvent("Kullerball_Meteorschlag", 10000, 0)
Unit:RegisterEvent("Kullerball_Aatem", 15000, 0)
Unit:RegisterEvent("Kullerball_Kopfstoss", 5000, 0)
Unit:RegisterEvent("Kullerball_Flammenstoss", 7000, 0)
Unit:RegisterEvent("Kullerball_Schmettern", 12000, 0)
Unit:RegisterEvent("Kullerball_Wirbeln", 30000, 0)
Unit:RegisterEvent("Kullerball_Phase2", 50000, 0)
end

-- Funktion "Kullerball_Meteorschlag"
function Kullerball_Meteorschlag(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_METEORSCHLAG, spell2ziel)
Unit:SendChatMessage(12, "FEUER FREI!")
end

-- Funktion "Kullerball_Aatem"
function Kullerball_Aatem(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_AATEM, spell2ziel)
Unit:SendChatMessage(12, "Werdet zu Eis!")
end

-- Funktion "Kullerball_Kopfstoss"
function Kullerball_Kopfstoss(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_KOPFSTOSS, spell2ziel)
Unit:SendChatMessage(12, "Wie gefällt euch das?")
end

-- Funktion "Kullerball_Flammenstoss"
function Kullerball_Flammenstoss(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_FLAMMENSTOSS, spell2ziel)
Unit:SendChatMessage(12, "BRENNT!")
end

-- Funktion "Kullerball_Schmettern"
function Kullerball_Schmettern(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_SCHMETTERN, spell2ziel)
Unit:SendChatMessage(12, "HUAAH!")
end

-- Funktion "Kullerball_Wirbeln"
function Kullerball_Wirbeln(Unit, Event)
Unit:FullCastSpellOnTarget(SPELL_WIRBELN, spell2ziel)
Unit:SendChatMessage(12, "Weg von mir!")
end
-- Phase 4 Ende

-- Function "Kullerball_OnLeaveCombat"
function Kullerball_OnLeaveCombat(Unit, Event) -- Funktion beim Kampf verlassen.
	Unit:SendChatMessage(14, 0, "Das war etwa alles? Ich hatte mir erhofft!")
end

-- Function "Kullerball_OnKilledTarget"
function Kullerball_OnKilledTarget(Unit, Event) -- Funktion beim Spieler Takedown.
	Unit:SendChatMessage(14, 0, ""..pPlayer:GetName..", du bist zu schwach!")
end

-- Function "Kullerball_OnDied"
function Kullerball_OnDied(Unit, Event) -- Funktion beim Sterben.
	Unit:SendChatMessage(14, 0, "Capernian wird mich Rächen!")
end
-- ####### Haupt Codebox Ende

-- Register

RegisterUnitEvent(kullerball_id, 1, "Kullerball_OnCombat")
RegisterUnitEvent(kullerball_id, 2, "Kullerball_OnLeaveCombat")
RegisterUnitEvent(kullerball_id, 3, "Kullerball_OnKilledTarget")
RegisterUnitEvent(kullerball_id, 4, "Kullerball_OnDied")