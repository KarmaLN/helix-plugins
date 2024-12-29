ITEM.name = "Vehicles Simphys Base"
ITEM.model = ""
ITEM.description = ""
ITEM.category = "Vehicles"
ITEM.entityclass = ""

ITEM.functions.Place = {
	OnRun = function(itemTable)

		local client = itemTable.player
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
			
    local V = simfphys.SpawnVehicleSimple( itemTable.entityclass, Vector(data.endpos), Angle(1,1,1) ) 
	
end}
