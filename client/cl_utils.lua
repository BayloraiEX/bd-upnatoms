local QBCore = exports['qb-core']:GetCoreObject()
Playerjob = {}

----- | CREATING BURGERSHOT BLIP | -----
CreateThread(function()
    UpNAtomsBlip = AddBlipForCoord(82.79, 278.32, 110.21)
    SetBlipDisplay(UpNAtomsBlip, 4)
    SetBlipScale(UpNAtomsBlip, 0.6)
    SetBlipSprite(UpNAtomsBlip, 269)
    SetBlipColour(UpNAtomsBlip, 51)
    SetBlipAsShortRange(UpNAtomsBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Up-N-Atoms")
    EndTextCommandSetBlipName(UpNAtomsBlip)
end)

----- | CREATING MODEL SPAWN | -----
local function FetchModel(model)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(model) do 
        Wait(100)
    end
  end

local LocalNPCs = {}

local function GetLocalNPC(index)
    return LocalNPCs[index]
end

local function CreateLocalNPC(index)
    if (LocalNPCs[index]) then 
        DestroyLocalNPC(index)
    end
      
    LocalNPCs[index] = {}
    local cfg = Config.upnatomsGaragePed[index]
  
    FetchModel(cfg.upnatomsGaragePedModel)

    ------| CREATING PED |------
    local upnatomsGaragePed = CreatePed(1, cfg.upnatomsGaragePedModel, cfg.upnatomsGaragePedLocation, false, true)
        FreezeEntityPosition(upnatomsGaragePed, true)
        SetEntityInvincible(upnatomsGaragePed, true)
        SetBlockingOfNonTemporaryEvents(upnatomsGaragePed, true)
        if Config.TargetSystem == 'ox' then
            ----- | CREATING TARGET FOR PED | -----
            exports.ox_target:addLocalEntity(upnatomsGaragePed, {
                {
                    name = 'upnatoms_jobgarage',
                    event = 'bd-upnatoms:client:jobGarage',
                    icon = 'fa-solid fa-warehouse',
                    label = 'Garage',
                    groups = {
                        Config.Jobname
                    },
                },
                {
                    name = 'upnatoms_storegarage',
                    event = 'bd-upnatoms:client:storeGarage',
                    icon = 'fa-solid fa-square-parking',
                    label = 'Store Vehicles',
                    groups = {
                        Config.Jobname
                    },
                },
        })
        elseif Config.TargetSystem == 'qb' then
            ----- | CREATING TARGET FOR PED | -----
            exports['qb-target']:AddTargetEntity(upnatomsGaragePed, { 
                options = {
                { 
                    type = "client",
                    event = "bd-upnatoms:client:jobGarage",
                    icon = "fa-solid fa-warehouse",
                    label = "Garage",
                    job = Config.Jobname
                },
                { 
                    type = "client",
                    event = "bd-upnatoms:client:storeGarage",
                    icon = "fa-solid fa-square-parking",
                    label = "Store Vehicle",
                    job = Config.Jobname
                },
                }, 
                distance = 1.5, 
            })
        end
    LocalNPCs[index].upnatomsGaragePed = upnatomsGaragePed
end

local function DestroyLocalNPC(index)
    if (LocalNPCs[index]) then 
        DeleteEntity(LocalNPCs[index].upnatomsGaragePed)
        LocalNPCs[index] = nill
    end 
end

-----| CHECKS TO SEE IF PLAYER IS CERTAIN DISTANCE FROM THE PED |-----
Citizen.CreateThread(function()
    while true do
        local wait = 1000
        local ped = PlayerPedId() 
        local pcoords = GetEntityCoords(ped)
        for i=1, 1 do 
            local cfg = Config.upnatomsGaragePed[i]
            local coords = vector3(cfg.upnatomsGaragePedLocation)
            local dist = #(pcoords - coords)
            local upnatomsGaragePed = GetLocalNPC(i)
            if dist < cfg.upnatomsGarageRenderDistance then 
                if (GetLocalNPC(i) == nill) then 
                  CreateLocalNPC(i)
                end 
            else 
                DestroyLocalNPC(i)
            end 
        end
      Wait(wait)
    end
end)

CreateThread(function()
    DecorRegister("t_vehicle", 1)
end)
if Config.TargetSystem == 'ox' then
    exports.ox_target:addBoxZone({
		coords = vector4(87.79, 298.24, 109.98, 171.23),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'upnatoms_duty',
				event = 'bd-upnatoms:client:ToggleDuty',
				icon = 'fa-solid fa-clipboard-user',
				label = 'Clock In/Out',
				groups = {
					Config.Jobname
				},
			},
		}
	})
elseif Config.TargetSystem == 'qb' then
    exports['qb-target']:AddBoxZone("upnatomsClock", vector3(87.79, 298.24, 109.98), 0.9, 0.9, {
        name = "upnatomsClock",
        heading = 347.27,
        debugPoly = false,
        minZ = 109.98 - 2,
        maxZ = 109.98 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:ToggleDuty",
                icon = "fa-solid fa-clipboard-user",
                label = "Clock In/Out",
                job = Config.Jobname,
            },
        },
        distance = 2.5
    })
end
RegisterNetEvent('bd-upnatoms:client:ToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)