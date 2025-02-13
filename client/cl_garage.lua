local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

CreateThread(function()
    DecorRegister("t_vehicle", 1)
end)

----- | GARAGE LOGIC | -----
RegisterNetEvent('bd-upnatoms:client:jobGarage', function(vehicle)
    local vehicle = Config.Vehicle
    local coords = Config.VehicleSpawn
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "ATOMS"..tostring(math.random(1000, 9999)))
        DecorSetFloat(veh, "t_vehicle", 1)
        SetEntityAsMissionEntity(veh, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(veh)
        SetVehicleFuelLevel(veh, 1000.0)
        SetVehicleDirtLevel(veh, 0)
    end, coords, true)
end)

RegisterNetEvent('bd-upnatoms:client:storeGarage', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if DecorExistOn((veh), "t_vehicle") then
        QBCore.Functions.DeleteVehicle(veh)
        lib.notify({
            id = 'upnatoms_garage',
            title = 'Up-N-Atoms Garage',
            description = 'You returned the vehicle.',
            showDuration = false,
            position = 'top-right',
            style = {
                backgroundColor = '#141517',
                color = '#fa8072',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'square-parking',
            iconColor = '#fa8072'
        })
    else
        lib.notify({
            id = 'upnatoms_garage',
            title = 'Up-N-Atoms Garage',
            description = 'This is not a work vehicle.',
            showDuration = false,
            position = 'top-right',
            style = {
                backgroundColor = '#141517',
                color = '#fa8072',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'square-parking',
            iconColor = '#fa8072'
        })
    end
end)