local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory
PlayerJob = {}

if Config.TargetSystem == 'ox' then
    exports.ox_target:addBoxZone({
        coords = vector4(95.23, 288.52, 110.3, 66.11),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:fridge',
                event = 'bd-upnatoms:client:openFridgeStorage',
                icon = 'fa-solid fa-temperature-empty',
                label = 'Fridge',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(91.7, 288.7, 110.24, 199.03),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:heater',
                event = 'bd-upnatoms:client:openHeaterStorage',
                icon = 'fa-solid fa-temperature-arrow-up',
                label = 'Heater',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(89.15, 288.14, 110.22, 297.77),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:fronttray1',
                event = 'bd-upnatoms:client:openFrontTray1',
                icon = 'fa-solid fa-equals',
                label = 'Food Tray',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(89.85, 286.99, 110.23, 26.03),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:fronttray2',
                event = 'bd-upnatoms:client:openFrontTray2',
                icon = 'fa-solid fa-equals',
                label = 'Food Tray',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(90.48, 285.74, 110.26, 33.91),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:fronttray3',
                event = 'bd-upnatoms:client:openFrontTray3',
                icon = 'fa-solid fa-equals',
                label = 'Food Tray',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(94.81, 285.34, 110.21, 340.97),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:fronttray4',
                event = 'bd-upnatoms:client:openFrontTray4',
                icon = 'fa-solid fa-equals',
                label = 'Food Tray',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    exports.ox_target:addBoxZone({
        coords = vector4(89.54, 294.01, 110.21, 71.65),
        size = vec3(1,1,1),
        rotation = 45,
        debug = drawZones,
        options = {
            {
                name = 'upnatoms:fridge',
                event = 'bd-upnatoms:client:ingredientShop',
                icon = 'fa-solid fa-shopping-basket',
                label = 'Ingredient Shop',
                groups = {
                    Config.Jobname
                },
            }
        }
    })
    if Config.TargetSystem == 'ox' and Config.InventorySystem == 'ox' then
        exports.ox_target:addBoxZone({
            coords = vector4(89.54, 294.01, 110.21, 71.65),
            size = vec3(1,1,1),
            rotation = 45,
            debug = drawZones,
            options = {
                {
                    name = 'upnatoms:shop',
                    icon = 'fa-solid fa-shopping-basket',
                    label = 'Ingredient Shop',
                    groups = {
                        Config.Jobname
                    },
                    onSelect = function ()
                        exports.ox_inventory:openInventory('shop', {type = 'atomsshop'})
                    end
                }
            }
        })
    end
elseif Config.TargetSystem == 'qb' then
    exports['qb-target']:AddBoxZone("UpnAtomsFridgeStorage", vector3(95.23, 288.52, 110.3), 0.9, 0.9, {
        name = "UpnAtomsFridgeStorage",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.3 - 2,
        maxZ = 110.3 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openFridgeStorage",
                icon = "fa-solid fa-temperature-empty",
                label = "Fridge",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsHeaterStorage", vector3(91.7, 288.7, 110.24), 0.9, 0.9, {
        name = "UpnAtomsHeaterStorage",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.3 - 2,
        maxZ = 110.3 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openHeaterStorage",
                icon = "fa-solid fa-temperature-arrow-up",
                label = "Heater",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsFrontTray1", vector3(89.15, 288.14, 110.22), 0.9, 0.9, {
        name = "UpnAtomsFrontTray1",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.3 - 2,
        maxZ = 110.3 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openFrontTray1",
                icon = "fa-solid fa-equals",
                label = "Food Tray",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsFrontTray2", vector3(89.85, 286.99, 110.23), 0.9, 0.9, {
        name = "UpnAtomsFrontTray2",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.3 - 2,
        maxZ = 110.3 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openFrontTray2",
                icon = "fa-solid fa-equals",
                label = "Food Tray",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsFrontTray3", vector3(90.48, 285.74, 110.26), 0.9, 0.9, {
        name = "UpnAtomsFrontTray3",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.3 - 2,
        maxZ = 110.3 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openFrontTray3",
                icon = "fa-solid fa-equals",
                label = "Food Tray",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsFrontTray4", vector3(94.81, 285.34, 110.21), 0.9, 0.9, {
        name = "UpnAtomsFrontTray4",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.3 - 2,
        maxZ = 110.3 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:openFrontTray4",
                icon = "fa-solid fa-equals",
                label = "Food Tray",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("UpnAtomsShop", vector3(89.43, 294.03, 110.21), 0.9, 0.9, {
        name = "UpnAtomsShop",
        heading = 300.45,
        debugPoly = false,
        minZ = 110.21 - 2,
        maxZ = 110.21 + 2,
    }, {
        options = {
            {
                type = "client",
                event = "bd-upnatoms:client:ingredientShop",
                icon = "fa-solid fa-fire-burner",
                label = "Ingredient Shop",
                job = Config.Jobname
            },
        },
        distance = 1.5
    })
end

if Config.InventorySystem == 'ox' then
    RegisterNetEvent('bd-upnatoms:client:openFridgeStorage', function()
		if ox_inventory:openInventory('stash', 'upnatomsFridge') == false then
			TriggerServerEvent('ox:upnatomsFridge')
			ox_inventory:openInventory('stash', 'upnatomsFridge')
		end
	end)
    RegisterNetEvent('bd-upnatoms:client:openHeaterStorage', function()
		if ox_inventory:openInventory('stash', 'upnatomsHeater') == false then
			TriggerServerEvent('ox:upnatomsHeater')
			ox_inventory:openInventory('stash', 'upnatomsHeater')
		end
	end)
    RegisterNetEvent('bd-upnatoms:client:openFrontTray1', function()
		if ox_inventory:openInventory('stash', 'upnatomsFrontTray1') == false then
			TriggerServerEvent('ox:upnatomsFrontTray1')
			ox_inventory:openInventory('stash', 'upnatomsFrontTray1')
		end
	end)
    RegisterNetEvent('bd-upnatoms:client:openFrontTray2', function()
		if ox_inventory:openInventory('stash', 'upnatomsFrontTray2') == false then
			TriggerServerEvent('ox:upnatomsFrontTray2')
			ox_inventory:openInventory('stash', 'upnatomsFrontTray2')
		end
	end)
    RegisterNetEvent('bd-upnatoms:client:openFrontTray3', function()
		if ox_inventory:openInventory('stash', 'upnatomsFrontTray3') == false then
			TriggerServerEvent('ox:upnatomsFrontTray3')
			ox_inventory:openInventory('stash', 'upnatomsFrontTray3')
		end
	end)
    RegisterNetEvent('bd-upnatoms:client:openFrontTray4', function()
		if ox_inventory:openInventory('stash', 'upnatomsFrontTray4') == false then
			TriggerServerEvent('ox:upnatomsFrontTray4')
			ox_inventory:openInventory('stash', 'upnatomsFrontTray4')
		end
	end)
elseif Config.InventorySystem == 'qb' then
    RegisterNetEvent("bd-upnatoms:client:openFridgeStorage", function()
		TriggerServerEvent('bd-upnatoms:server:upnatomsFridge')
	end)
    RegisterNetEvent("bd-upnatoms:client:openHeaterStorage", function()
		TriggerServerEvent('bd-upnatoms:server:upnatomsHeater')
	end)
    RegisterNetEvent("bd-upnatoms:client:openFrontTray1", function()
		TriggerServerEvent('bd-upnatoms:server:upnatomsFrontTray1')
	end)
    RegisterNetEvent("bd-upnatoms:client:openFrontTray2", function()
		TriggerServerEvent('bd-upnatoms:server:upnatomsFrontTray2')
	end)
    RegisterNetEvent("bd-upnatoms:client:openFrontTray3", function()
		TriggerServerEvent('bd-upnatoms:server:upnatomsFrontTray3')
	end)
    RegisterNetEvent("bd-upnatoms:client:openFrontTray4", function()
		TriggerServerEvent('bd-upnatoms:server:upnatomsFrontTray4')
	end)
    -- SHOP --
    RegisterNetEvent("bd-upnatoms:client:ingredientShop", function()
		TriggerServerEvent('bd-upnatoms:server:ingredientShop')
	end)
end