ITEM.name = "Entities Base"
ITEM.model = ""
ITEM.description = ""
ITEM.category = "Entities"
ITEM.entityclass = ""

ITEM.functions.Place = {
	OnRun = function(itemTable)

		local client = itemTable.player
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
    local ent = ents.Create(itemTable.entityclass) 
    ent:SetPos(data.endpos) 
    ent:Spawn()
	
end}
