hook.Add("PopulateHelpMenu", "ixRules", function(tabs)

tabs["rules"] = function(container)

	for k,itemData in pairs(RULES.Items) do

	local rules = container:Add("DLabel")
	rules:SetFont("ixMediumLightFont")
	rules:SetText(itemData.name)
	rules:Dock(TOP)
	rules:SetTextColor(ix.config.Get("color"))
	rules:SetExpensiveShadow(1, color_black)
	rules:SizeToContents()

		local rulesdesc = container:Add("DLabel")
		rulesdesc:SetFont("ixSmallFont")
		rulesdesc:SetText(itemData.desc)
		rulesdesc:Dock(TOP)
		rulesdesc:SetTextColor(color_white)
		rulesdesc:SetExpensiveShadow(1, color_black)
		rulesdesc:SetWrap(true)
		rulesdesc:SetAutoStretchVertical(true)
		rulesdesc:SizeToContents()
		rulesdesc:DockMargin(0, 0, 0, 8)
	end
end
end)