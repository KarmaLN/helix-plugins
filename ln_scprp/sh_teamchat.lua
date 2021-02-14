ix.chat.Register("security", {
			
	OnChatAdd = function(self, speaker, text)

		if (speaker:Team() == FACTION_SECURITY) then
			chat.AddText(Color(0, 120, 200), "[Security Radio] ", speaker, color_white, ": "..text)
		else
			return speaker:NotifyLocalized("You are not allowed to do this!")
		end	
		
	end,
	
	prefix = {"/security"},
	description = "@cmdOOC",
	noSpaceAfter = true,
	deadCanChat = true
})

ix.chat.Register("mtf", {
			
	OnChatAdd = function(self, speaker, text)

		if (speaker:Team() == FACTION_MTF) then
			chat.AddText(Color(0, 80, 200), "[MTF Radio] ", speaker, color_white, ": "..text)
		else
			return speaker:NotifyLocalized("You are not allowed to do this!")
		end	
		
	end,
	
	prefix = {"/mtf"},
	description = "@cmdOOC",
	noSpaceAfter = true,
	deadCanChat = true
})

ix.chat.Register("chaos", {
			
	OnChatAdd = function(self, speaker, text)

		if (speaker:Team() == FACTION_CHAOS) then
			chat.AddText(Color(0, 200, 0), "[Chaos Radio] ", speaker, color_white, ": "..text)
		else
			return speaker:NotifyLocalized("You are not allowed to do this!")
		end	
		
	end,
	
	prefix = {"/chaos"},
	description = "@cmdOOC",
	noSpaceAfter = true,
	deadCanChat = true
})