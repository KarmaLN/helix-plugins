
ITEM.name = ""
ITEM.description = ""
ITEM.model = Model("")
ITEM.category = ""
ITEM.width = 1
ITEM.height = 1

ITEM.functions.Place = {
	OnRun = function(itemTable)

		local client = itemTable.player
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client

			local car = ents.Create("prop_vehicle_jeep")
			car:SetModel("MODEL")
			car.VehicleTable = list.Get( "Vehicles" )[ "SPAWNLIST NAME" ]
			car:SetKeyValue("vehiclescript", "SCRIPT") -- lua_run for k, v in pairs( list.Get("Vehicles") ) do print(v.Name .. "\n" .. v.Model .. "\n" .. v.KeyValues.vehiclescript .. "\n\n") end
			car:SetPos(data.endpos)
			car:SetAngles(Angle(0,90,-0))
			car:Spawn()
			car:Activate()
end}
